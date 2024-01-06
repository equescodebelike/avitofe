import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:em_mobui/app_starter/app_components.dart';
import 'package:em_mobui/data/models/event/event_dto.dart';
import 'package:flutter/material.dart';
import 'main_screen_model.dart';
import 'main_screen_widget.dart';

abstract interface class IMainScreenWidgetModel implements IWidgetModel {
  // EntityStateNotifier<List<EventDto>> get eventList;
  // void onTapCard(int id, EventDto? event);
  // void onTapCalendar(int id);
  // void toAddEvent();
  // void refreshList();
  ThemeData get theme;
}

MainScreenWidgetModel defaultMainScreenWidgetModelFactory(
    BuildContext context) {
  return MainScreenWidgetModel(
      MainScreenModel(AppComponents().eventService));
}

class MainScreenWidgetModel
    extends WidgetModel<MainScreenWidget, MainScreenModel>
    implements IMainScreenWidgetModel {
  MainScreenWidgetModel(MainScreenModel model) : super(model);

  @override
  void onTap(int id) {
    // TODO: implement onTap
  }

  @override
  EntityStateNotifier<List<EventDto>> get eventList => model.events;


  @override
  ThemeData get theme => Theme.of(context);

}
