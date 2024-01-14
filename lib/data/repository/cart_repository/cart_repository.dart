import 'package:test_project/data/api/service/cart/cart_service_interface.dart';
import 'package:test_project/data/repository/cart_repository/cart_repository_interface.dart';
import 'package:test_project/domain/offer/offer.dart';

import 'cart/cart_mapper.dart';

class CartRepository implements ICartRepository{
  final ICartService _cartService;


  CartRepository(this._cartService);


  @override
  Future<List<Offer>> bulkAdd(int offerId, count ) async{
    return _cartService.bulkAdd(offerId, count).then((value)=> value.map(mapCart).toList());
  }

  @override
  Future<List<Offer>> checkout() {
    return _cartService.checkout().then((value)=> value.map(mapCart).toList());
  }

}