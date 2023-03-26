import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../aplication/predicted_price/predicted_price_bloc.dart';
import '../../../../core/common_widgets/gap.dart';

class SubmitPredictionsButton extends StatelessWidget {
  const SubmitPredictionsButton({super.key});

  void _onSubmitPrediction(BuildContext context) {
    context.read<PredictedPriceBloc>().add(
          PredictedPriceEvent.onSubmitPrediction(),
        );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<PredictedPriceBloc>();
    final state = bloc.state;
    final theme = Theme.of(context);
    return ReactiveFormConsumer(
      builder: (context, formGroup, child) {
        return Center(
          child: ElevatedButton(
            style: theme.elevatedButtonTheme.style,
            onPressed: state.formGroup!.valid
                ? () {
                    _onSubmitPrediction(context);
                  }
                : null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.attach_money,
                  color: theme.colorScheme.onPrimary,
                ),
                const Gap(10),
                Text(
                  'Generar Opinion de Valor',
                  style: theme.textTheme.button,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
