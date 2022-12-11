import 'package:flutter/material.dart';

class snackBar extends StatefulWidget {
  const snackBar({Key? key}) : super(key: key);

  @override
  State<snackBar> createState() => _snackBarState();
}

class _snackBarState extends State<snackBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar demo'),
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
                content: const Text('Login Successfully'),
                action: SnackBarAction(
                  label: '',
                  onPressed: () {},
                ));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text('Login', style: TextStyle(fontSize: 20)),
        ),
      ),
    ));
  }
}
