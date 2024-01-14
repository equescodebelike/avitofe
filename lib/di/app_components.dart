
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:test_project/data/api/interceptors/jwt_interceptor.dart';
import 'package:test_project/data/api/service/basket/basket_service_interface.dart';
import 'package:test_project/data/api/service/basket/mock/basket_service_mock.dart';
import 'package:test_project/data/api/service/test/mock/test_service_mock.dart';
import 'package:test_project/data/api/service/test/test_service_interface.dart';
import 'package:test_project/data/manager/basket/basket_manager.dart';
import 'package:test_project/data/manager/basket/basket_manager_interface.dart';
import 'package:test_project/data/repository/basket_repository/basket_repository.dart';
import 'package:test_project/data/repository/basket_repository/basket_repository_interface.dart';
import 'package:test_project/data/repository/test_repository/test_repository.dart';
import 'package:test_project/data/repository/token/token_repository.dart';
import 'package:test_project/utils/error_handler.dart';

const timeout = Duration(seconds: 30);

class AppComponents {
  static final AppComponents _instance = AppComponents._internal();

  factory AppComponents() => _instance;

  AppComponents._internal();

  final Dio dio = Dio();

  //errorHandler
  ErrorHandler errorHandler = DefaultErrorHandler();

  //service
  late final ITestService _testService = MockTestService();
  late final IBasketService _basketService = MockBasketService();

  //repository
  late final TokenRepository tokenRepository = TokenRepository();
  late final TestRepository testRepository = TestRepository(_testService);
  late final IBasketRepository basketRepository = BasketRepository(_basketService);

  //manager
  late final IBasketManager basketManager = BasketManager(basketRepository);

  Future<void> init() async {
    dio.options
      ..baseUrl = 'https://690a-94-25-60-188.ngrok-free.app/'
      ..connectTimeout = timeout
      ..receiveTimeout = timeout
      ..sendTimeout = timeout;
    dio.interceptors.add(PrettyDioLogger());

    await tokenRepository.initTokens();

    dio.interceptors.add(
      JWTInterceptor(
        repository: tokenRepository,
        dio: dio,
      ),
    );

    basketManager.init();

  }
  Future<void> dispose() async {
    basketManager.dispose();
  }
}
