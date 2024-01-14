import 'package:test_project/data/dto/test/test_dto.dart';

abstract class ITestService{
  Future<List<TestDto>> getTest();
}