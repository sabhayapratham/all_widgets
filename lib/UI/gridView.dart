import 'package:flutter/material.dart';

class gridview extends StatefulWidget {
  const gridview({Key? key}) : super(key: key);

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('gridview demo'),
            ),
            body: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.blue,
                  child: const Center(child: Text("Hello")),
                );
              },
            )));
  }
}
