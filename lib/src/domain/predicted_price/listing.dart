import 'package:freezed_annotation/freezed_annotation.dart';

part 'listing.freezed.dart';

part 'listing.g.dart';

@freezed
class Listing with _$Listing {
  factory Listing({
    @JsonKey(name: 'm2_land') double? m2Land,
    @JsonKey(name: 'm2_const')required double m2Const,
    @JsonKey(name: 'price_const') double? priceConst,
    @JsonKey(name: 'price_land') double? priceLand,
    required int rooms,
    required int baths,
    required int cars,
    required double lat,
    required double long,
    double? price,
    @JsonKey(name: 'model_name')String? modelName,
    @JsonKey(name: 'created_at')String? createdAt,
  }) = _Listing;

  Listing._();

  factory Listing.fromJson(Map<String, dynamic> json) =>
      _$ListingFromJson(json);
}
