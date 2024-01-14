import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:test_project/domain/offer/offer.dart';
import 'package:test_project/res/theme/base_const.dart';
import 'package:test_project/ui/ui_kit/default_icon.dart';
import 'cart_page_wm.dart';
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
      appBar: AppBar(title: Text(wm.localizations.basket, style: titleTextStyle,),),
      body: ValueListenableBuilder<List<Offer>?>(valueListenable: wm.offerList,
          builder: (BuildContext context, List<Offer>? value, Widget? child) {
            if (value == null) {
              return const Center(child: CircularProgressIndicator(),);
            }
            return ListView.separated(itemBuilder: (context, index) {
              final offer = value[index];
              OfferCard(offer: offer, onTapAdd: wm.onTapAdd,onTapRemove: wm.onTapRemove, cardTestStyle: cardTestStyle);
            },
                separatorBuilder: (_, __) =>
                const SizedBox(height: baseSeparator,),
                itemCount: value.length);
          }
      ),
    );
  }
}

class OfferCard extends StatelessWidget {
  final Offer offer;
  final void Function(int, int) onTapAdd;
  final void Function(int, int) onTapRemove;

  final TextStyle? cardTestStyle;

  const OfferCard({
    super.key,
    required this.offer,
    required this.onTapAdd,
    required this.onTapRemove,
    this.cardTestStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(child: Column(
      children: [
        Row(
          children: [
            Text('${offer.id}', style: cardTestStyle,),
            const Spacer(),
            Text(offer.message, style: cardTestStyle,),
          ],
        ),
        Row(children: [
          Spacer(),
          FilledButton(onPressed: ()=>onTapRemove(offer.id, offer.count), child: const Icon(DefaultIcon.remove)),
          Container(height: 20, width: 20, color: Colors.white, child: Text('${offer.count}'),),
          FilledButton(onPressed: ()=>onTapAdd(offer.id, offer.count), child: const Icon(DefaultIcon.add)),
        ],)
      ],
    ),);
  }
}

