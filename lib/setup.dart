import 'package:financial_management/services/platform_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:financial_management/setup.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureDependencies() async {
  $initGetIt(getIt);
}

T locateService<T extends Object>() {
  return getIt.get<T>();
}

@module
abstract class RegisterModule {
  @Injectable(as: Key)
  UniqueKey get key;

  @singleton
  IPlatformService get platformService => PlatformService();
}
