import 'package:flutter/material.dart';
import 'package:test_project/domain/offer/offer.dart';
import 'package:test_project/res/theme/base_const.dart';
import 'package:test_project/ui/ui_kit/default_icon.dart';

class OfferCard extends StatelessWidget {
  final Offer offer;
  final VoidCallback onTapAdd;
  final VoidCallback onTapRemove;

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
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(basePadding),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  '${offer.id}',
                  style: cardTestStyle,
                ),
                const Spacer(),
                Text(
                  offer.name,
                  style: cardTestStyle,
                ),
              ],
            ),
            Row(
              children: [
                const Spacer(),
                ChangeCountWidget(
                  onTapRemove: onTapRemove,
                  onTapAdd: onTapAdd,
                  count: offer.count,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ChangeCountWidget extends StatelessWidget {
  const ChangeCountWidget({
    super.key,
    required this.onTapRemove,
    required this.onTapAdd,
    required this.count,
  });

  final VoidCallback onTapRemove;
  final VoidCallback onTapAdd;
  final int count;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.background;
    return Row(
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: FilledButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                ),
              ),
              padding: MaterialStateProperty.all(EdgeInsets.zero),
            ),
            onPressed: onTapRemove,
            child: const Center(child: Icon(DefaultIcon.remove)),
          ),
        ),
        Container(
          height: 50,
          width: 50,
          color: color,
          alignment: Alignment.center,
          child: Text(
            '$count',
          ),
        ),
        SizedBox(
          height: 50,
          width: 50,
          child: FilledButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
              ),
              padding: MaterialStateProperty.all(EdgeInsets.zero),
            ),
            onPressed: onTapAdd,
            child: const Icon(DefaultIcon.add),
          ),
        ),
      ],
    );
  }
}
