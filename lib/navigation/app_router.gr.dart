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
    CatalogRouteWidget.name: (routeData) {
      final args = routeData.argsAs<CatalogRouteWidgetArgs>(
          orElse: () => const CatalogRouteWidgetArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CatalogScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
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
    FavoriteRouteWidget.name: (routeData) {
      final args = routeData.argsAs<FavoriteRouteWidgetArgs>(
          orElse: () => const FavoriteRouteWidgetArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FavoriteScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
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
    MainRouteWidget.name: (routeData) {
      final args = routeData.argsAs<MainRouteWidgetArgs>(
          orElse: () => const MainRouteWidgetArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MainScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    MainTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainTabPage(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnBoardingPage(),
      );
    },
    ProfileRouteWidget.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteWidgetArgs>(
          orElse: () => const ProfileRouteWidgetArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ProfileTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileTabPage(),
      );
    },
  };
}

/// generated route for
/// [CatalogScreenWidget]
class CatalogRouteWidget extends PageRouteInfo<CatalogRouteWidgetArgs> {
  CatalogRouteWidget({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultCatalogScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          CatalogRouteWidget.name,
          args: CatalogRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'CatalogRouteWidget';

  static const PageInfo<CatalogRouteWidgetArgs> page =
      PageInfo<CatalogRouteWidgetArgs>(name);
}

class CatalogRouteWidgetArgs {
  const CatalogRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultCatalogScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'CatalogRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
  }
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
/// [FavoriteScreenWidget]
class FavoriteRouteWidget extends PageRouteInfo<FavoriteRouteWidgetArgs> {
  FavoriteRouteWidget({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultFavoriteScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          FavoriteRouteWidget.name,
          args: FavoriteRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'FavoriteRouteWidget';

  static const PageInfo<FavoriteRouteWidgetArgs> page =
      PageInfo<FavoriteRouteWidgetArgs>(name);
}

class FavoriteRouteWidgetArgs {
  const FavoriteRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultFavoriteScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'FavoriteRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
  }
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
/// [MainScreenWidget]
class MainRouteWidget extends PageRouteInfo<MainRouteWidgetArgs> {
  MainRouteWidget({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultMainScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          MainRouteWidget.name,
          args: MainRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'MainRouteWidget';

  static const PageInfo<MainRouteWidgetArgs> page =
      PageInfo<MainRouteWidgetArgs>(name);
}

class MainRouteWidgetArgs {
  const MainRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultMainScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'MainRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [MainTabPage]
class MainTab extends PageRouteInfo<void> {
  const MainTab({List<PageRouteInfo>? children})
      : super(
          MainTab.name,
          initialChildren: children,
        );

  static const String name = 'MainTab';

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
/// [ProfileScreenWidget]
class ProfileRouteWidget extends PageRouteInfo<ProfileRouteWidgetArgs> {
  ProfileRouteWidget({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultProfileScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRouteWidget.name,
          args: ProfileRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRouteWidget';

  static const PageInfo<ProfileRouteWidgetArgs> page =
      PageInfo<ProfileRouteWidgetArgs>(name);
}

class ProfileRouteWidgetArgs {
  const ProfileRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultProfileScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ProfileRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
  }
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
