import 'package:flutter/material.dart';

class Loader extends StatefulWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.blue,
      title: const Text('CircularProgressIndicator demo'),
    ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(
                backgroundColor: Colors.pinkAccent,
                valueColor: AlwaysStoppedAnimation(Colors.blueAccent),
                strokeWidth: 5,
              )
            ],
          ),
        ),
      )
    );
  }
}
