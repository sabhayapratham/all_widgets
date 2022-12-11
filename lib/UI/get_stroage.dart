import 'package:all_widgets/utils/appString2.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class GetStorageDemo extends StatefulWidget {
  const GetStorageDemo({Key? key}) : super(key: key);

  @override
  State<GetStorageDemo> createState() => _GetStorageDemoState();
}

class _GetStorageDemoState extends State<GetStorageDemo> {
  String name = "demo";
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
              box.write('mainList', AppString1.list1);
            },
            child: const Text("Set Data"),
          ),
          ElevatedButton(
            onPressed: () async {
              setState(() {
                Text('hello');
                print(box.read('mainList'));
              });
            },
            child: const Text("Get Data"),
          ),
        ],
      ),
    );
  }
}
