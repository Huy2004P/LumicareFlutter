import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../repositories/notification_repository.dart';

class GetMyNotificationsUseCase {
  final NotificationRepository repository;
  GetMyNotificationsUseCase(this.repository);
  Future<List<NotificationItemEntity>> call(int userId) async {
    return await repository.getMyNotifications(userId);
  }
}

class MarkNotiAsReadUseCase {
  final NotificationRepository repository;
  MarkNotiAsReadUseCase(this.repository);
  Future<bool> call(int notificationId, int userId) async {
    return await repository.markAsRead(notificationId, userId);
  }
}

class MarkAllNotiAsReadUseCase {
  final NotificationRepository repository;
  MarkAllNotiAsReadUseCase(this.repository);
  Future<bool> call(int userId) async {
    return await repository.markAllAsRead(userId);
  }
}

class CreateNotificationUseCase {
  final NotificationRepository repository;
  CreateNotificationUseCase(this.repository);
  Future<bool> call({
    required int userId,
    required String title,
    required String message,
    required String type,
  }) async {
    return await repository.createNotification(
      userId: userId,
      title: title,
      message: message,
      type: type,
    );
  }
}

class ListenNotificationUseCase {
  final NotificationRepository repository;

  ListenNotificationUseCase(this.repository);

  Stream<NotificationItemEntity> call(int userId) {
    return repository.listenToNotifications(userId);
  }
}
