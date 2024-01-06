import 'package:auto_route/auto_route.dart';
import 'package:em_mobui/navigation/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        MainTab(),
        CatalogTab(),
        FavoriteTab(),
        ProfileTab(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'Главная',
            ),
            NavigationDestination(
              icon: Icon(Icons.messenger_outline),
              label: 'Каталог',
            ),
            NavigationDestination(
              icon: Icon(Icons.people),
              label: 'Избранное',
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'Профиль',
            ),
          ],
        );
      },
    );
  }
}
