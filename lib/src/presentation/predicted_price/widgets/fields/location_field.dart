import 'package:address_search_field/address_search_field.dart';
import 'package:flutter/material.dart';

final geoMethods = GeoMethods(
  googleApiKey: 'AIzaSyAwLLwA4NzZoRvOMnBWEyHfFNFQAiwk9HA',
  language: 'es-419',
);

class LocationField extends StatelessWidget {
  LocationField({Key? key}) : super(key: key);
  final controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onTap: () => showDialog(
        context: context,
        builder: (context) => AddressSearchDialog(
          geoMethods: geoMethods,
          controller: controller,
          onDone: (address) => print('address-> $address'),
        ),
      ),
    );
  }
}
