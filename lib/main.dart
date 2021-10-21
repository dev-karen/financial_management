import 'package:financial_management/setup.dart';
import 'package:flutter/material.dart';
import 'package:financial_management/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();
  runApp(locateService<App>());
}
