// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter/material.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'app.dart' as _i3;
import 'screens/home/home_view.dart' as _i8;
import 'screens/home/home_viewmodel.dart' as _i6;
import 'screens/home_screen.dart' as _i4;
import 'services/platform_service.dart' as _i7;
import 'setup.dart' as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.App>(
      () => _i3.App(home: get<_i4.HomeScreen>(), key: get<_i5.Key>()));
  gh.factory<_i6.HomeViewmodel>(() => _i6.HomeViewmodel());
  gh.singleton<_i7.IPlatformService>(registerModule.platformService);
  gh.factory<_i5.Key>(() => registerModule.key);
  gh.factory<_i8.HomeScreen>(() => _i8.HomeScreen(
      homeViewmodel: get<_i6.HomeViewmodel>(),
      platformService: get<_i7.IPlatformService>(),
      key: get<_i5.Key>()));
  return get;
}

class _$RegisterModule extends _i9.RegisterModule {
  @override
  _i5.UniqueKey get key => _i5.UniqueKey();
}
