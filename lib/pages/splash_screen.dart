import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(235, 245, 245, 245),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 200,
          width: 300,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.grey],
              begin: Alignment(-1, -1),
              end: Alignment(1, 1),
            ),
          ),
          child: const Text(
            "*Application*",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white60),
          ),
        ),
      ),
    );
  }
}
