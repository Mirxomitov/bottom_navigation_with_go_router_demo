import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navigation/app_navigator.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppNavigator.router,
    );
  }
}