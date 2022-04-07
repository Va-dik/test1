import 'package:flutter/material.dart';

Widget card(String title, String assetName, double? rating, Function() onPressed,
    bool isPressed, bool showRating) {
  return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(150, 199, 249, 1),
      ),
      child: Stack(children: [
        Column(children: [
          Expanded(
            child: ClipRect(
                child: Image(
              image: AssetImage(assetName),
              width: double.infinity,
              alignment: Alignment.bottomLeft,
              fit: BoxFit.fill,
            )),
          ),
        ]),
        Align(
            alignment: const Alignment(-0.8, -0.9),
            child: Text(
              title,
              style: const TextStyle(
                  fontFamily: "Nexa-Bold",
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
        Align(
          alignment: const Alignment(0.75, -1.1),
          child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                isPressed
                    ? Icons.bookmark_outlined
                    : Icons.bookmark_border_rounded,
                color: Colors.white,
                size: 60,
              )),
        ),
        
        Align(
          alignment: const Alignment(-0.9, 0.9),
          child: showRating? Text(
            "$rating ★",
            style: const TextStyle(
                fontFamily: "Nexa-Regular", color: Colors.white, fontSize: 16),
          ): null,
        ),
        Align(
            alignment: const Alignment(0.6, 0.91),
            child: TextButton(
                child: const Text(
                  "Подробнее",
                  style: TextStyle(
                      fontFamily: "Nexa-Bold",
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
                onPressed: () {})),
        Align(
            alignment: const Alignment(0.9, 0.925),
            child: IconButton(
              splashRadius: 0.1,
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward,
                size: 30,
                color: Colors.white,
              ),
            ))
      ]));
}