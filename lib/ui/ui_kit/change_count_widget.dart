
import 'package:flutter/material.dart';
import 'package:test_project/ui/ui_kit/default_icon.dart';

class ChangeCountWidget extends StatelessWidget {
  const ChangeCountWidget({
    super.key,
    required this.onTapRemove,
    required this.onTapAdd,
    this.onTapDelete,
    required this.count,
    this.height = 50,
    this.counterWidth = 50,
  });

  final VoidCallback onTapRemove;
  final VoidCallback onTapAdd;
  final VoidCallback? onTapDelete;
  final int count;
  final double height;
  final double counterWidth;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.background;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: height,
          width: height,
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
            onPressed: count>1?onTapRemove:onTapDelete,
            child: Center(child: Icon((count <= 1 && onTapDelete!=null)?DefaultIcon.delete : DefaultIcon.remove)),
          ),
        ),
        Container(
          height: height,
          width: counterWidth,
          color: color,
          alignment: Alignment.center,
          child: Text(
            '$count',
          ),
        ),
        SizedBox(
          height: height,
          width: height,
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