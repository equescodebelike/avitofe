import 'package:decimal/decimal.dart';
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
    _offers.removeWhere((element) => element.count<=0);
    await Future.delayed(const Duration(seconds: 2));
    return _offers;
  }

  MockCartService() {
    _offers = _initList();
  }

  List<OfferDto> _initList() {
    return List.generate(
      20,
      (index) => OfferDto(
        id: index,
        name: "message $index",
        count: index,
        price: Decimal.parse('1499.99'),
        oldPrice: Decimal.parse('1499.99'),
        imageUrl:
            index%2==1 ?'https://daily-motor.ru/wp-content/uploads/2021/12/650x650-1536x865.jpg' : '',
      ),
    );
  }

  void _bulkAdd(int offerId, int count) {
    if (count <= 0) {
      _offers.removeWhere((element) => element.id == offerId);
      return;
    }

    final offerIndex =
        _offers.indexWhere((element) => element.id == offerId);

    if (offerIndex == -1) {
      // Элемент с offerId не найден, добавляем новый
      _offers.add(OfferDto(
        id: offerId,
        count: count,
        name: "message $offerId",
        price: Decimal.parse('1499.99'),
        oldPrice: Decimal.parse('1499.99'),
        imageUrl:
            'https://daily-motor.ru/wp-content/uploads/2021/12/650x650-1536x865.jpg',
      ));
    } else {
      // Элемент с offerId найден, обновляем count
      _offers[offerIndex] = _offers[offerIndex].copyWith(count: count);
    }

    _offers.removeWhere((element) => element.count<=0);
  }
}
