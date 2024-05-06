import 'package:flutter/material.dart';
import 'package:ml_kit_flutter/ui/face_detection/face_detection_view_model.dart';
import 'package:stacked/stacked.dart';

class FaceDetectionView extends StackedView<FaceDetectionViewModel> {
  const FaceDetectionView({super.key});

  @override
  Widget builder(
      BuildContext context, FaceDetectionViewModel viewModel, Widget? child) {
    viewModel.init();
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Face Detection",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  FaceDetectionViewModel viewModelBuilder(BuildContext context) {
    return FaceDetectionViewModel();
  }
}
