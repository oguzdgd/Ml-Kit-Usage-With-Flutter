import 'package:stacked/stacked.dart';

class MainViewModel extends BaseViewModel {
  int _currentTabIndex = 0;
  int get currentTabIndex => _currentTabIndex;

  void setTabIndex(int index) {
    _currentTabIndex = index;
    rebuildUi();
  }
}
