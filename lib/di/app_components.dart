
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:test_project/data/cart/cart_data.dart';
import 'package:test_project/data/test/test_data.dart';
import 'package:test_project/data/token/token_data.dart';
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
