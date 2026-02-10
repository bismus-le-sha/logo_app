import 'package:auto_route/auto_route.dart';
import 'package:logo_app/core/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: TabsNavigationRoute.page,
      initial: true,
      children: [
        AutoRoute(page: LogoRoute.page, initial: true),
        AutoRoute(page: CounterRoute.page),
      ],
    ),
  ];
}
