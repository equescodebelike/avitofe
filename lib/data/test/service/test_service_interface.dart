import 'package:test_project/data/test/dto/test_dto.dart';

abstract class ITestService{
  Future<List<TestDto>> getTest();
}