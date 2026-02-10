import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:logo_app/core/router/router.gr.dart';

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
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                label: 'page1',
                icon: Icon(Icons.ac_unit),
              ),
              BottomNavigationBarItem(
                label: 'page2',
                icon: Icon(Icons.ac_unit),
              ),
            ],
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
          ),
        );
      },
    );
  }
}
