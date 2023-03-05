import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../domain/predicted_price/i_predicte_price_facade.dart';

part 'predicted_price_bloc.freezed.dart';

part 'predicted_price_event.dart';

part 'predicted_price_state.dart';

@injectable
class PredictedPriceBloc
    extends Bloc<PredictedPriceEvent, PredictedPriceState> {
  PredictedPriceBloc(IPredictedPriceFacade facade)
      : super(PredictedPriceState.initialize()) {
    on<_PredictedPriceEventStart>(
      (event, emit) async {
        //
        emit(state.copyWith(
          isLoading: true,
        ));
        await facade.init();
        emit(
          state.copyWith(
            isLoading: false,
            formGroup: facade.form,
          ),
        );
      },
    );
    on<_PredictedPriceLatLong>((event, emit) {
      facade.predict();
    },);
  }
}
