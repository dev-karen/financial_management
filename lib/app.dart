import 'package:financial_management/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class App extends StatelessWidget {
  const App({
    required HomeScreen home,
    Key? key,
  })  : _home = home,
        super(key: key);

  final HomeScreen _home;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: _home);
  }
}
