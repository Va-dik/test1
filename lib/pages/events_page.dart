import 'package:flutter/material.dart';
import 'package:test_app/widgets/card_widget.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  bool isPressed1 = false;
  bool isPressed2 = false;

  void markPressed1() {
    setState(() {
      isPressed1 = !isPressed1;
    });
  }

  void markPressed2() {
    setState(() {
      isPressed2 = !isPressed2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 27.75),
        child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 454,
              mainAxisSpacing: 24,
              crossAxisCount: 1,
              childAspectRatio: 1.5,
            ),
            children: [
              card(
                  "Вечеринка на\nцентральном пляже",
                  "assets/images/events_images/first_image.png",
                  null,
                  markPressed1,
                  isPressed1,
                  false),
              card(
                  "Вечеринка Open Air\n21:00",
                  "assets/images/events_images/second_image.png",
                  null,
                  markPressed2,
                  isPressed2,
                  false),
            ]));
  }
}
