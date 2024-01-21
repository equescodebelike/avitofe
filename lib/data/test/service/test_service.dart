import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_project/data/test/dto/test_dto.dart';

import 'test_service_interface.dart';
import 'test_url.dart';


part 'test_service.g.dart';

@RestApi()
abstract class TestService implements ITestService {
  factory TestService(Dio dio, {String baseUrl}) = _TestService;

  @override
  @GET(TestUrl.getAll)
  Future<List<TestDto>> getTest();
}
