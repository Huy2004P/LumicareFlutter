abstract class DoctorDetailEvent {}

class DoctorDetailStarted extends DoctorDetailEvent {
  final int doctorId;
  DoctorDetailStarted(this.doctorId);
}
