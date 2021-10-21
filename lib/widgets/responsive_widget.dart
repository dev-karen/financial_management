import 'package:financial_management/services/platform_service.dart';
import 'package:flutter/material.dart';

abstract class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    required IPlatformService platformService,
    Key? key,
  })  : _platformSevice = platformService,
        super(key: key);

  final IPlatformService _platformSevice;

  Widget buildForSmallScreen(BuildContext context);
  Widget buildForMediumScreen(BuildContext context);
  Widget buildForLargeScreen(BuildContext context);

  @override
  Widget build(BuildContext context) {
    final screenSize = _platformSevice.screenSize(context: context);
    switch (screenSize) {
      case ScreenSize.large:
        return buildForLargeScreen(context);
      case ScreenSize.medium:
        return buildForMediumScreen(context);
      case ScreenSize.small:
        return buildForSmallScreen(context);
    }
  }
}
