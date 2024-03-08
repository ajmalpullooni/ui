import 'package:flutter/material.dart';

class SociaButtons extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;
  const SociaButtons({
    super.key,
    required this.imagePath,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(
        imagePath,
        width: width,
        height: height,
      ),
    );
  }
}
