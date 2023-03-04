import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottiePredictMainDisplay extends StatelessWidget {
  const LottiePredictMainDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.scale(

      scale: 1,
      child: Lottie.asset('assets/lottie/predict.json'),
    );
  }
}
// decoration:
// BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)))
