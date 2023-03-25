import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../aplication/my_listing_predictions/my_listing_predictions_bloc.dart';
import '../../../../core/common_widgets/gap.dart';

class SubmitEditionsButton extends StatelessWidget {
  const SubmitEditionsButton({super.key});

  void _onSubmitPrediction(BuildContext context) {
    context.read<MyListingPredictionsBloc>().add(
      MyListingPredictionsEvent.updateListing(),
    );
    context.router.pop();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bloc = context.watch<MyListingPredictionsBloc>();
    final state = bloc.state;
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
                  Icons.save,
                  color: theme.colorScheme.onPrimary,
                ),
                const Gap(10),
                Text(
                  'Guardar Notas',
                  style: theme.textTheme.button?.copyWith(
                    fontSize: 20,
                  ),
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
