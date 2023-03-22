// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_listings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyListings _$$_MyListingsFromJson(Map<String, dynamic> json) =>
    _$_MyListings(
      listings: (json['listings'] as List<dynamic>)
          .map((e) => Listing.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MyListingsToJson(_$_MyListings instance) =>
    <String, dynamic>{
      'listings': instance.listings,
    };
