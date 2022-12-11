import 'package:all_widgets/utils/First_page1.dart';
import 'package:all_widgets/utils/Second_page2.dart';
import 'package:all_widgets/utils/Third_page3.dart';
import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);
  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;
  static const List<Widget> index = <Widget> [
    First_page(),
    Second_page2(),
    Third_page3(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('bottombar demo'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),

      body: Center(
        child: index.elementAt(_selectedIndex),
      ),
    );
  }
}
