import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_project/generated/l10n.dart';
import 'package:test_project/navigation/app_router.dart';
import 'package:test_project/ui/ui_kit/default_icon.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        ShowCaseTab(),
        CatalogTab(),
        FavoriteTab(),
        CartTab(),
        ProfileTab(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        final localization = S.of(context);
        return NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
          destinations: [
            NavigationDestination(
              icon: const Icon(DefaultIcon.home),
              label: localization.showcase,
            ),
            NavigationDestination(
              icon: const Icon(DefaultIcon.catalog),
              label: localization.catalog,
            ),
            NavigationDestination(
              icon: const Icon(DefaultIcon.cart),
              label: localization.cart,
            ),
            NavigationDestination(
              icon: const Icon(DefaultIcon.favorite),
              label: localization.favorite,
            ),
            NavigationDestination(
              icon: const Icon(DefaultIcon.profile),
              label: localization.profile,
            ),
          ],
        );
      },
    );
  }
}
