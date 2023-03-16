import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_prediction.freezed.dart';
part 'address_prediction.g.dart';

@freezed
class AddressPrediction with _$AddressPrediction {
  factory AddressPrediction(
    String? description,
    @JsonKey(name: 'matched_substrings') List<MatchedSubstrings>? matchedSubstrings,
    @JsonKey(name: 'place_id') String? placeId,
    String? reference,
    @JsonKey(name: 'structured_formatting')
        Map<String, dynamic>? structuredFormatting,
    List? terms,
    List? type,
  ) = _AddressPrediction;

  AddressPrediction._();

  factory AddressPrediction.fromJson(Map<String, dynamic> json) =>
      _$AddressPredictionFromJson(json);
}

@freezed
class MatchedSubstrings with _$MatchedSubstrings {
  factory MatchedSubstrings(
      int? length,
      int? offset,
      ) = _MatchedSubstrings;

  MatchedSubstrings._();

  factory MatchedSubstrings.fromJson(Map<String, dynamic> json) =>
      _$MatchedSubstringsFromJson(json);
}


