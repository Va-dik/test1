import 'package:flutter/material.dart';
import 'package:test_app/pages/excursions_page.dart';
import '../pages/events_page.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _tabController!.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 324,
          child: TabBar(
              controller: _tabController,
              padding: const EdgeInsets.only(top: 20),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: _tabController!.index == 0
                  ? const Color.fromRGBO(35, 169, 145, 1)
                  : const Color.fromRGBO(222, 28, 30, 1),
              labelColor: const Color.fromRGBO(91, 91, 91, 1),
              labelStyle:
                  const TextStyle(fontSize: 18, fontFamily: "Nexa-Regular"),
              tabs: const [
                Text(
                  "Экскурсии",
                ),
                Text(
                  "Мероприятия",
                )
              ]),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const <Widget>[Excursions(), Events()],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }
}
