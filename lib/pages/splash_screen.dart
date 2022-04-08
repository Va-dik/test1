import 'package:flutter/material.dart';
import 'package:test_app/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            alignment: Alignment.center,
            height: 200,
            width: 300,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.grey],
                    begin: Alignment(-1, -1),
                    end: Alignment(1, 1))),
          ),
        ),
        const Align(
          alignment: Alignment(0, 0),
          child: Text(
            "Splash Screen",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white60),
          ),
        ),
      ],
    );
  }
}
