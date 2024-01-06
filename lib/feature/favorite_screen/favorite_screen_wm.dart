import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'favorite_screen_model.dart';
import 'favorite_screen_widget.dart';

abstract interface class IFavoriteScreenWidgetModel implements IWidgetModel {
}

FavoriteScreenWidgetModel defaultFavoriteScreenWidgetModelFactory(BuildContext context) {
  return FavoriteScreenWidgetModel(FavoriteScreenModel());
}

// TODO: cover with documentation
/// Default widget model for PersonnelScreenWidget
class FavoriteScreenWidgetModel extends WidgetModel<FavoriteScreenWidget, FavoriteScreenModel>
    implements IFavoriteScreenWidgetModel {

  FavoriteScreenWidgetModel(FavoriteScreenModel model) : super(model);
}
