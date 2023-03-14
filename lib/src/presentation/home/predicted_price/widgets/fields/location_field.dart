import 'package:address_search_field/address_search_field.dart';
import 'package:flutter/material.dart';
import '../../../../forms/widgets/wrapper_text_field.dart';

final geoMethods = GeoMethods(
  googleApiKey: 'AIzaSyAwLLwA4NzZoRvOMnBWEyHfFNFQAiwk9HA',
  language: 'es-419',
);

class LocationField extends StatelessWidget {
  LocationField({super.key});

  final controller = TextEditingController();

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
      onTap: (control) {
        _showSearchAutoCompleteAddress(context: context);
      },
    );
  }
}
