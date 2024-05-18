import 'package:flutter/material.dart';
import 'package:ml_kit_flutter/ui/face_detection/face_detection_view.dart';
import 'package:ml_kit_flutter/ui/image_labeling/image_labeling_view.dart';
import 'package:ml_kit_flutter/ui/text_recognition/text_recognition_view.dart';

enum TabItem { imageLabeling, faceDetection, textRecognition }

class TabItemData {
  String title;
  Widget icon;

  TabItemData({required this.title, required this.icon});

  static Map<TabItem, TabItemData> tabs = {
    TabItem.imageLabeling:
        TabItemData(title: "Image Labeling", icon: Icon(Icons.image)),
    TabItem.faceDetection:
        TabItemData(title: "Face Detection", icon: Icon(Icons.face)),
    TabItem.textRecognition:
        TabItemData(title: "Text Recognition", icon: Icon(Icons.text_format))
  };
}

NavigationDestination createNavItem(TabItem tabItem) {
  final currentTab = TabItemData.tabs[tabItem]!;
  return NavigationDestination(icon: currentTab.icon, label: currentTab.title);
}

Widget getViewForIndex(int index) {
  switch (index) {
    case 0:
      return  ImageLabelView();
    case 1:
      return  const FaceDetectionView();
    case 2:
      return const TextRecognitionView();
    default:
      return Container();
  }
}
