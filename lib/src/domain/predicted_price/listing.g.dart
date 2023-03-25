// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Listing _$$_ListingFromJson(Map<String, dynamic> json) => _$_Listing(
      id: json['id'] as int?,
      m2Land: (json['m2_land'] as num?)?.toDouble(),
      m2Const: (json['m2_const'] as num).toDouble(),
      priceConst: (json['price_const'] as num?)?.toDouble(),
      priceLand: (json['price_land'] as num?)?.toDouble(),
      rooms: json['rooms'] as int,
      baths: json['baths'] as int,
      cars: json['cars'] as int,
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
      price: (json['price'] as num?)?.toDouble(),
      address: json['address'] as String?,
      modelName: json['model_name'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$_ListingToJson(_$_Listing instance) =>
    <String, dynamic>{
      'id': instance.id,
      'm2_land': instance.m2Land,
      'm2_const': instance.m2Const,
      'price_const': instance.priceConst,
      'price_land': instance.priceLand,
      'rooms': instance.rooms,
      'baths': instance.baths,
      'cars': instance.cars,
      'lat': instance.lat,
      'long': instance.long,
      'price': instance.price,
      'address': instance.address,
      'model_name': instance.modelName,
      'created_at': instance.createdAt,
    };
