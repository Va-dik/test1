import 'package:flutter/material.dart';
import 'package:test_app/models/excursion_model.dart';
import 'package:test_app/repositories/excursion_repository.dart';
import 'package:test_app/widgets/excursion_card_widget.dart';

class Excursions extends StatefulWidget {
  const Excursions({Key? key}) : super(key: key);

  @override
  State<Excursions> createState() => _ExcursionsState();
}

class _ExcursionsState extends State<Excursions> {
  final ExcursionRepository _repository = ExcursionRepository();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Excursion>>(
        future: _repository.getExcursions(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: Column(
                children: snapshot.data!
                    .map((e) => ExcursionCard(excursion: e))
                    .toList(),
              ),
            );
          }

          return const Center(child: CircularProgressIndicator());
        });
  }
}
