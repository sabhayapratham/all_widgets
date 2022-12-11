import 'package:flutter/material.dart';

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text('ScrollView demo'),
          ),

          body: SingleChildScrollView(
            child: Column(
             children: const [
               Padding(
                 padding: EdgeInsets.all(100.0),
                 child: Text('my name is pratham'),
               ),
               Padding(
                 padding: EdgeInsets.all(100.0),
                 child: Text('my name is pratham'),
               ),
               Padding(
                 padding: EdgeInsets.all(100.0),
                 child: Text('my name is pratham'),
               ),
               Padding(
                 padding: EdgeInsets.all(100.0),
                 child: Text('my name is pratham'),
               ),
               Padding(
                 padding: EdgeInsets.all(100.0),
                 child: Text('my name is pratham'),
               ),
               Padding(
                 padding: EdgeInsets.all(100.0),
                 child: Text('my name is pratham'),
               ),
               Padding(
                 padding: EdgeInsets.all(100.0),
                 child: Text('my name is pratham'),
               ),
               Padding(
                 padding: EdgeInsets.all(100.0),
                 child: Text('my name is pratham'),
               ),
               Padding(
                 padding: EdgeInsets.all(100.0),
                 child: Text('my name is pratham'),
               ),
               Padding(
                 padding: EdgeInsets.all(100.0),
                 child: Text('my name is pratham'),
               ),
               Padding(
                 padding: EdgeInsets.all(100.0),
                 child: Text('my name is pratham'),
               ),
               Padding(
                 padding: EdgeInsets.all(100.0),
                 child: Text('my name is pratham'),
               ),
             ],
            ),
          ),

    )
    );
  }
}
