import 'package:ml_kit_flutter/ui/face_detection/face_detection_view.dart';
import 'package:ml_kit_flutter/ui/image_labeling/image_labeling_view.dart';
import 'package:ml_kit_flutter/ui/main/main_view.dart';
import 'package:ml_kit_flutter/ui/splash/splash_view.dart';
import 'package:ml_kit_flutter/ui/text_recognition/text_recognition_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(routes: [
  MaterialRoute(page: SplashView, initial: true),
  MaterialRoute(page: MainView),
  MaterialRoute(page: ImageLabelView),
  MaterialRoute(page: TextRecognitionView),
  MaterialRoute(page: FaceDetectionView),

  // @stacked-route
])
class App {}
