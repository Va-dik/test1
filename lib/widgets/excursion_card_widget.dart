import 'package:flutter/material.dart';
import 'package:test_app/models/excursion_model.dart';

class ExcursionCard extends StatefulWidget {
  const ExcursionCard({Key? key, required this.excursion}) : super(key: key);
  final Excursion excursion;

  @override
  State<ExcursionCard> createState() => _ExcursionCardState();
}

class _ExcursionCardState extends State<ExcursionCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage(widget.excursion.assetsName),
                fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.all(17),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.excursion.title,
                      style: const TextStyle(
                          fontFamily: "Nexa-Bold",
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            widget.excursion.favorite;
                          });
                        },
                        icon: Icon(
                          widget.excursion.onPressed
                              ? Icons.bookmark_outlined
                              : Icons.bookmark_border_rounded,
                          color: Colors.white,
                          size: 60,
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${widget.excursion.rating} ★",
                      style: const TextStyle(
                          fontFamily: "Nexa-Regular",
                          color: Colors.white,
                          fontSize: 16),
                    ),
                    TextButton.icon(
                        style: TextButton.styleFrom(),
                        label: const Icon(
                          Icons.arrow_forward,
                          size: 30,
                          color: Colors.white,
                        ),
                        icon: const Text(
                          "Подробнее",
                          style: TextStyle(
                              fontFamily: "Nexa-Bold",
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                        onPressed: () {})
                  ],
                )
              ],
            ),
          )),
    );
  }
}
