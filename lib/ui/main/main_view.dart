import 'package:flutter/material.dart';

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
          createNavItem(TabItem.faceDetection),
          createNavItem(TabItem.imageLabeling),
        ],
      ),
      body: Column(
        children: [Text("deneme")],
      ),
    );
  }

  NavigationDestination createNavItem(TabItem tabItem) {
    final currentTab = TabItemData.tabs[tabItem]!;
    return NavigationDestination(icon: currentTab.icon, label: currentTab.title);
  }
}

enum TabItem { imageLabeling, faceDetection, textRecognition }

class TabItemData {
  String title;
  Widget icon;

  TabItemData({ required this.title, required this.icon});

  static Map<TabItem, TabItemData> tabs = {
    TabItem.imageLabeling: TabItemData(
        title: "Image Labeling", icon: Icon(Icons.image)),
    TabItem.faceDetection: TabItemData(
        title: "Face Detection", icon: Icon(Icons.face)),
    TabItem.textRecognition: TabItemData(
        title: "Text Recognition", icon: Icon(Icons.text_format))
  };
}