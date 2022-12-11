import 'package:all_widgets/utils/Pages.dart';
import 'package:flutter/material.dart';

class Page_Navigation extends StatefulWidget {
  const Page_Navigation({Key? key}) : super(key: key);

  @override
  State<Page_Navigation> createState() => _Page_NavigationState();
}

class _Page_NavigationState extends State<Page_Navigation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
        title: const Text('Page Navigation demo'),
    ),
          body: Center(
            child: ElevatedButton(
              child: const Text('Open page'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Secondpages()),
                );
              },
            ),
          ),
    )
    );
  }
}
