import 'package:flutter/material.dart';
import 'app.dart';
import 'injectables.dart';

void main() async {
  configureDependencies();
  return runApp(
    MyApp(),
  );
}
