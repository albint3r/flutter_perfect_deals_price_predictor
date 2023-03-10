import 'package:flutter/material.dart';

class WrapperScaffoldBody extends StatelessWidget {
  const WrapperScaffoldBody({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: child,
      ),
    );
  }
}
