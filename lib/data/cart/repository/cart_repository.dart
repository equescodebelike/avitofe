import 'package:test_project/domain/offer/offer.dart';


import '../service/service.dart';
import 'cart_repository_interface.dart';
import 'mapper/cart_mapper.dart';

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