import 'package:alura_nuvigator/screens/home_screen.dart';
import 'package:alura_nuvigator/screens/three_screen.dart';
import 'package:alura_nuvigator/screens/two_screen.dart';
import 'package:nuvigator/nuvigator.dart';
import 'package:flutter/widgets.dart';
part 'alura_router.g.dart';

@nuRouter
class  AluraRouter extends NuRouter {

  @NuRoute()
  ScreenRoute<void> home() => ScreenRoute(
    builder: (context) => HomeScreen(),
  );

  @NuRoute()
  ScreenRoute<void> pageTwo() => ScreenRoute(
    builder: (context) => TwoScreen()
  );

  @NuRoute()
  ScreenRoute<void> pageThree({String texto}) => ScreenRoute(
    builder: (context) => ThreeScreen(texto: texto),
  );

  @override
  Map <RouteDef , ScreenRouteBuilder> get screensMap => _$screensMap;
}