import 'package:all_widgets/utils/FirstScreen.dart';
import 'package:all_widgets/utils/appString2.dart';
import 'package:flutter/material.dart';

class Drawer1 extends StatefulWidget {
  const Drawer1({Key? key}) : super(key: key);

  @override
  State<Drawer1> createState() => _DrawerState();
}

class _DrawerState extends State<Drawer1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          drawer: mainDrawer(),
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text('Drawer'),
          ),
        ));
  }

  Widget mainDrawer() {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.yellowAccent,
              image: const DecorationImage(
                  image: AssetImage("asset/image/image9.jpg"),
                  fit: BoxFit.cover),
              borderRadius:
              const BorderRadius.only(bottomRight: Radius.circular(55)),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            padding:
            const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
            alignment: Alignment.bottomLeft,
            child: const Text(
              "Hello Pratham",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: AppString1.list1.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return FirstScreen();
                      })),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                      AssetImage(AppString1.list1[index]['image']),
                      radius: 20,
                    ),
                    title: Text(
                      "${AppString1.list1[index]['title'].toString()}",
                    ),
                    subtitle: Text(
                      AppString1.list1[index]['subTitle'].toString(),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 18,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

