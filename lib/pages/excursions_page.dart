import 'package:flutter/material.dart';
import 'package:test_app/widgets/card_widget.dart';

class Excursions extends StatefulWidget {
  const Excursions({Key? key}) : super(key: key);

  @override
  State<Excursions> createState() => _ExcursionsState();
}

class _ExcursionsState extends State<Excursions> {
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
                  "Морская прогулка\nна рассвете",
                  "assets/images/excursions_images/first_image.png",
                  4.8,
                  markPressed1,
                  isPressed1, true),
              card(
                  "Трехдневный\nпоход",
                  "assets/images/excursions_images/second_image.png",
                  4.2,
                  markPressed2,
                  isPressed2, true),
            ]));
  }
}