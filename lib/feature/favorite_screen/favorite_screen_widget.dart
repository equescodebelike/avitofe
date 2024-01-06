import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'favorite_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for PersonnelScreen module
@RoutePage()
class FavoriteScreenWidget extends ElementaryWidget<IFavoriteScreenWidgetModel> {
  const FavoriteScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultFavoriteScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IFavoriteScreenWidgetModel wm) {
    return const Scaffold(body: Center(child: Text('FavoriteScreenWidget')));
  }
}
