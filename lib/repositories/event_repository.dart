import 'package:test_app/models/event_model.dart';

class EventRepository {
  Future<List<Event>> getEvents() async {
    await Future.delayed(const Duration(seconds: 2));
    return [
      Event(
          title: "Something",
          assetsName: 'assets/images/events_images/first_image.png'),
      Event(
          title: 'Example',
          assetsName: 'assets/images/events_images/second_image.png')
    ];
  }
}