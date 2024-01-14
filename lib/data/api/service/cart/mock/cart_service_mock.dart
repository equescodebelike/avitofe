import 'package:test_project/data/dto/offer/offer_dto.dart';

import '../cart_service_interface.dart';

class MockCartService implements ICartService {
  late final List<OfferDto> _offers;

  @override
  Future<List<OfferDto>> bulkAdd(int offerId, int count) async {
    _bulkAdd(offerId, count);
    await Future.delayed(const Duration(seconds: 2));
    return _offers;
  }

  @override
  Future<List<OfferDto>> checkout() async {
    await Future.delayed(const Duration(seconds: 2));
    return _offers;
  }

  MockCartService(){
    _offers = _initList();

  }
  List<OfferDto>_initList(){
    return List.generate(
      5,
          (index) => OfferDto(offerId: index, message: "message $index", count: index),
    );
  }
  void _bulkAdd(int offerId, int count){
    if(count <0){
      _offers.removeWhere((element) => element.offerId == offerId);
      return;
    }
    final offer = _offers.where((element) => (element.offerId == offerId)).map((e) => e.copyWith(count: count)).firstOrNull;
    if (offer == null){
      _offers.add(OfferDto(offerId: offerId, count: count, message: "message $offerId"));
      return;
    }
    return;
  }


}
