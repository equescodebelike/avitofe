import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/domain/test/test.dart';
import 'package:test_project/extensions/snack_bar.dart';
import 'package:test_project/navigation/app_router.dart';
import 'package:test_project/utils/theme_extension.dart';
import 'test_page_model.dart';
import 'test_page_widget.dart';

abstract interface class ITestPageWidgetModel
    implements IWidgetModel, IThemeProvider {
  ValueNotifier<EntityState<List<Test>>> get testState;
  void openChat();
}

TestPageWidgetModel defaultTestPageWidgetModelFactory(BuildContext context) {
  final model = context.read<TestPageModel>();
  return TestPageWidgetModel(model);
}

class TestPageWidgetModel extends WidgetModel<TestPageWidget, TestPageModel>
    with ThemeProvider
    implements ITestPageWidgetModel {
  final EntityStateNotifier<List<Test>> _testState = EntityStateNotifier();

  TestPageWidgetModel(TestPageModel model) : super(model);

  @override
  ValueNotifier<EntityState<List<Test>>> get testState => _testState;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _loadTestList();
  }

  @override
  void didUpdateWidget(TestPageWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    super.dispose();
    _testState.dispose();
  }

  //TODO: UPD изучу про обработку ошибок, но уже есть хэндлер при ините модели в
  // AppDependency и utils его возможно использовать для кастомной логике как в случае
  // со снекбаром
  @override
  void onErrorHandle(Object error, {StackTrace? stackTrace}) {
    super.onErrorHandle(error);
    if (error is DioException &&
        (error.type == DioExceptionType.connectionTimeout ||
            error.type == DioExceptionType.receiveTimeout)) {
      context.showSnackBar(localizations.connectionTrouble);
    }
  }

  Future<void> _loadTestList() async {
    final previousData = _testState.value.data;
    _testState.loading(previousData);
    try {
      final res = await model.loadTestList();
      _testState.content(res);
    } on Exception catch (e) {
      _testState.error(e, previousData);
    }
  }

  @override
  void openChat() {
    context.router.push(ChatRouteWidget());
  }
}
