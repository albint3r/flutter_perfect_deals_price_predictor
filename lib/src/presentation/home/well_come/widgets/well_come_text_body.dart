import 'package:flutter/material.dart';

class WellComeTextBody extends StatelessWidget {
  const WellComeTextBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      child: Container(
        child: const Padding(
          padding: EdgeInsets.all(8),
          child: Center(
            child: Text(
              '¿Quieres saber el valor real de tu inmueble? Desliza a la derecha '
                  'para acceder a nuestra sección de predicción de precios. '
                  'Ingresa información y ubicación. ¡Descubre el '
                  'precio justo ahora!',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
