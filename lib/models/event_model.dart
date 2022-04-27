class Event {
  final String title;
  final String assetsName;
  bool onPressed = false;

  get favorite => _getFavorite();

  void _getFavorite() {
    onPressed = !onPressed;
  }

  Event(
      {required this.title, required this.assetsName});

  printData() {
    print('Title: $title');
  }
}
