import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../dto/offer/offer_dto.dart';
import 'cart_service_interface.dart';
import 'cart_url.dart';


part 'cart_service.g.dart';

@RestApi()
abstract class CartService implements ICartService {
  factory CartService(Dio dio, {String baseUrl}) = _CartService;
  @override
  @GET(CartUrl.checkout)
  Future<List<OfferDto>> checkout();

  @override
  @GET(CartUrl.bulkAdd)
  Future<List<OfferDto>> bulkAdd(int offerId, int count);
}
