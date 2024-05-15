class ApiService {
  final String baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<EventInfo> getEventInfo() async {
    return EventInfo();
  }
}

class EventInfo {
  final String title = 'Event Title';
  final String description = 'Event Description';
}