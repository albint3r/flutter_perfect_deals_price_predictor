import 'package:flutter/material.dart';

class WellComeHeader extends StatelessWidget {
  const WellComeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8),
      child: Center(
        child: Text(
          'Desliza a la derecha para obtener la predicción del precio de un inmueble',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
