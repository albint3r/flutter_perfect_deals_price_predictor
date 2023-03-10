import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../core/common_widgets/wrapper_lottie.dart';

class LottiePredict extends StatelessWidget {
  const LottiePredict({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WrapperLottie(
      scale: 1.8,
      height: 200,
      width: 200,
      child: Lottie.asset(
        'assets/lottie/analytics_predict.json',
        fit: BoxFit.contain,
      ),
    );
  }
}
// decoration:
// BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)))
