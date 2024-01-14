import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:test_project/ui/feature/cart_page/cart_page.dart';
import 'package:test_project/ui/feature/home/home.dart';
import 'package:test_project/ui/feature/onboarding_page/onboarding_screen.dart';
import 'package:test_project/ui/feature/test_page/test_page.dart';
import 'package:test_project/ui/ui_kit/empty_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: OnBoardingRoute.page,
        ),
        AutoRoute(page: HomeRoute.page, children: [
          AutoRoute(
            page: ShowCaseTab.page,
            initial: true,
            children: [
              AutoRoute(
                page: TestRouteWidget.page,
                initial: true,
              ),
            ],
          ),
          AutoRoute(
            page: CatalogTab.page,
            children: [
              AutoRoute(page: EmptyRoute.page),
            ],
          ),
          AutoRoute(
            page: FavoriteTab.page,
            children: [
              AutoRoute(page: EmptyRoute.page),
            ],
          ),
          AutoRoute(
            page: CartTab.page,
            children: [
              AutoRoute(
                page: CartRouteWidget.page,
                initial: true,
              ),
            ],
          ),
          AutoRoute(
            page: ProfileTab.page,
            children: [
              AutoRoute(page: EmptyRoute.page),
            ],
          ),
        ]),
      ];
}

@RoutePage(name: 'ShowCaseTab')
class ShowCaseTabPage extends AutoRouter {
  const ShowCaseTabPage({super.key});
}

@RoutePage(name: 'CatalogTab')
class CatalogTabPage extends AutoRouter {
  const CatalogTabPage({super.key});
}

@RoutePage(name: 'FavoriteTab')
class FavoriteTabPage extends AutoRouter {
  const FavoriteTabPage({super.key});
}

@RoutePage(name: 'CartTab')
class CartTabPage extends AutoRouter {
  const CartTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
