import 'package:flutter/material.dart';

import 'app.dart';
import 'injectables.dart';
import 'src/presentation/core/bloc_observer/simple_bloc_observer.dart';

void main() async {
  await configureDependencies();
  return runApp(
    App(),
  );
}
