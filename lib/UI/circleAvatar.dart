import 'package:flutter/material.dart';

class circle_Avatar extends StatefulWidget {
  const circle_Avatar({Key? key}) : super(key: key);

  @override
  State<circle_Avatar> createState() => _circle_AvatarState();
}

class _circle_AvatarState extends State<circle_Avatar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text('circleAvatar demo'),
            ),
            body: Center(
                child: Container(
                    margin: const EdgeInsets.all(40),
                    alignment: Alignment.center,
                    child: Form(
                      child: Column(children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            backgroundImage:
                                AssetImage('asset/image/image_info.jpg'),
                          ),
                        ),
                      ]),
                    )))));
  }
}
