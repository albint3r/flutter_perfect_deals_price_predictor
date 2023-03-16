// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressPrediction _$$_AddressPredictionFromJson(Map<String, dynamic> json) =>
    _$_AddressPrediction(
      json['description'] as String?,
      (json['matched_substrings'] as List<dynamic>?)
          ?.map((e) => MatchedSubstrings.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['place_id'] as String?,
      json['reference'] as String?,
      json['structured_formatting'] as Map<String, dynamic>?,
      json['terms'] as List<dynamic>?,
      json['type'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_AddressPredictionToJson(
        _$_AddressPrediction instance) =>
    <String, dynamic>{
      'description': instance.description,
      'matched_substrings': instance.matchedSubstrings,
      'place_id': instance.placeId,
      'reference': instance.reference,
      'structured_formatting': instance.structuredFormatting,
      'terms': instance.terms,
      'type': instance.type,
    };

_$_MatchedSubstrings _$$_MatchedSubstringsFromJson(Map<String, dynamic> json) =>
    _$_MatchedSubstrings(
      json['length'] as int?,
      json['offset'] as int?,
    );

Map<String, dynamic> _$$_MatchedSubstringsToJson(
        _$_MatchedSubstrings instance) =>
    <String, dynamic>{
      'length': instance.length,
      'offset': instance.offset,
    };
