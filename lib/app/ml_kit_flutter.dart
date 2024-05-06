import 'package:flutter/material.dart';
import 'package:ml_kit_flutter/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class Ml_Kit_Flutter extends StatelessWidget {
  const Ml_Kit_Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorObservers: [StackedService.routeObserver],
      debugShowCheckedModeBanner: false,
      title: 'Ml Kit Examples',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
