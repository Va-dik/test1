class Excursion {
  final String title;
  final double rating;
  final String assetsName;
  bool onPressed = false;

  get favorite => getFavorite();

  void getFavorite() {
    onPressed = !onPressed;
  }

  Excursion(
      {required this.title, required this.rating, required this.assetsName});

  printData() {
    print('Title: $title\nRating: $rating');
  }
}
