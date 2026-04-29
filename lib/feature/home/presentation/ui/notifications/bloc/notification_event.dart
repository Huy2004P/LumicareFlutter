part of 'notification_bloc.dart';

abstract class NotificationEvent extends Equatable {
  const NotificationEvent();
  @override
  List<Object?> get props => [];
}

class GetMyNotificationsEvent extends NotificationEvent {
  final int userId;
  const GetMyNotificationsEvent(this.userId);

  @override
  List<Object?> get props => [userId];
}

class NotificationFetched extends NotificationEvent {
  final int userId;
  const NotificationFetched(this.userId);
  @override
  List<Object?> get props => [userId];
}

class NotificationSubscriptionStarted extends NotificationEvent {
  final int userId;
  const NotificationSubscriptionStarted(this.userId);
  @override
  List<Object?> get props => [userId];
}

class NotificationMarkedAsRead extends NotificationEvent {
  final int notificationId;
  final int userId;
  const NotificationMarkedAsRead({
    required this.notificationId,
    required this.userId,
  });
  @override
  List<Object?> get props => [notificationId, userId];
}

class NotificationMarkAllAsReadRequested extends NotificationEvent {
  final int userId;
  const NotificationMarkAllAsReadRequested(this.userId);
  @override
  List<Object?> get props => [userId];
}
