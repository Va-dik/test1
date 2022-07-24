import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/pages/events_page.dart';
import 'package:test_app/pages/excursions_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          bottom: PreferredSize(
              child: Container(
                  color: Colors.white,
                  child: Column(
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
                            labelStyle: const TextStyle(
                                fontSize: 18, fontFamily: "Nexa-Regular"),
                            tabs: const [
                              Text(
                                "Экскурсии",
                              ),
                              Text(
                                "Мероприятия",
                              )
                            ]),
                      ),
                    ],
                  )),
              preferredSize: const Size.fromHeight(50)),
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
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[Excursions(), Events()],
      ),
    );
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }
}
