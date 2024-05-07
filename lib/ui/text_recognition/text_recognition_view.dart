import 'package:flutter/material.dart';
import 'package:ml_kit_flutter/ui/text_recognition/text_recognition_view_model.dart';
import 'package:stacked/stacked.dart';

class TextRecognitionView extends StackedView<TextRecognitionViewModel> {
  const TextRecognitionView({super.key});

  @override
  Widget builder(
      BuildContext context, TextRecognitionViewModel viewModel, Widget? child) {
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
  TextRecognitionViewModel viewModelBuilder(BuildContext context) {
    return TextRecognitionViewModel();
  }
}
