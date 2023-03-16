import 'package:freezed_annotation/freezed_annotation.dart';

import 'address_prediction.dart';

part 'predictions.freezed.dart';

part 'predictions.g.dart';

@freezed
class Predictions with _$Predictions {
  factory Predictions(
    List<AddressPrediction> predictions,
  ) = _Predictions;

  Predictions._();

  factory Predictions.fromJson(Map<String, dynamic> json) =>
      _$PredictionsFromJson(json);
}
