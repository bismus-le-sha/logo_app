import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:logo_app/core/router/router.gr.dart';
import 'package:logo_app/widgets/nav_bar.dart';

@RoutePage()
class TabsNavigationPage extends StatelessWidget {
  const TabsNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: [CounterRoute(), LogoRoute()],
      builder: (context, child, tabController) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: CustomNavBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
          ),
        );
      },
    );
  }
}
