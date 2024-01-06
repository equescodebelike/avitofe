import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:em_mobui/data/models/event/event_dto.dart';
import 'package:em_mobui/data/services/event_service/event_service_interfase.dart';

// TODO: cover with documentation
/// Default Elementary model for EventsScreen module
class MainScreenModel extends ElementaryModel {
  final EntityStateNotifier<List<EventDto>> events =
      EntityStateNotifier<List<EventDto>>();
  final IEventService _eventService;

  MainScreenModel(this._eventService);

  @override
  void init() {
    super.init();
    _loadData();
  }

  Future<void> _loadData() async {
    // final previousData = events.value.data;
    // events.loading(previousData);
    // try {
    //   final res = await _eventService.getEvents();
    //   events.content(res);
    // } on Exception catch(e){
    //   events.error(e);
    // }
  }

  @override
  void dispose() {
    events.dispose();
    super.dispose();
  }
  // Future<void> refreshContent() async {
  //   await _loadData();
  // }
}
