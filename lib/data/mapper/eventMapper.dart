import 'package:em_mobui/data/models/action_dto/action_dto.dart';
import 'package:em_mobui/data/models/event/event_dto.dart';
import 'package:em_mobui/data/models/event_detail/event_detail_dto.dart';

EventDetailDto mapDefaultToDetail(EventDto event, {List<ActionDto>? actionList}) {
  return EventDetailDto(
    id: event.id,
    idUser: event.idUser,
    name: event.name,
    city: event.city,
    isFinished: event.isFinished,
    totalCost: event.totalCost,
    dateOfEvent: event.dateOfEvent,
    totalNumberEmployee: event.totalNumberEmployee,
    hiredNumberEmployee: event.hiredNumberEmployee,
    actionDTO: actionList ?? [],
  );
}
EventDto mapDetailToDefault(EventDetailDto event) {
  return EventDto(
    id: event.id,
    idUser: event.idUser,
    name: event.name,
    city: event.city,
    isFinished: event.isFinished,
    totalCost: event.totalCost,
    dateOfEvent: event.dateOfEvent,
    totalNumberEmployee: event.totalNumberEmployee,
    hiredNumberEmployee: event.hiredNumberEmployee,
  );
}
