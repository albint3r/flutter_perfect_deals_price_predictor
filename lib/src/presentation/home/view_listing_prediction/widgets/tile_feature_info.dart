import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class TileFeatureInfo extends StatelessWidget {
  const TileFeatureInfo({
    required this.title,
    required this.value,
    required this.icon,
    super.key,
  });

  final String title;
  final num value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final NumberFormat myFormat = NumberFormat.decimalPattern('es');
    final theme = Theme.of(context);
    return Card(
      elevation: 1,
      child: ListTile(
        title: Column(
          children: [
            Text(
              title,
              style: theme.textTheme.headline6,
            ),
            const Divider(),
          ],
        ),
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
          ],
        ),
        subtitle: Text(
          myFormat.format(value),
          textAlign: TextAlign.right,
          style: theme.textTheme.titleLarge,
        ),
      ),
    );
  }
}
