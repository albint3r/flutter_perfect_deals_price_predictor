import 'package:flutter/material.dart';

class FeatureListingInfo extends StatelessWidget {
  const FeatureListingInfo({
    required this.value,
    required this.icon,
    this.isCardBox = true,
    super.key,
  });

  final num value;
  final IconData icon;
  final bool isCardBox;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return isCardBox
        ? Card(
            elevation: 1,
            child: SizedBox(
              width: size.width * .1,
              height: size.width * .1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${value.round()}'),
                  Icon(icon),
                ],
              ),
            ),
          )
        : SizedBox(
            width: size.width * .1,
            height: size.width * .11,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${value.round()}'),
                Icon(icon),
              ],
            ),
          );
  }
}
