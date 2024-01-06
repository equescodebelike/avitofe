import 'package:dio/dio.dart';
import 'package:em_mobui/data/models/event/event_dto.dart';
import 'package:em_mobui/data/models/event_detail/event_detail_dto.dart';
import 'package:retrofit/retrofit.dart';

import 'event_service_interfase.dart';
import 'event_url.dart';

part 'event_service.g.dart';

@RestApi()
abstract class EventService implements IEventService{
  factory EventService(Dio dio, {String baseUrl}) = _EventService;

  @override
  @GET(EventUrl.events)
  Future<List<EventDto>> getEvents();

  @override
  @GET(EventUrl.actionPersonal)
  Future<List<EventDto>> getActonPersonal(
    @Path('eventID') int eventId,
    @Path('actionID') int actionId,
  );

  @override
  @GET(EventUrl.actionPersonal)
  Future<List<EventDto>> getEventPersonal(@Path('eventID') int eventId);

  @override
  @GET(EventUrl.event)
  Future<EventDetailDto> getEvent(@Path('eventID') int eventId);
}
