import 'package:flutter/material.dart';
import 'package:ml_kit_flutter/ui/image_labeling/image_labeling_view_model.dart';
import 'package:stacked/stacked.dart';

class ImageLabelingView extends StackedView<ImageLabelingViewModel> {
  const ImageLabelingView({super.key});

  @override
  Widget builder(
      BuildContext context, ImageLabelingViewModel viewModel, Widget? child) {
    viewModel.init();
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Image Labeling",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  ImageLabelingViewModel viewModelBuilder(BuildContext context) {
    return ImageLabelingViewModel();
  }
}
