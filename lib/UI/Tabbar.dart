import 'package:all_widgets/utils/FirstScreen.dart';
import 'package:all_widgets/utils/SecondScreen.dart';
import 'package:all_widgets/utils/ThirdScreen.dart';
import 'package:flutter/material.dart';

class tabBar extends StatefulWidget {
  const tabBar({Key? key}) : super(key: key);

  @override
  State<tabBar> createState() => _tabBarState();
}

class _tabBarState extends State<tabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Tabbar demo"),
            bottom: TabBar(
              tabs: [
                Row(
                  children: const [
                    Icon(Icons.home),
                    Text("Home"),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.search),
                    Text("Search"),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.settings_outlined),
                    Text("Setting"),
                  ],
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [FirstScreen(), SecondScreen(), ThirdScreen()],
          )),
    );
  }
}
