import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({super.key, this.onTap, required this.text});

  final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 387,
      child: FilledButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(const RoundedRectangleBorder())),
        onPressed: onTap,
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
