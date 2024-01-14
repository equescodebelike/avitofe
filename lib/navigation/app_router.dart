import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:em_mobui/feature/chat_screen/chat_screen_widget.dart';
import 'package:em_mobui/feature/chat_screen/chat_screen_wm.dart';
import 'package:em_mobui/feature/home/home.dart';
import 'package:em_mobui/feature/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

import '../feature/main_screen/main_screen.dart';
import '../feature/favorite_screen/favorite_screen.dart';
import '../feature/profile/profile_screen/profile_screen.dart';
import '../feature/catalog_screen/catalog_screen.dart';
import 'routes_path.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: OnBoardingRoute.page,
        ),
        AutoRoute(
          page: HomeRoute.page,
          // initial: true,
          children: [
            AutoRoute(
              initial: true,
              path: RouterPath.mainTab,
              page: MainTab.page,
              children: [
                AutoRoute(
                    initial: true,
                    path: RouterPath.mainTab,
                    page: MainRouteWidget.page),
                AutoRoute(
                  page: ChatRouteWidget.page,
                  path: RouterPath.chatPage,
                ),
              ],
            ),
            AutoRoute(
              path: RouterPath.catalogTab,
              page: CatalogTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: CatalogRouteWidget.page,
                ),
              ],
            ),
            AutoRoute(
              path: RouterPath.favoriteTab,
              page: FavoriteTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: FavoriteRouteWidget.page,
                ),
              ],
            ),
            AutoRoute(
              path: RouterPath.profileTab,
              page: ProfileTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: ProfileRouteWidget.page,
                ),
              ],
            ),
          ],
        ),
      ];
}

@RoutePage(name: 'MainTab')
class MainTabPage extends AutoRouter {
  const MainTabPage({super.key});
}

@RoutePage(name: 'CatalogTab')
class CatalogTabPage extends AutoRouter {
  const CatalogTabPage({super.key});
}

@RoutePage(name: 'FavoriteTab')
class FavoriteTabPage extends AutoRouter {
  const FavoriteTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
