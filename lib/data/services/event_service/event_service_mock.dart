
import 'package:em_mobui/data/mapper/eventMapper.dart';
import 'package:em_mobui/data/models/action_dto/action_dto.dart';
import 'package:em_mobui/data/models/event_detail/event_detail_dto.dart';
import 'package:mockito/mockito.dart';

import '../../models/event/event_dto.dart';
import 'event_service_interfase.dart';

class MockEventService extends Mock implements IEventService {

  final List<EventDto> _events = [];
  List<EventDto> _initList(){
    final eventsList = <EventDto>[];
        for (int i=0; i<15; i++){
          _events.add(EventDto(id: i, idUser: 1, name: "Event${i+1}", dateOfEvent: DateTime.now(), city: 'Воронеж'));
        }
        return eventsList;
  }
  List<ActionDto> actions = [
    ActionDto(
      id: 1,
      idEvent: 101,
      name: 'Action 1 Action 1 Action 1 Action 1 Action 1 Action 1 Action 1 Action 1 Action 1 Action 1 Action 1 Action 1 Action 1 Action 1 Action 1 Action 1 Action 1 Action 1 Action 1',
      cost: 50,
      eventDayNumber: 1,
      begginingTime: DateTime.now(),
      duration: '2 hours',
      place: 'Place A',
      totalNumberEmployee: 10,
      hiredNumberEmployee: 5,
    ),
    ActionDto(
      id: 2,
      idEvent: 102,
      name: 'Action 2',
      cost: 30,
      eventDayNumber: 2,
      begginingTime: DateTime.now(),
      duration: '1 hour',
      place: 'Place B',
      totalNumberEmployee: 8,
      hiredNumberEmployee: 3,
    ),
    ActionDto(
      id: 3,
      idEvent: 103,
      name: 'Action 3',
      cost: 40,
      eventDayNumber: 3,
      begginingTime: DateTime.now(),
      duration: '3 hours',
      place: 'Place A',
      totalNumberEmployee: 12,
      hiredNumberEmployee: 6,
    ),
    ActionDto(
      id: 4,
      idEvent: 104,
      name: 'Action 4',
      cost: 20,
      eventDayNumber: 1,
      begginingTime: DateTime.now(),
      duration: '1.5 hours',
      place: 'Place C',
      totalNumberEmployee: 15,
      hiredNumberEmployee: 7,
    ),
    ActionDto(
      id: 5,
      idEvent: 105,
      name: 'Action 5',
      cost: 60,
      eventDayNumber: 2,
      begginingTime: DateTime.now(),
      duration: '2.5 hours',
      place: 'Place B',
      totalNumberEmployee: 10,
      hiredNumberEmployee: 4,
    ),
    ActionDto(
      id: 6,
      idEvent: 106,
      name: 'Action 6',
      cost: 25,
      eventDayNumber: 3,
      begginingTime: DateTime.now(),
      duration: '1 hour',
      place: 'Place C',
      totalNumberEmployee: 8,
      hiredNumberEmployee: 3,
    ),
    ActionDto(
      id: 7,
      idEvent: 107,
      name: 'Action 7',
      cost: 35,
      eventDayNumber: 1,
      begginingTime: DateTime.now(),
      duration: '2 hours',
      place: 'Place A',
      totalNumberEmployee: 12,
      hiredNumberEmployee: 5,
    ),
    ActionDto(
      id: 8,
      idEvent: 108,
      name: 'Action 8',
      cost: 45,
      eventDayNumber: 2,
      begginingTime: DateTime.now(),
      duration: '1.5 hours',
      place: 'Place B',
      totalNumberEmployee: 15,
      hiredNumberEmployee: 7,
    ),
    ActionDto(
      id: 9,
      idEvent: 109,
      name: 'Action 9',
      cost: 55,
      eventDayNumber: 3,
      begginingTime: DateTime.now(),
      duration: '3 hours',
      place: 'Place C',
      totalNumberEmployee: 10,
      hiredNumberEmployee: 4,
    ),
    ActionDto(
      id: 10,
      idEvent: 110,
      name: 'Action 10',
      cost: 30,
      eventDayNumber: 1,
      begginingTime: DateTime.now(),
      duration: '2.5 hours',
      place: 'Place A',
      totalNumberEmployee: 8,
      hiredNumberEmployee: 3,
    ),
  ];

  @override
  Future<List<EventDto>> getEvents() async {
    await Future.delayed( const Duration(seconds: 2));
    return _events;
  }

  @override
  Future<List<EventDto>> getActonPersonal(int eventId, int actionId) async {
    // Ваша логика обработки запроса
    await Future.delayed( const Duration(seconds: 2));
    return _events;
  }

  @override
  Future<List<EventDto>> getEventPersonal(int eventId) async {
    // Ваша логика обработки запроса
    await Future.delayed( const Duration(seconds: 2));
    return _events;
  }

  @override
  Future<EventDetailDto> getEvent(int eventId) async {
    // Ваша логика обработки запроса
    await Future.delayed( const Duration(seconds: 2));
    return mapDefaultToDetail(_events.where((element) => eventId==element.id).first, actionList: actions);
  }

  // Простая логика для добавления событий
  void addEvent(EventDto event) {
    _events.add(event);
  }

  MockEventService(){
    _events.addAll(_initList());
  }
}