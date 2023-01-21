import 'package:all_widgets/utils/appString2.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetStorageDemo extends StatefulWidget {
  const GetStorageDemo({Key? key}) : super(key: key);

  @override
  State<GetStorageDemo> createState() => _GetStorageDemoState();
}

class _GetStorageDemoState extends State<GetStorageDemo> {
  String name = "";
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Storage"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () async {
              // Obtain shared preferences.
              final prefs = await SharedPreferences.getInstance();
              prefs.setString("name", "Pratham");
            },
            // onPressed: () async {
            //   box.write('mainList', AppString1.list1);
            // },
            child: const Text("Set Data"),
          ),
          Text("Name : $name"),
          ElevatedButton(
            onPressed: () async {
              final prefs = await SharedPreferences.getInstance();
              setState(() {
                name = prefs.getString("name") ?? "Default";
                print(prefs.getString("name"));
              });
            },
            // onPressed: () async {
            //   setState(() {
            //     Text('hello');
            //     print(box.read('mainList'));
            //   });
            // },
            child: const Text("Get Data"),
          ),
        ],
      ),
    );
  }
}