import 'package:flutter/material.dart';
import 'package:test_app/models/event_model.dart';
import 'package:test_app/repositories/event_repository.dart';
import 'package:test_app/widgets/event_card_widget.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  final EventRepository _event = EventRepository();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Event>>(
        future: _event.getEvents(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
                child: Column(
                    children: snapshot.data!
                        .map((e) => EventCard(event: e))
                        .toList()));
          }
          
          return const Center(child: CircularProgressIndicator());
        });
  }
}
