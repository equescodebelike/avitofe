import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/domain/offer/offer.dart';
import 'package:test_project/utils/theme_extension.dart';
import 'cart_page_model.dart';
import 'cart_page_widget.dart';

abstract interface class ICartPageWidgetModel implements IWidgetModel, IThemeProvider {
  ValueListenable<EntityState<List<Offer>>> get offerList;
}

CartPageWidgetModel defaultCartPageWidgetModelFactory(BuildContext context) {
  final model = context.read<CartPageModel>();
  return CartPageWidgetModel(model);
}

class CartPageWidgetModel extends WidgetModel<CartPageWidget, CartPageModel> with ThemeProvider
    implements ICartPageWidgetModel {

  CartPageWidgetModel(CartPageModel model) : super(model);

  @override
  ValueListenable<EntityState<List<Offer>>> get offerList => model.offerList;


}
