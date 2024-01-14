import 'package:test_project/data/api/service/basket/basket_service_interface.dart';
import 'package:test_project/data/repository/basket_repository/basket_repository_interface.dart';
import 'package:test_project/domain/offer/offer.dart';

import 'mapper/basket_mapper.dart';

class BasketRepository implements IBasketRepository{
  final IBasketService _basketService;


  BasketRepository(this._basketService);


  @override
  Future<List<Offer>> bulkAdd(int offerId, count ) async{
    return _basketService.bulkAdd(offerId, count).then((value)=> value.map(mapBasket).toList());
  }

  @override
  Future<List<Offer>> checkout() {
    return _basketService.checkout().then((value)=> value.map(mapBasket).toList());
  }

}