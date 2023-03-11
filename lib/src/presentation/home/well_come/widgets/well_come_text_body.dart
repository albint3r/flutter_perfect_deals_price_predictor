import 'package:flutter/material.dart';

class WellComeTextBody extends StatelessWidget {
  const WellComeTextBody({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width * .65;
    final TextStyle? textStyle = Theme.of(context).textTheme.bodyText1;

    return SizedBox(
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Text(
            'Descubre el valor real de tus inmuebles con nuestro método secreto'
            ' de AI. Obtén un análisis preciso y toma decisiones informadas'
            ' de inversión. Desliza a la izquierda para conocer más y'
            ' maximiza tus ganancias en inmuebles.',
            textAlign: TextAlign.center,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
