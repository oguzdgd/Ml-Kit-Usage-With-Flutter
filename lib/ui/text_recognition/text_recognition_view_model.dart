import 'package:ml_kit_flutter/app/app.router.dart';
import 'package:ml_kit_flutter/ui/main/main_view_model.dart';
import 'package:stacked_services/stacked_services.dart';

class TextRecognitionViewModel extends MainViewModel {
  init() {
    Future.delayed(Duration(seconds: 3), () {
      NavigationService().pushNamedAndRemoveUntil(Routes.mainView);
    });
  }
}