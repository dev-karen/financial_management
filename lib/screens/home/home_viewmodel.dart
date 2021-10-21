import 'package:financial_management/bases/base.dart';
import 'package:injectable/injectable.dart';

part 'home_state.dart';

@injectable
class HomeViewmodel extends BaseViewModel<HomeBaseState> {
  HomeViewmodel() : super(HomeInitState());
}
