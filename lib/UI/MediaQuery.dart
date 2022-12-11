import 'package:flutter/material.dart';

class Media_Query extends StatefulWidget {
  const Media_Query({Key? key}) : super(key: key);

  @override
  State<Media_Query> createState() => _Media_QueryState();
}

class _Media_QueryState extends State<Media_Query> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Query demo'),
      ),

      body: Center(
        child: Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.9,
        ),
      ),
    );
  }
}
