import 'package:elementary/elementary.dart';
import 'package:em_mobui/data/models/profile/profile_dto/profile_dto.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'profile_screen_model.dart';
import 'profile_screen_widget.dart';

abstract interface class IProfileScreenWidgetModel implements IWidgetModel {
  BehaviorSubject<ProfileDto?> get profileStream;

}

ProfileScreenWidgetModel defaultProfileScreenWidgetModelFactory(BuildContext context) {
  return ProfileScreenWidgetModel(ProfileScreenModel());
}

class ProfileScreenWidgetModel extends WidgetModel<ProfileScreenWidget, ProfileScreenModel>
    implements IProfileScreenWidgetModel {

  ProfileScreenWidgetModel(ProfileScreenModel model) : super(model);

  @override
  BehaviorSubject<ProfileDto?> get profileStream => BehaviorSubject();
}
