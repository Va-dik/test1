import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/widgets/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Test_app',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.line_horizontal_3_decrease,
                  color: Color.fromRGBO(43, 43, 43, 1),
                ),
                splashRadius: 0.1),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.search,
                    color: Color.fromRGBO(43, 43, 43, 1),
                  ),
                  splashRadius: 0.1),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.person,
                    color: Color.fromRGBO(43, 43, 43, 1),
                  ),
                  splashRadius: 0.1),
            ]),
        body: const TabsScreen());
  }
}
