import 'package:flutter/material.dart';

class textField extends StatefulWidget {
  const textField({Key? key}) : super(key: key);

  @override
  State<textField> createState() => _textFieldState();
}

class _textFieldState extends State<textField> {
  bool invisible = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('TextFormField demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
                labelText: 'Email',
              ),
            ),
            Container(
              height: 20,
            ),
            TextFormField(
              obscureText: invisible,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: .0),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
                labelText: 'password',
                suffixIcon: IconButton(
                  icon: Icon(
                    invisible ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      invisible = !invisible;
                    });
                  },
                ),
                // obscureText: true,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
