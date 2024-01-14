import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/domain/offer/offer.dart';
import 'package:test_project/utils/theme_extension.dart';
import 'cart_page_model.dart';
import 'cart_page_widget.dart';

abstract interface class ICartPageWidgetModel implements IWidgetModel, IThemeProvider {
  ValueListenable<List<Offer>?> get offerList;
  void onTapAdd(int offerId, oldCount);
  void onTapRemove(int offerId, oldCount);
}

CartPageWidgetModel defaultCartPageWidgetModelFactory(BuildContext context) {
  final model = context.read<CartPageModel>();
  return CartPageWidgetModel(model);
}

class CartPageWidgetModel extends WidgetModel<CartPageWidget, CartPageModel> with ThemeProvider
    implements ICartPageWidgetModel {

  CartPageWidgetModel(CartPageModel model) : super(model);

  @override
  ValueListenable<List<Offer>?> get offerList => model.offerList;

  @override
  void onTapAdd(int offerId, oldCount) {
    model.bulkAdd(offerId, oldCount+1);
  }

  @override
  void onTapRemove(int offerId, oldCount) {
    model.bulkAdd(offerId, oldCount-1);
  }


}
