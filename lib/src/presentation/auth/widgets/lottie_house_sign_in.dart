import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieHouseSignIn extends StatelessWidget {
  const LottieHouseSignIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: .75,
      child: Lottie.asset('assets/lottie/house_sign.json'),
    );
  }
}
