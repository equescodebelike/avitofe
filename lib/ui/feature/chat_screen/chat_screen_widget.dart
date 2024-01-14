import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'chat_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ChatScreen module
@RoutePage()
class ChatScreenWidget extends ElementaryWidget<IChatScreenWidgetModel> {
  const ChatScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultChatScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IChatScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Чат'),
      ),
    );
  }
}
