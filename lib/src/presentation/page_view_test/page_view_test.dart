import 'package:flutter/material.dart';

class PageViewTestPage extends StatelessWidget {
  const PageViewTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      body: PageView(
        children: const [
          Center(
            child: Text('1'),
          ),
          Center(
            child: Text('2'),
          ),
          Center(
            child: Text('3'),
          )
        ],
      ),
    );
  }
}
