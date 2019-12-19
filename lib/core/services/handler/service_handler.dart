import 'package:get_it/get_it.dart';

import '../connectivity_service.dart';
import '../storage_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() async {
  var instance = await StorageService.getInstance();
  locator.registerSingleton<StorageService>(instance);
  locator.registerLazySingleton(() => ConnectivityService());
}