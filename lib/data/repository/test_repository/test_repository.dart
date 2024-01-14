import 'package:test_project/data/api/service/test/test_service_interface.dart';
import 'package:test_project/domain/test/test.dart';

import 'mapper/test_mapper.dart';

class TestRepository{
  final ITestService _service;

  TestRepository(this._service);

  Future<List<Test>> getAll() => _service.getTest().then((value) => value.map(mapTest).toList());
}