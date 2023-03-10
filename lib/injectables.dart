import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injectables.config.dart';
import 'src/presentation/core/bloc_observer/simple_bloc_observer.dart';

/// Create a Global getIt Object.
/// This don't affect in the functionality
final getIt = GetIt.instance;
/// Initialize the Configuration Injection Dependencies from the project.
@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  await Firebase.initializeApp();
  final observer = SimpleBlocObserver();


  $initGetIt(getIt);
}
