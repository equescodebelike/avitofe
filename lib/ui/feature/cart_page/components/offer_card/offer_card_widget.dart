import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:test_project/domain/cart/models/offer/offer.dart';
import 'package:test_project/extensions/money_extension.dart';
import 'package:test_project/res/theme/base_const.dart';
import 'package:test_project/ui/ui_kit/change_count_widget.dart';
import 'package:test_project/ui/ui_kit/network_image_widget.dart';
import 'offer_card_wm.dart';

class OfferCardWidget extends ElementaryWidget<IOfferCardWidgetModel> {
  final Offer offer;

  const OfferCardWidget(
    this.offer, {
    Key? key,
    WidgetModelFactory wmFactory = defaultOfferCardWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IOfferCardWidgetModel wm) {
    const imageSize = 100.0;
    //themes
    final TextStyle? cardTextStyle = wm.textTheme.bodyMedium;
    final TextStyle? priceTextStyle = wm.textTheme.bodyLarge;
    final TextStyle? oldPriceTextStyle = cardTextStyle?.copyWith(
      decoration: TextDecoration.lineThrough,
      color: wm.theme.hintColor,
    );

    return Card(
      child: Container(
        height: basePadding * 2 + imageSize,
        padding: const EdgeInsets.all(basePadding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            NetworkImageWidget(
              url: offer.imageUrl ?? '',
              width: imageSize,
              height: imageSize,
            ),
            const SizedBox(width: basePadding),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    offer.name,
                    style: cardTextStyle,
                  ),
                  /*Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        offer.name,
                        style: cardTextStyle,
                      ),
                      const Spacer(),
                      IconButton(
                        alignment: Alignment.topRight,
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: const Icon(DefaultIcon.favorite),
                      ),
                      IconButton(
                        alignment: Alignment.topRight,
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: const Icon(DefaultIcon.delete),
                      ),
                    ],
                  ),*/
                  const Spacer(),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(offer.price.formatMoney(),
                              style: priceTextStyle),
                          if (offer.oldPrice != null)
                            Text(offer.oldPrice!.formatMoney(),
                                style: oldPriceTextStyle),
                        ],
                      ),
                      const Spacer(),
                      ValueListenableBuilder<int>(
                        valueListenable: wm.counterState,
                        builder: (context, count, _) {
                          return ChangeCountWidget(
                            onTapRemove: wm.onTapRemove,
                            onTapAdd: wm.onTapAdd,
                            onTapDelete: wm.onTapDelete,
                            count: count,
                            height: 32,
                            counterWidth: 32,
                          );
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
