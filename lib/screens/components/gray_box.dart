import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class GrayBox extends StatelessWidget {
  const GrayBox({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black26,
      highlightColor: Colors.black12,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
