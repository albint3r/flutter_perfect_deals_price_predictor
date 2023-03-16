// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'predictions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Predictions _$$_PredictionsFromJson(Map<String, dynamic> json) =>
    _$_Predictions(
      (json['predictions'] as List<dynamic>)
          .map((e) => AddressPrediction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PredictionsToJson(_$_Predictions instance) =>
    <String, dynamic>{
      'predictions': instance.predictions,
    };
