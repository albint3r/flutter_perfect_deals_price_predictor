import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../aplication/predicted_price/predicted_price_bloc.dart';
import '../../core/common_widgets/wrapper_scaffold_body.dart';
import 'fields/baths_field.dart';
import 'fields/cars_field.dart';
import 'fields/m2_const_field.dart';
import 'fields/m2_land_field.dart';
import 'fields/rooms_field.dart';

class PredictedPriceBody extends StatelessWidget {
  const PredictedPriceBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PredictedPriceBloc, PredictedPriceState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state.isLoading || state.formGroup == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return WrapperScaffoldBody(
          child: ReactiveForm(
            formGroup: state.formGroup!,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 500,
                    child: Row(
                      children: const [
                        Expanded(
                          child: M2LandField(),
                        ),
                        Expanded(
                          child: M2ConstField(),
                        ),
                      ],
                    ),
                  ),
                  const RoomsField(),
                  const BathsField(),
                  const CarsField(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
