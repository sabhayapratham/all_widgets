import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceDemo extends StatefulWidget {
  const SharedPreferenceDemo({Key? key}) : super(key: key);

  @override
  State<SharedPreferenceDemo> createState() => _SharedPreferenceDemoState();
}

class _SharedPreferenceDemoState extends State<SharedPreferenceDemo> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preference"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () async {
                // Obtain shared preferences.
                final prefs = await SharedPreferences.getInstance();
                prefs.setString("name", "Pratham Sabhaya");
              },
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
              child: const Text("Get Data"),
            ),
          ],
        ),
      ),
    );
  }
}