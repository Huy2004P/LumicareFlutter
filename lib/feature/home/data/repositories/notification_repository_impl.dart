import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../domain/repositories/notification_repository.dart';
import '../datasources/notification_remote_datasource.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationRemoteDataSource dataSource;

  NotificationRepositoryImpl(this.dataSource);

  @override
  Future<List<NotificationItemEntity>> getMyNotifications(int userId) async {
    return await dataSource.getMyNotifications(userId);
  }

  @override
  Future<bool> markAsRead(int notificationId, int userId) async {
    return await dataSource.markAsRead(notificationId, userId);
  }

  @override
  Future<bool> markAllAsRead(int userId) async {
    return await dataSource.markAllAsRead(userId);
  }

  @override
  Future<bool> createNotification({
    required int userId,
    required String title,
    required String message,
    required String type,
  }) async {
    return await dataSource.createNotification(
      userId: userId,
      title: title,
      message: message,
      type: type,
    );
  }

  @override
  Stream<NotificationItemEntity> listenToNotifications(int userId) {
    return dataSource.listenNotificationsRealtime(userId);
  }
}
