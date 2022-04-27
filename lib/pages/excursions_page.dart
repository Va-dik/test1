import 'package:flutter/material.dart';
import 'package:test_app/models/excursion_model.dart';
import 'package:test_app/widgets/excursion_card_widget.dart';

class Excursions extends StatefulWidget {
  const Excursions({Key? key}) : super(key: key);

  @override
  State<Excursions> createState() => _ExcursionsState();
}

class _ExcursionsState extends State<Excursions> {
  final List<Excursion> _excursions = [];

  Future<bool> loadData() async {
    await Future.delayed(const Duration(seconds: 1));
    Excursion _excursion = Excursion(
        title: "Something",
        rating: 4.8,
        assetsName: 'assets/images/excursions_images/first_image.png');
    _excursions.add(_excursion);
    _excursion.printData();

    _excursion = Excursion(
        title: 'Example',
        rating: 4.2,
        assetsName: 'assets/images/excursions_images/second_image.png');
    _excursions.add(_excursion);
    _excursion.printData();

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
                      itemCount: _excursions.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 454,
                        mainAxisSpacing: 24,
                        crossAxisCount: 1,
                        childAspectRatio: 1.5,
                      ),
                      itemBuilder: (context, index) => ExcursionCard(
                            excursion: _excursions[index],
                          )))
              : const Center(child: CircularProgressIndicator());
        });
  }
}
