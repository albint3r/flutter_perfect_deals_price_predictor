import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../domain/predicted_price/listing.dart';
import '../../../core/app_router/app_router.dart';
import 'content_alert.dart';
import 'title_alert.dart';

final gradientBackground = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Colors.blue[800]!,
      Colors.blue[200]!,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  ),
);

class ShowDialogListing extends StatelessWidget {
  const ShowDialogListing({
    required this.listing,
    super.key,
  });

  final Listing listing;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 600,
        decoration: gradientBackground,
        child: AlertDialog(
          backgroundColor: Colors.transparent,
          contentPadding: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          title: TitleAlert(
            listing: listing,
          ),
          elevation: 15,
          content: ContentAlert(
            listing: listing,
          ),
          actions: [
            TextButton(
              onPressed: () {
                context.router.push(
                  const HomeRoute(),
                );
              },
              child: const Text('Continuar'),
            ),
          ],
        ),
      ),
    );
  }
}
