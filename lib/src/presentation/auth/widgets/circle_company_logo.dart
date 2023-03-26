import 'package:flutter/material.dart';
import '../../core/common_widgets/wrapper_lottie.dart';

class CircleCompanyLogo extends StatelessWidget {
  const CircleCompanyLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const WrapperLottie(
      scale: 1,
      width: 200,
      height: 200,
      child: CircleAvatar(
        backgroundImage: AssetImage(
          'assets/images/perfect_deals_logo.png',
        ),
      ),
    );
  }
}
