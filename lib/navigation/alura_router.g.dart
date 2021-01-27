// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alura_router.dart';

// **************************************************************************
// NuvigatorGenerator
// **************************************************************************

class AluraRoutes {
  static const home = 'alura/home';

  static const pageTwo = 'alura/pageTwo';

  static const pageThree = 'alura/pageThree';
}

class PageThreeArgs {
  PageThreeArgs({@required this.texto});

  final String texto;

  static PageThreeArgs parse(Map<String, Object> args) {
    if (args == null) {
      return PageThreeArgs(texto: null);
    }
    return PageThreeArgs(
      texto: args['texto'],
    );
  }

  Map<String, Object> get toMap => {
        'texto': texto,
      };
  static PageThreeArgs of(BuildContext context) {
    final routeSettings = ModalRoute.of(context)?.settings;
    final nuvigator = Nuvigator.of(context);
    if (routeSettings?.name == AluraRoutes.pageThree) {
      final args = routeSettings?.arguments;
      if (args == null)
        throw FlutterError('PageThreeArgs requires Route arguments');
      if (args is PageThreeArgs) return args;
      if (args is Map<String, Object>) return parse(args);
    } else if (nuvigator != null) {
      return of(nuvigator.context);
    }
    return null;
  }
}

extension AluraRouterNavigation on AluraRouter {
  Future<void> toHome() {
    return nuvigator.pushNamed<void>(
      AluraRoutes.home,
    );
  }

  Future<void> pushReplacementToHome<TO extends Object>({TO result}) {
    return nuvigator.pushReplacementNamed<void, TO>(
      AluraRoutes.home,
      result: result,
    );
  }

  Future<void> pushAndRemoveUntilToHome<TO extends Object>(
      {@required RoutePredicate predicate}) {
    return nuvigator.pushNamedAndRemoveUntil<void>(
      AluraRoutes.home,
      predicate,
    );
  }

  Future<void> popAndPushToHome<TO extends Object>({TO result}) {
    return nuvigator.popAndPushNamed<void, TO>(
      AluraRoutes.home,
      result: result,
    );
  }

  Future<void> toPageTwo() {
    return nuvigator.pushNamed<void>(
      AluraRoutes.pageTwo,
    );
  }

  Future<void> pushReplacementToPageTwo<TO extends Object>({TO result}) {
    return nuvigator.pushReplacementNamed<void, TO>(
      AluraRoutes.pageTwo,
      result: result,
    );
  }

  Future<void> pushAndRemoveUntilToPageTwo<TO extends Object>(
      {@required RoutePredicate predicate}) {
    return nuvigator.pushNamedAndRemoveUntil<void>(
      AluraRoutes.pageTwo,
      predicate,
    );
  }

  Future<void> popAndPushToPageTwo<TO extends Object>({TO result}) {
    return nuvigator.popAndPushNamed<void, TO>(
      AluraRoutes.pageTwo,
      result: result,
    );
  }

  Future<void> toPageThree({String texto}) {
    return nuvigator.pushNamed<void>(
      AluraRoutes.pageThree,
      arguments: {
        'texto': texto,
      },
    );
  }

  Future<void> pushReplacementToPageThree<TO extends Object>(
      {String texto, TO result}) {
    return nuvigator.pushReplacementNamed<void, TO>(
      AluraRoutes.pageThree,
      arguments: {
        'texto': texto,
      },
      result: result,
    );
  }

  Future<void> pushAndRemoveUntilToPageThree<TO extends Object>(
      {String texto, @required RoutePredicate predicate}) {
    return nuvigator.pushNamedAndRemoveUntil<void>(
      AluraRoutes.pageThree,
      predicate,
      arguments: {
        'texto': texto,
      },
    );
  }

  Future<void> popAndPushToPageThree<TO extends Object>(
      {String texto, TO result}) {
    return nuvigator.popAndPushNamed<void, TO>(
      AluraRoutes.pageThree,
      arguments: {
        'texto': texto,
      },
      result: result,
    );
  }
}

extension AluraRouterScreensAndRouters on AluraRouter {
  Map<RouteDef, ScreenRouteBuilder> get _$screensMap {
    return {
      RouteDef(AluraRoutes.home): (RouteSettings settings) {
        return home();
      },
      RouteDef(AluraRoutes.pageTwo): (RouteSettings settings) {
        return pageTwo();
      },
      RouteDef(AluraRoutes.pageThree): (RouteSettings settings) {
        final args = PageThreeArgs.parse(settings.arguments);
        return pageThree(texto: args.texto);
      },
    };
  }
}
