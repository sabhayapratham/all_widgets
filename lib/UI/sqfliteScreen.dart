import 'package:flutter/material.dart';

import '../helper/Databasehelper.dart';


class sqfLiteScreen extends StatefulWidget {
  const sqfLiteScreen({Key? key}) : super(key: key);

  @override
  State<sqfLiteScreen> createState() => _sqfLiteScreenState();
}

class _sqfLiteScreenState extends State<sqfLiteScreen> {
  final dbHelper = DatabaseHelper.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SqfLite_Demo"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  Map<String, dynamic> row = {
                    DatabaseHelper.columnName: "Pratham",
                    DatabaseHelper.columnAge: "18"
                  };
                  final isInserted = await dbHelper.insert(row);
                  print("Row inserted: $isInserted");
                },
                child: const Text("Insert Data")),
            ElevatedButton(
                onPressed: () async {
                  final list = await dbHelper.queryAllRows();
                  print(list);
                },
                child: const Text("Fetch Data")),
            ElevatedButton(
                onPressed: () async {
                  final id = await dbHelper.delete(5);
                  print("deleted Row: $id");
                },
                child: const Text("Delete Record"))
          ],
        ),
      ),
    );
  }
}
