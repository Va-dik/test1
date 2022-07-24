import 'package:test_app/models/excursion_model.dart';

class ExcursionRepository {
  Future<List<Excursion>> getExcursions() async {
    await Future.delayed(const Duration(seconds: 2));
    return [
      Excursion(
          title: "Something",
          rating: 4.8,
          assetsName: 'assets/images/excursions_images/first_image.png'),
      Excursion(
          title: 'Example',
          rating: 4.2,
          assetsName: 'assets/images/excursions_images/second_image.png')
    ];
  }
}
