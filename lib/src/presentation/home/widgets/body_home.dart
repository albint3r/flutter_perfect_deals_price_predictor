import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../core/app_router/app_router.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
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
    );
  }
}
