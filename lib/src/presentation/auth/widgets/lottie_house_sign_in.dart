import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../core/common_widgets/wrapper_lottie.dart';

class LottieHouseSignIn extends StatelessWidget {
  const LottieHouseSignIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WrapperLottie(
      scale: 1,
      width: 250,
      height: 250,
      child: Lottie.asset(
        'assets/lottie/house_sign.json',
        fit: BoxFit.contain,
      ),
    );
  }
}
