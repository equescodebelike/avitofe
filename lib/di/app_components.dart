
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:test_project/data/api/interceptors/jwt_interceptor.dart';
import 'package:test_project/data/api/service/cart/cart_service_interface.dart';
import 'package:test_project/data/api/service/cart/mock/cart_service_mock.dart';
import 'package:test_project/data/api/service/test/mock/test_service_mock.dart';
import 'package:test_project/data/api/service/test/test_service_interface.dart';
import 'package:test_project/data/manager/cart/cart_manager.dart';
import 'package:test_project/data/manager/cart/cart_manager_interface.dart';
import 'package:test_project/data/repository/cart_repository/cart_repository.dart';
import 'package:test_project/data/repository/cart_repository/cart_repository_interface.dart';
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
  late final ICartService _cartService = MockCartService();

  //repository
  late final TokenRepository tokenRepository = TokenRepository();
  late final TestRepository testRepository = TestRepository(_testService);
  late final ICartRepository cartRepository = CartRepository(_cartService);

  //manager
  late final ICartManager cartManager = CartManager(cartRepository);

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

    cartManager.init();

  }
  Future<void> dispose() async {
    cartManager.dispose();
  }
}
