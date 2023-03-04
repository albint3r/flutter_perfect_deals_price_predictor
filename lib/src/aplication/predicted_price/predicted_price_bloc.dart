import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../infrastructure/predicted_price/i_predicted_price_form.dart';

part 'predicted_price_bloc.freezed.dart';

part 'predicted_price_event.dart';

part 'predicted_price_state.dart';

@injectable
class PredictedPriceBloc
    extends Bloc<PredictedPriceEvent, PredictedPriceState> {
  PredictedPriceBloc(IPredictedPriceForm predictedPriceForm)
      : super(PredictedPriceState.initialize()) {
    on<_PredictedPriceEventStart>(
      (event, emit) {
        print('TODO ADD SOME LOGIC HERE!');
        print('TODO ADD SOME LOGIC HERE!');
        print('TODO ADD SOME LOGIC HERE!');
        print('TODO ADD SOME LOGIC HERE!');
        print('TODO ADD SOME LOGIC HERE!');
        // TODO ADD SOME LOGIC HERE!
      },
    );
  }
}
