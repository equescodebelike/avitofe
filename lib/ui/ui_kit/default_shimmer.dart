import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class DefaultShimmer extends StatelessWidget {
  const DefaultShimmer({
    Key? key,
    this.width = 100,
    this.height = 100,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      duration: const Duration(seconds: 2),
      interval: const Duration(seconds: 2),
      color: Colors.white,
      colorOpacity: 1,
      direction: const ShimmerDirection.fromLTRB(),
      child: Container(
        width: width,
        height: height,
        color: Theme.of(context).primaryColor.withOpacity(0.1),
      ),
    );
  }
}