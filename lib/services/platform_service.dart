import 'package:financial_management/helpers/platform_helper.dart';
import 'package:flutter/material.dart';

enum ScreenSize {
  small,
  medium,
  large,
}

abstract class IPlatformService {
  ScreenSize screenSize({required BuildContext context});
}

class PlatformService implements IPlatformService {
  @override
  ScreenSize screenSize({required BuildContext context}) {
    final screenWidth = MediaQuery.of(context).size.width;
    return PlatformHelper.screenSize(screenWidth: screenWidth);
  }
}
