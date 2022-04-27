import 'package:flutter/material.dart';
import 'package:test_app/models/event_model.dart';
import 'package:test_app/widgets/event_card_widget.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  final List<Event> _events = [];

  Future<bool> loadData() async {
    await Future.delayed(const Duration(seconds: 1));
    Event _event = Event(
      title: 'Example1',
      assetsName: 'assets/images/events_images/first_image.png',
    );
    _events.add(_event);
    _event.printData();

    _event = Event(
        title: 'Example2',
        assetsName: 'assets/images/events_images/second_image.png');
    _events.add(_event);
    _event.printData();

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: loadData(),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? Container(
                  padding: const EdgeInsets.only(top: 27.75),
                  child: GridView.builder(
                      itemCount: _events.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 454,
                        mainAxisSpacing: 24,
                        crossAxisCount: 1,
                        childAspectRatio: 1.5,
                      ),
                      itemBuilder: (context, index) => EventCard(
                            event: _events[index],
                          )))
              : const Center(child: CircularProgressIndicator());
        });
  }
}
