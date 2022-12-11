import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Flutter_Toast extends StatefulWidget {
  const Flutter_Toast({Key? key}) : super(key: key);

  @override
  State<Flutter_Toast> createState() => _Flutter_ToastState();
}

class _Flutter_ToastState extends State<Flutter_Toast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Toast demo'),
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Fluttertoast.showToast(
                msg: "This is Center Short Toast",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.SNACKBAR,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          },
          child: const Text('click...'),
        ),
      ),
    );
  }
}
