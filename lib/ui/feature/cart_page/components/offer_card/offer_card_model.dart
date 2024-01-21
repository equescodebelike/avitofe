import 'package:elementary/elementary.dart';
import 'package:test_project/data/cart/cart_data.dart';

class OfferCardModel extends ElementaryModel {
  final ICartManager _cartManager;

  OfferCardModel(ErrorHandler errorHandler, this._cartManager) : super(errorHandler: errorHandler);

  void bulkAdd(int offerId, int newCount){
    _cartManager.bulkAdd(offerId, newCount);
  }
}
