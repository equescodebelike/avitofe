import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:test_project/domain/offer/offer.dart';
import 'package:test_project/res/theme/base_const.dart';
import 'package:test_project/ui/feature/cart_page/components/offer_card/offer_card_widget.dart';
import 'package:test_project/ui/ui_kit/custom_filled_button.dart';
import 'package:test_project/ui/ui_kit/default_shimmer.dart';
import 'package:test_project/ui/ui_kit/theme_switch.dart';
import 'cart_page_wm.dart';

@RoutePage()
class CartPageWidget extends ElementaryWidget<ICartPageWidgetModel> {
  const CartPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCartPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICartPageWidgetModel wm) {
    final backgroundColor = wm.colorScheme.background;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          wm.localizations.cart,
        ),
        actions: const [
          ThemeSwitch(),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: EntityStateNotifierBuilder<List<Offer>>(
              listenableEntityState: wm.offerList,
              builder: (context, value) {
                if (value == null) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(basePadding),
                  itemBuilder: (context, index) {
                    final offer = value[index];
                    return OfferCardWidget(offer);
                  },
                  separatorBuilder: (_, __) => const SizedBox(
                    height: baseSeparator,
                  ),
                  itemCount: value.length,
                );
              },
              loadingBuilder: (context, value) {
                return ListView.separated(
                  itemBuilder: (BuildContext context, int index) =>
                      const DefaultShimmer(
                          width: double.infinity,
                          height: 100 + basePadding * 16),
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    height: baseSeparator,
                  ),
                  itemCount: 5,
                );
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: backgroundColor,
                // boxShadow: const [BoxShadow(offset: Offset(0, -2), blurRadius: 4)],
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      offset: const Offset(0, -4),
                      blurRadius: 4,
                      spreadRadius: 2),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('В корзине N оваров'),
                  SizedBox(height: 24),
                  CustomFilledButton(text: wm.localizations.createOrder)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
