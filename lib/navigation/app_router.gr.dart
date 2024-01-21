// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CartRouteWidget.name: (routeData) {
      final args = routeData.argsAs<CartRouteWidgetArgs>(
          orElse: () => const CartRouteWidgetArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CartPageWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    CartTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartTabPage(),
      );
    },
    CatalogTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatalogTabPage(),
      );
    },
    ChatRouteWidget.name: (routeData) {
      final args = routeData.argsAs<ChatRouteWidgetArgs>(
          orElse: () => const ChatRouteWidgetArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    EmptyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmptyPage(),
      );
    },
    FavoriteTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoriteTabPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnBoardingPage(),
      );
    },
    ProfileTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileTabPage(),
      );
    },
    ShowCaseTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShowCaseTabPage(),
      );
    },
    TestRouteWidget.name: (routeData) {
      final args = routeData.argsAs<TestRouteWidgetArgs>(
          orElse: () => const TestRouteWidgetArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TestPageWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
  };
}

/// generated route for
/// [CartPageWidget]
class CartRouteWidget extends PageRouteInfo<CartRouteWidgetArgs> {
  CartRouteWidget({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultCartPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          CartRouteWidget.name,
          args: CartRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'CartRouteWidget';

  static const PageInfo<CartRouteWidgetArgs> page =
      PageInfo<CartRouteWidgetArgs>(name);
}

class CartRouteWidgetArgs {
  const CartRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultCartPageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'CartRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [CartTabPage]
class CartTab extends PageRouteInfo<void> {
  const CartTab({List<PageRouteInfo>? children})
      : super(
          CartTab.name,
          initialChildren: children,
        );

  static const String name = 'CartTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CatalogTabPage]
class CatalogTab extends PageRouteInfo<void> {
  const CatalogTab({List<PageRouteInfo>? children})
      : super(
          CatalogTab.name,
          initialChildren: children,
        );

  static const String name = 'CatalogTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatScreenWidget]
class ChatRouteWidget extends PageRouteInfo<ChatRouteWidgetArgs> {
  ChatRouteWidget({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultChatScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ChatRouteWidget.name,
          args: ChatRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRouteWidget';

  static const PageInfo<ChatRouteWidgetArgs> page =
      PageInfo<ChatRouteWidgetArgs>(name);
}

class ChatRouteWidgetArgs {
  const ChatRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultChatScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ChatRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [EmptyPage]
class EmptyRoute extends PageRouteInfo<void> {
  const EmptyRoute({List<PageRouteInfo>? children})
      : super(
          EmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavoriteTabPage]
class FavoriteTab extends PageRouteInfo<void> {
  const FavoriteTab({List<PageRouteInfo>? children})
      : super(
          FavoriteTab.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnBoardingPage]
class OnBoardingRoute extends PageRouteInfo<void> {
  const OnBoardingRoute({List<PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileTabPage]
class ProfileTab extends PageRouteInfo<void> {
  const ProfileTab({List<PageRouteInfo>? children})
      : super(
          ProfileTab.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShowCaseTabPage]
class ShowCaseTab extends PageRouteInfo<void> {
  const ShowCaseTab({List<PageRouteInfo>? children})
      : super(
          ShowCaseTab.name,
          initialChildren: children,
        );

  static const String name = 'ShowCaseTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TestPageWidget]
class TestRouteWidget extends PageRouteInfo<TestRouteWidgetArgs> {
  TestRouteWidget({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultTestPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          TestRouteWidget.name,
          args: TestRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'TestRouteWidget';

  static const PageInfo<TestRouteWidgetArgs> page =
      PageInfo<TestRouteWidgetArgs>(name);
}

class TestRouteWidgetArgs {
  const TestRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultTestPageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'TestRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
  }
}
