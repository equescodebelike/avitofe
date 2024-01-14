import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'chat_screen_model.dart';
import 'chat_screen_widget.dart';

abstract interface class IChatScreenWidgetModel implements IWidgetModel {}

ChatScreenWidgetModel defaultChatScreenWidgetModelFactory(
    BuildContext context) {
  return ChatScreenWidgetModel(
    ChatScreenModel(),
  );
}

// TODO: cover with documentation
/// Default widget model for ChatScreenWidget
class ChatScreenWidgetModel
    extends WidgetModel<ChatScreenWidget, ChatScreenModel>
    implements IChatScreenWidgetModel {
  ChatScreenWidgetModel(ChatScreenModel model) : super(model);
}
