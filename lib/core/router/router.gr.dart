// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:logo_app/core/router/pages/tabs_navigation_page.dart' as _i3;
import 'package:logo_app/pages/counter_page.dart' as _i1;
import 'package:logo_app/pages/logo_page.dart' as _i2;

/// generated route for
/// [_i1.CounterPage]
class CounterRoute extends _i4.PageRouteInfo<void> {
  const CounterRoute({List<_i4.PageRouteInfo>? children})
    : super(CounterRoute.name, initialChildren: children);

  static const String name = 'CounterRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.CounterPage();
    },
  );
}

/// generated route for
/// [_i2.LogoPage]
class LogoRoute extends _i4.PageRouteInfo<void> {
  const LogoRoute({List<_i4.PageRouteInfo>? children})
    : super(LogoRoute.name, initialChildren: children);

  static const String name = 'LogoRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.LogoPage();
    },
  );
}

/// generated route for
/// [_i3.TabsNavigationPage]
class TabsNavigationRoute extends _i4.PageRouteInfo<void> {
  const TabsNavigationRoute({List<_i4.PageRouteInfo>? children})
    : super(TabsNavigationRoute.name, initialChildren: children);

  static const String name = 'TabsNavigationRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.TabsNavigationPage();
    },
  );
}
