import 'package:flutter/material.dart';

class WellComeHeader extends StatelessWidget {
  const WellComeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Text(
          'Invierte en inmuebles con confianza usando nuestras predicciones de AI',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
