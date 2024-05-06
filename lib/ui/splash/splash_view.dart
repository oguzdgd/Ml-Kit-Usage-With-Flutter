import 'package:flutter/material.dart';
import 'package:ml_kit_flutter/ui/splash/splash_view_model.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StackedView<SplashViewModel> {
  const SplashView({super.key});

  @override
  Widget builder(BuildContext context,SplashViewModel viewModel,Widget? child) {
    viewModel.init();
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text("ML KİT EXAMPLES",style: TextStyle(color: Colors.white),),
      ),
    );

  }



  @override
  SplashViewModel viewModelBuilder(BuildContext context) {
    return SplashViewModel();

  }
}
