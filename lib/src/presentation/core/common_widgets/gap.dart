import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap(
    this.height, {
    super.key,
  });
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: height,
    );
  }
}
