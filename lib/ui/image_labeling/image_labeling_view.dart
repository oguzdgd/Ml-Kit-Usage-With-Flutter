
import 'package:flutter/material.dart';
import 'package:google_mlkit_image_labeling/google_mlkit_image_labeling.dart';

class ImageLabelingView extends StatefulWidget {
  const ImageLabelingView({super.key});

  @override
  State<ImageLabelingView> createState() => _ImageLabelingViewState();
}

class _ImageLabelingViewState extends State<ImageLabelingView> {
  late ImageLabeler _imageLabeler;
  bool _canProcess = false;
  bool _isBusy = false;
  CustomPaint? _customPaint;
  String? _text;


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
}
