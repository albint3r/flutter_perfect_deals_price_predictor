import 'package:address_search_field/address_search_field.dart';
import 'package:flutter/material.dart';
import '../../../../forms/widgets/wrapper_text_field.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_webservice/places.dart';

import 'dart:async';
import 'dart:math';

import 'package:google_api_headers/google_api_headers.dart';

final geoMethods = GeoMethods(
  googleApiKey: 'AIzaSyAwLLwA4NzZoRvOMnBWEyHfFNFQAiwk9HA',
  language: 'es-419',
);

const String kGoogleApiKey = 'AIzaSyAwLLwA4NzZoRvOMnBWEyHfFNFQAiwk9HA';

class LocationField extends StatelessWidget {
  LocationField({super.key});

  final controller = TextEditingController();
  final Mode _mode = Mode.overlay;

  void _showSearchAutoCompleteAddress({
    required BuildContext context,
  }) {
    showDialog(
      context: context,
      builder: (context) => AddressSearchDialog(
        geoMethods: geoMethods,
        controller: controller,
        onDone: (address) => print('address-> $address'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WrapperTextField(
      controlName: 'address',
      validationMessages: null,
      labelText: 'Ubicación del inmueble',
      icon: Icons.search,
      onTap: (control) async {
        // _showSearchAutoCompleteAddress(context: context);
        Prediction? p = await PlacesAutocomplete.show(
          context: context,
          apiKey: kGoogleApiKey,
          onError: (value) {
            print(value);
          },
          mode: _mode,
          language: "es-419",
          decoration: InputDecoration(
            hintText: 'Search',
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
          components: [Component(Component.country, "mx")],
        );
      },
    );
  }
}


