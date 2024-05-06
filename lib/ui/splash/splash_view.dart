import 'package:flutter/material.dart';
import 'package:ml_kit_flutter/ui/splash/splash_view_model.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StackedView<SplashViewModel> {
  const SplashView({super.key});

  @override
  Widget builder(BuildContext context,SplashViewModel viewModel,Widget? child) {
    return const Scaffold(
      body: Column(
        children: [
          Text("ML KİT EXAMPLES")
        ],
      ),
    );
  }



  @override
  SplashViewModel viewModelBuilder(BuildContext context) {
    return SplashViewModel();
  }
}
