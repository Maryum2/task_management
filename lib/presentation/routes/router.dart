import 'package:auto_route/auto_route.dart';
import 'package:task_manager_app/presentation/routes/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
//global transition
  RouteType get defaultRouteType => const RouteType.custom(
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 500,
        reverseDurationInMilliseconds: 200,
      );

  // Paths
  static const _routeOnBoardingPath = '/';
  static const _routeLoginPath = '/login';
  static const _routeTaskPath = '/task';
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: _routeOnBoardingPath,
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: _routeLoginPath,
        ),
        AutoRoute(
          page: TaskRoute.page,
          path: _routeTaskPath,
        ),
      ];
}
