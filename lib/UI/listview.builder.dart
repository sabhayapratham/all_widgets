import 'package:all_widgets/utils/appString2.dart';
import 'package:flutter/material.dart';

class listView extends StatefulWidget {
  const listView({Key? key}) : super(key: key);

  @override
  State<listView> createState() => _listviewState();
}

class _listviewState extends State<listView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
        title: const Text('listviewbuilder demo'),
    ),
            body: ListView.builder(
                itemCount: AppString1.list1.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(AppString1.list1[index]['image'].toString()),
                      radius: 20,
                    ),
                    title: Text(
                      AppString1.list1[index]['title'].toString(),
                    ),
                    subtitle: Text(
                      AppString1.list1[index]['subTitle'].toString(),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_sharp,
                    ),
                  );
                }
            )
    )
    );
  }
}
