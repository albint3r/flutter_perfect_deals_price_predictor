import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injectables.config.dart';

/// Create a Global getIt Object.
/// This don't affect in the functionality
final getIt = GetIt.instance;
/// Initialize the Configuration Injection Dependencies from the project.
@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() {
  WidgetsFlutterBinding.ensureInitialized();
  $initGetIt(getIt);
}