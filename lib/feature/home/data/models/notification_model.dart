import 'package:lumi_care/core/network/data/models/generated/notification.pb.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class NotificationItemModel extends NotificationItemEntity {
  NotificationItemModel({
    required super.id,
    required super.userId,
    required super.title,
    required super.message,
    required super.type,
    required super.isRead,
    required super.createdAt,
  });

  factory NotificationItemModel.fromProto(NotificationItem proto) {
    return NotificationItemModel(
      id: proto.id,
      userId: proto.userId,
      title: proto.title,
      message: proto.message,
      type: proto.type,
      isRead: proto.isRead,
      createdAt: proto.createdAt,
    );
  }
}
