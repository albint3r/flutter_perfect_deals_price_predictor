import 'package:flutter/material.dart';

class WrapperNavToLoginOrSignInTextButton extends StatelessWidget {
  const WrapperNavToLoginOrSignInTextButton({
    required this.leftText,
    required this.textButton,
    required this.onPressed,
    Key? key,
  }) : super(key: key);
  final String leftText;
  final String textButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(leftText),
        TextButton(
          onPressed: onPressed,
          child: Text(textButton),
        )
      ],
    );
  }
}
