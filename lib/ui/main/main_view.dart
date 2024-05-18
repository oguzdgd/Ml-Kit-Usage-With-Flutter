import 'package:flutter/material.dart';
import 'package:ml_kit_flutter/app/app.router.dart';
import 'package:ml_kit_flutter/ui/main/main_view_model.dart';
import 'package:stacked/stacked.dart';

class MainView extends StackedView<MainViewModel> {
  const MainView({super.key});

  @override
  Widget builder(BuildContext context, MainViewModel viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: Colors.white,
      /*bottomNavigationBar: NavigationBar(
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
        body: getViewForIndex(viewModel.currentTabIndex));*/
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.amberAccent,
              child: Text("Image Labeling"),
              onPressed: () {
                viewModel.navigationService.navigateTo(Routes.imageLabelView);
              },
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text("Text Recognition"),
              onPressed: () {
                viewModel.navigationService.navigateTo(Routes.textRecognitionView);
              },
            ),
            MaterialButton(
              color: Colors.lightGreen,
              child: Text("Face Detector"),
              onPressed: () {
                viewModel.navigationService.navigateTo(Routes.faceDetectionView);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  MainViewModel viewModelBuilder(BuildContext context) {
    return MainViewModel();
  }
}
