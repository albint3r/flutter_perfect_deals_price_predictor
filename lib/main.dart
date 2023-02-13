import 'package:flutter/material.dart';
import 'app.dart';
import 'injectables.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // configureDependencies();
  return runApp(
    MyApp(),
  );
}
