import 'package:em_mobui/data/models/event/event_dto.dart';
import 'package:em_mobui/data/models/event_detail/event_detail_dto.dart';

abstract class IEventService {
  Future<List<EventDto>> getEvents();

  Future<List<EventDto>> getActonPersonal(int eventId, int actionId);

  Future<List<EventDto>> getEventPersonal(int eventId);

  Future<EventDetailDto> getEvent(int eventId);
}
