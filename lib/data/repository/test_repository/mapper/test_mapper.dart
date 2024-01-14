import 'package:test_project/data/dto/test/test_dto.dart';
import 'package:test_project/domain/test/test.dart';

Test mapTest(TestDto dto) {
  return Test(
    id: dto.id,
    message: dto.message,
  );
}
