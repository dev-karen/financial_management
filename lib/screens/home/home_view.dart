import 'package:financial_management/screens/home/home_viewmodel.dart';
import 'package:financial_management/ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:financial_management/services/platform_service.dart';
import 'package:financial_management/widgets/responsive_widget.dart';
// import 'package:financial_management/screens/home/home.dart';

@injectable
class HomeScreen extends ResponsiveWidget {
  const HomeScreen({
    required HomeViewmodel homeViewmodel,
    required IPlatformService platformService,
    Key? key,
  })  : _viewModel = homeViewmodel,
        super(
          platformService: platformService,
          key: key,
        );

  final HomeViewmodel _viewModel;

  @override
  Widget buildForLargeScreen(BuildContext context) => buildScreen(
        context: context,
        screenSize: ScreenSize.large,
      );

  @override
  Widget buildForMediumScreen(BuildContext context) => buildScreen(
        context: context,
        screenSize: ScreenSize.medium,
      );

  @override
  Widget buildForSmallScreen(BuildContext context) => buildScreen(
        context: context,
        screenSize: ScreenSize.small,
      );

  Widget buildScreen({
    required BuildContext context,
    required ScreenSize screenSize,
  }) {
    return BlocBuilder(
      bloc: _viewModel,
      builder: (context, state) {
        return const Scaffold(
          body: Center(
            child: UIText(text: 'Home'),
          ),
        );
      },
    );
  }
}
