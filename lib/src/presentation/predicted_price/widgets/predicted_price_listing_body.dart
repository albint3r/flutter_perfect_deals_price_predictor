import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../aplication/predicted_price/predicted_price_bloc.dart';
import '../../core/common_widgets/wrapper_scaffold_body.dart';

class PredictedPriceBody extends StatelessWidget {
  const PredictedPriceBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final bloc = context.watch<PredictedPriceBloc>();
    // final state = bloc.state;
    return BlocListener<PredictedPriceBloc, PredictedPriceState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      child: Container(),
    );
      // child: WrapperScaffoldBody(
      //   child: ReactiveForm(
      //     formGroup: state.signInFormModel.form,
      //     child: SingleChildScrollView(
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Text('Algo')
      //         ],
      //       ),
      //     ),
      //   ),
      // );,
    // );
  }
}
