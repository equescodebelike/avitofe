import 'package:dio/dio.dart';
import 'package:em_mobui/data/interceptors/jwt_interceptor.dart';
import 'package:em_mobui/data/services/event_service/event_service_interfase.dart';
import 'package:em_mobui/data/services/event_service/event_service_mock.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../data/repository/token_repository.dart';

const timeout = Duration(seconds: 30);

class AppComponents {
  static final AppComponents _instance = AppComponents._internal();

  factory AppComponents() => _instance;

  AppComponents._internal();

  final Dio dio = Dio();
  final TokenRepository tokenRepository = TokenRepository();
  //late final EventService eventService = EventService(dio);
  late final IEventService eventService = MockEventService();

  Future<void> init() async {
    dio.options
    ///Не забываем позже про url
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
  }
}
