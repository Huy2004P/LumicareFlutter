abstract class ServiceEvent {}

class ServiceDataFetched extends ServiceEvent {}

class ServiceSearchChanged extends ServiceEvent {
  final String query;
  ServiceSearchChanged(this.query);
}
