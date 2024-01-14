import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:test_project/domain/offer/offer.dart';
import 'package:test_project/res/theme/base_const.dart';
import 'package:test_project/ui/ui_kit/theme_switch.dart';
import 'cart_page_wm.dart';
import 'components/offer_card/offer_card.dart';

@RoutePage()
class CartPageWidget extends ElementaryWidget<ICartPageWidgetModel> {
  const CartPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCartPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICartPageWidgetModel wm) {
    final TextStyle? cardTestStyle = wm.textTheme.bodyLarge;
    final TextStyle? titleTextStyle = wm.textTheme.displayLarge;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          wm.localizations.cart,
          style: titleTextStyle,
        ),
        actions: const [
          ThemeSwitch(),
        ],
      ),
      body: ValueListenableBuilder<List<Offer>?>(
          valueListenable: wm.offerList,
          builder: (BuildContext context, List<Offer>? value, Widget? child) {
            if (value == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.separated(
                itemBuilder: (context, index) {
                  final offer = value[index];
                  return OfferCard(
                    offer: offer,
                    onTapAdd: ()=>wm.onTapAdd(offer.id, offer.count),
                    onTapRemove: ()=>wm.onTapRemove(offer.id, offer.count),
                    cardTestStyle: cardTestStyle,
                  );
                },
                separatorBuilder: (_, __) => const SizedBox(
                      height: baseSeparator,
                    ),
                itemCount: value.length);
          }),
    );
  }
}

