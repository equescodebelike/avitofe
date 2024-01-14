import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_project/data/dto/offer/offer_dto.dart';

import 'basket_service_interface.dart';
import 'basket_url.dart';


part 'basket_service.g.dart';

@RestApi()
abstract class BasketService implements IBasketService {
  factory BasketService(Dio dio, {String baseUrl}) = _BasketService;
  @override
  @GET(BasketUrl.checkout)
  Future<List<OfferDto>> checkout();

  @override
  @GET(BasketUrl.bulkAdd)
  Future<List<OfferDto>> bulkAdd(int offerId, int count);
}
