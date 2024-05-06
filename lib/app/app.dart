import 'package:ml_kit_flutter/ui/main/main_view.dart';
import 'package:ml_kit_flutter/ui/splash/splash_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
    routes: [
      MaterialRoute(page:SplashView,initial: true),
      MaterialRoute(page:MainView),

  // @stacked-route
])
class App {}
