import 'package:flutter/material.dart';
import 'package:ml_kit_flutter/common/create_bottom_nav_item.dart';
import 'package:ml_kit_flutter/ui/main/main_view_model.dart';
import 'package:stacked/stacked.dart';

class MainView extends StackedView<MainViewModel> {
  const MainView({super.key});

  @override
  Widget builder(BuildContext context, MainViewModel viewModel, Widget? child) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: NavigationBar(
          elevation: 0,
          selectedIndex: viewModel.currentTabIndex,
          onDestinationSelected: (int index) {
            viewModel.setTabIndex(index);
          },
          destinations: [
            createNavItem(TabItem.imageLabeling),
            createNavItem(TabItem.faceDetection),
            createNavItem(TabItem.textRecognition),
          ],
        ),
        body: getViewForIndex(viewModel.currentTabIndex));
  }

  @override
  MainViewModel viewModelBuilder(BuildContext context) {
    return MainViewModel();
  }
}
