import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../core/app_router/app_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      body: PageView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Home'),
                ElevatedButton(
                    onPressed: () {
                      context.pushRoute(const SignInRoute());
                    },
                    child: const Text('Go to Form'))
              ],
            ),
          ),
          const Center(
            child: Text('2'),
          ),
          const Center(
            child: Text('3'),
          )
        ],
      ),
    );
  }
}
