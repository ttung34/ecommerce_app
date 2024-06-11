import 'package:flutter/material.dart';

class ImagePlaceholder extends StatelessWidget {
  
  const ImagePlaceholder({
    super.key,
    required this.imagePath,
    });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      fit: BoxFit.cover,
    );
  }
}