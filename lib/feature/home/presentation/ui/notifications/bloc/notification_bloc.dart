import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../../../domain/use_cases/notification_usecases.dart';
import 'package:flutter/foundation.dart';

part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final GetMyNotificationsUseCase getNotificationsUseCase;
  final MarkNotiAsReadUseCase markAsReadUseCase;
  final MarkAllNotiAsReadUseCase markAllAsReadUseCase;
  final ListenNotificationUseCase listenNotificationUseCase;

  NotificationBloc({
    required this.getNotificationsUseCase,
    required this.markAsReadUseCase,
    required this.markAllAsReadUseCase,
    required this.listenNotificationUseCase,
  }) : super(const NotificationState()) {
    on<NotificationFetched>(_onNotificationFetched);
    on<NotificationMarkedAsRead>(_onNotificationMarkedAsRead);
    on<NotificationMarkAllAsReadRequested>(_onMarkAllAsRead);
    on<NotificationSubscriptionStarted>(_onSubscriptionStarted);

    on<GetMyNotificationsEvent>(
      (event, emit) => add(NotificationFetched(event.userId)),
    );
  }

  Future<void> _onNotificationFetched(
    NotificationFetched event,
    Emitter<NotificationState> emit,
  ) async {
    debugPrint("[Bloc] Fetching Notifications for User: ${event.userId}");
    emit(state.copyWith(status: NotificationStatus.loading));

    try {
      final list = await getNotificationsUseCase(event.userId);
      final unread = list.where((n) => !n.isRead).length;

      emit(
        state.copyWith(
          status: NotificationStatus.success,
          notifications: list,
          unreadCount: unread,
        ),
      );

      add(NotificationSubscriptionStarted(event.userId));
    } catch (e) {
      debugPrint("[Fetch Error]: $e");
      emit(
        state.copyWith(
          status: NotificationStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _onSubscriptionStarted(
    NotificationSubscriptionStarted event,
    Emitter<NotificationState> emit,
  ) async {
    await emit.forEach<NotificationItemEntity>(
      listenNotificationUseCase.call(event.userId),
      onData: (newNoti) {
        if (state.notifications.any((n) => n.id == newNoti.id)) return state;

        return state.copyWith(
          status: NotificationStatus.success,
          notifications: [newNoti, ...state.notifications],
          unreadCount: state.unreadCount + 1,
        );
      },
      onError: (e, _) => state.copyWith(status: NotificationStatus.failure),
    );
  }

  Future<void> _onNotificationMarkedAsRead(
    NotificationMarkedAsRead event,
    Emitter<NotificationState> emit,
  ) async {
    try {
      final success = await markAsReadUseCase(
        event.notificationId,
        event.userId,
      );
      if (success) {
        final updatedList = state.notifications.map((n) {
          return n.id == event.notificationId ? n.copyWith(isRead: true) : n;
        }).toList();

        emit(
          state.copyWith(
            notifications: updatedList,
            unreadCount: (state.unreadCount - 1).clamp(0, 99),
          ),
        );
      }
    } catch (e) {
      debugPrint("[Mark Read Error]: $e");
    }
  }

  Future<void> _onMarkAllAsRead(
    NotificationMarkAllAsReadRequested event,
    Emitter<NotificationState> emit,
  ) async {
    try {
      final success = await markAllAsReadUseCase(event.userId);
      if (success) {
        final allReadList = state.notifications
            .map((n) => n.copyWith(isRead: true))
            .toList();
        emit(state.copyWith(notifications: allReadList, unreadCount: 0));
      }
    } catch (e) {
      emit(state.copyWith(status: NotificationStatus.failure));
    }
  }
}

extension NotificationItemX on NotificationItemEntity {
  NotificationItemEntity copyWith({bool? isRead}) {
    return NotificationItemEntity(
      id: id,
      userId: userId,
      title: title,
      message: message,
      type: type,
      isRead: isRead ?? this.isRead,
      createdAt: createdAt,
    );
  }
}
