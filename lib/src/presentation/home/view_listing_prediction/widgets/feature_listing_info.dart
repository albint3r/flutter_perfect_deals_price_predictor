import 'package:flutter/material.dart';

class FeatureListingInfo extends StatelessWidget {
  const FeatureListingInfo({
    required this.value,
    required this.icon,
    super.key,
  });

  final num value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
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
    );
  }
}
