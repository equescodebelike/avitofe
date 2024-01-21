import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/data/cart/cart_data.dart';
import 'package:test_project/ui/feature/cart_page/cart_page_model.dart';
import 'package:test_project/ui/feature/cart_page/components/offer_card/offer_card_model.dart';
import 'package:test_project/ui/feature/chat_screen/chat_screen.dart';
import 'package:test_project/ui/feature/test_page/test_page.dart';

import 'package:test_project/data/test/test_data.dart';
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
  late final OfferCardModel _offerCardModel;
  late final ChatScreenModel _chatPageModel;

  @override
  void initState() {
    super.initState();

    final errorHandler = AppComponents().errorHandler;

    //TODO: add repository in AppComponents
    final TestRepository testRepository = AppComponents().testRepository;
    final ICartManager cartManager = AppComponents().cartManager;

    //TODO: init models
    _testPageModel = TestPageModel(errorHandler, testRepository);
    _cartPageModel = CartPageModel(errorHandler, cartManager);
    _offerCardModel = OfferCardModel(errorHandler, cartManager);
    _chatPageModel = ChatScreenModel(errorHandler);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ValueNotifier(ThemeMode.dark),
        ),
        //TODO: provide models
        Provider(create: (context) => _testPageModel),
        Provider(create: (context) => _cartPageModel),
        Provider(create: (context) => _offerCardModel),
        Provider(create: (context) => _chatPageModel),
      ],
      child: widget.app,
    );
  }
}
