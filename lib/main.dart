import 'package:flutter/widgets.dart';
import 'package:nuvigator/nuvigator.dart';
import 'package:flutter/material.dart';
import 'navigation/alura_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: Nuvigator(
        router: AluraRouter(),
        screenType: materialScreenType,
        initialRoute: AluraRoutes.home,
      ),
    );
  }
}