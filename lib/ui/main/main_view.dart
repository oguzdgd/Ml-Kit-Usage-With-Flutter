import 'package:flutter/material.dart';
import 'package:ml_kit_flutter/common/create_bottom_nav_item.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: NavigationBar(
          elevation: 0,
          selectedIndex: currentIndexPage,
          onDestinationSelected: (int index) {
            setState(() {
              currentIndexPage = index;
            });
          },
          destinations: [
            createNavItem(TabItem.imageLabeling),
            createNavItem(TabItem.faceDetection),
            createNavItem(TabItem.textRecognition),
          ],
        ),
        body: getViewForIndex(currentIndexPage));
  }
}
