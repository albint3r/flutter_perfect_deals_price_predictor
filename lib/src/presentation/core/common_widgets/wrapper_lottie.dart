import 'package:flutter/material.dart';

class WrapperLottie extends StatelessWidget {
  const WrapperLottie({
    required this.child,
    this.height,
    this.width,
    this.scale,
    super.key,
  });

  final Widget child;
  final double? height;
  final double? width;
  final double? scale;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: SizedBox(
          height: height ?? 150,
          width: width ?? 150,
          child: Transform.scale(
            scale: scale ?? 2,
            child: child,
          ),
        ),
      ),
    );
  }
}
