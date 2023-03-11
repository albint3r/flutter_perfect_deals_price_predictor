import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../core/common_widgets/wrapper_lottie.dart';

class LottieSwipeLeft extends StatelessWidget {
  const LottieSwipeLeft({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WrapperLottie(
          scale: 1,
          height: 100,
          width: 100,
          child: Lottie.asset(
            'assets/lottie/swipe_left.json',
            fit: BoxFit.contain,
          ),
        ),
        Text(
          'Desliza a la izquierda',
          style: Theme.of(context).textTheme.caption,
        )
      ],
    );
  }
}
