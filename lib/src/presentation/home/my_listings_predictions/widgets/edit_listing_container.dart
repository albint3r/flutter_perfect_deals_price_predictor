import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../aplication/my_listing_predictions/my_listing_predictions_bloc.dart';
import '../../../../domain/predicted_price/listing.dart';
import '../../../core/common_widgets/gap.dart';
import 'buttons/submit_editions_button.dart';
import 'field/note_field.dart';

class EditListingContainer extends StatelessWidget {
  const EditListingContainer({
    required this.listing,
    super.key,
  });

  final Listing? listing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bloc = context.watch<MyListingPredictionsBloc>();
    final state = bloc.state;
    return Container(
      height: 50,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            theme.colorScheme.primary.withOpacity(.5),
            theme.colorScheme.onPrimary,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: TextButton(
        onPressed: () {
          // TODO I don't know why without this the TextForm have an error.
        },
        child: ReactiveForm(
          formGroup: state.formGroup!,
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Column(
                      children: const [
                        NoteField(),
                      ],
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  context.router.pop();
                },
                child: const Text('Cancelar'),
              ),
              const Gap(20),
              const SubmitEditionsButton(),
            ],
          ),
        ),
      ),
    );
  }
}
