import 'package:freezed_annotation/freezed_annotation.dart';

import '../predicted_price/listing.dart';

part 'my_listings.freezed.dart';
part 'my_listings.g.dart';

@freezed
class MyListings with _$MyListings {
  factory MyListings({
    required List<Listing> listings,
  }) = _MyListings;

  MyListings._();

  factory MyListings.fromJson(Map<String, dynamic> json) =>
      _$MyListingsFromJson(json);

}
