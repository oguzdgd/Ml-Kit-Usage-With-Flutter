import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MainViewModel extends BaseViewModel {
  int _currentTabIndex = 0;
  int get currentTabIndex => _currentTabIndex;
  NavigationService navigationService = NavigationService();

  void setTabIndex(int index) {
    _currentTabIndex = index;
    rebuildUi();
  }
}
