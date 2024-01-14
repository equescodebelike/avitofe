import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/data/manager/basket/basket_manager_interface.dart';
import 'package:test_project/data/repository/basket_repository/basket_repository.dart';
import 'package:test_project/data/repository/basket_repository/basket_repository_interface.dart';
import 'package:test_project/data/repository/test_repository/test_repository.dart';
import 'package:test_project/ui/feature/cart_page/cart_page_model.dart';
import 'package:test_project/ui/feature/test_page/test_page.dart';

import 'app_components.dart';

class AppDependency extends StatefulWidget {
  const AppDependency({
    Key? key,
    required this.app,
  }) : super(key: key);

  final Widget app;

  @override
  State<AppDependency> createState() => _AppDependencyState();
}

class _AppDependencyState extends State<AppDependency> {

  //models
  late final TestPageModel _testPageModel;
  late final CartPageModel _cartPageModel;

  @override
  void initState() {
    super.initState();

    final errorHandler = AppComponents().errorHandler;

    //todo add repository in AppComponents
    final TestRepository testRepository = AppComponents().testRepository;
    final IBasketManager basketManager = AppComponents().basketManager;

    //todo init models
    _testPageModel = TestPageModel(errorHandler, testRepository);
    _cartPageModel = CartPageModel(errorHandler, basketManager);
  }
  @override
  void dispose() {
    _testPageModel.dispose();
    _cartPageModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ValueNotifier(ThemeMode.light),
        ),
        //todo provide models
        Provider(create: (context)=>_testPageModel),
        Provider(create: (context)=>_cartPageModel),
      ],
      child: widget.app,
    );
  }
}
