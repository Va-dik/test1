import 'package:flutter/material.dart';
import 'package:test_app/models/event_model.dart';

class EventCard extends StatefulWidget {
  const EventCard({Key? key, required this.event}) : super(key: key);
  final Event event;

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
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
                image: AssetImage(widget.event.assetsName),
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
                      widget.event.title,
                      style: const TextStyle(
                          fontFamily: "Nexa-Bold",
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            widget.event.favorite;
                          });
                        },
                        icon: Icon(
                          widget.event.onPressed
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
