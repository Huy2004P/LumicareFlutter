import 'package:lumi_care/core/network/domain/entities/entities.dart';

// 1. Model cho Tóm tắt bệnh án (Medical Record Summary)
class MedicalRecordSummaryModel extends MedicalRecordSummaryEntity {
  MedicalRecordSummaryModel({
    required super.bookingId,
    required super.examDate,
    required super.doctorName,
    required super.diagnosis,
    required super.specialtyName,
  });

  factory MedicalRecordSummaryModel.fromEntity(
    MedicalRecordSummaryEntity entity,
  ) {
    return MedicalRecordSummaryModel(
      bookingId: entity.bookingId,
      examDate: entity.examDate,
      doctorName: entity.doctorName,
      diagnosis: entity.diagnosis,
      specialtyName: entity.specialtyName,
    );
  }
}

// 2. Model cho Chi tiết phác đồ & Đơn thuốc (Treatment Data)
class TreatmentDataModel extends TreatmentDataEntity {
  TreatmentDataModel({
    required super.diagnosis,
    required super.symptoms,
    required super.treatmentPlan,
    required super.reExamDate,
    required super.instructions,
    required super.medicines,
  });

  factory TreatmentDataModel.fromEntity(TreatmentDataEntity entity) {
    return TreatmentDataModel(
      diagnosis: entity.diagnosis,
      symptoms: entity.symptoms,
      treatmentPlan: entity.treatmentPlan,
      reExamDate: entity.reExamDate,
      instructions: entity.instructions,
      medicines: entity.medicines,
    );
  }
}
