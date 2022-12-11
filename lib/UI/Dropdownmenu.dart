import 'package:flutter/material.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four', 'five', 'Six', 'Seven'];

class Dropdown_menu extends StatefulWidget {
  const Dropdown_menu({Key? key}) : super(key: key);

  @override
  State<Dropdown_menu> createState() => _Dropdown_menuState();

}
String dropdownValue = list.first;
class _Dropdown_menuState extends State<Dropdown_menu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
        title: const Text('Dropdown menu demo'),
    ),
         body: Center(
           child: DropdownButton<String>(
              value: dropdownValue,
              elevation: 2,
              style: const TextStyle(color: Colors.black),
              underline: Container(
                height: 2,
                color: Colors.black,
              ),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                  print("value:: $value");
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
         ),
    )
    );
  }
}
