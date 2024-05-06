import 'package:ml_kit_flutter/app/app.router.dart';
import 'package:ml_kit_flutter/ui/main/main_view_model.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashViewModel extends MainViewModel {

  init() {
    Future.delayed(Duration(seconds: 2), () {
      NavigationService().pushNamedAndRemoveUntil(Routes.mainView);
    });
  }
}