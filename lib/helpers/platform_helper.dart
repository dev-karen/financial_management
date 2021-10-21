import 'package:financial_management/services/platform_service.dart';

class PlatformHelper {
  static const double _smallScreenWidthBreakPoint = 533;
  static const double _mediumScreenWidthBreakPoint = 1023;

  static ScreenSize screenSize({required double screenWidth}) {
    final _isSmall = screenWidth <= _smallScreenWidthBreakPoint;
    final _isMedium = screenWidth > _smallScreenWidthBreakPoint &&
        screenWidth <= _mediumScreenWidthBreakPoint;

    if (_isSmall) {
      return ScreenSize.small;
    } else if (_isMedium) {
      return ScreenSize.medium;
    } else {
      return ScreenSize.large;
    }
  }
}
