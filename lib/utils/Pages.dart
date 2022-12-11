import 'package:flutter/material.dart';

class Secondpages extends StatefulWidget {
  const Secondpages({Key? key}) : super(key: key);

  @override
  State<Secondpages> createState() => _SecondpagesState();
}

class _SecondpagesState extends State<Secondpages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Second page'),
      // ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Back'),
        ),
      ),
    );
  }
}
