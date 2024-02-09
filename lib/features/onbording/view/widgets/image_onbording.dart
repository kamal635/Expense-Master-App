import 'package:expense_master/core/Strings/app_image.dart';
import 'package:flutter/material.dart';

class ImageOnBordingView extends StatelessWidget {
  const ImageOnBordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImage.onBording,
    );
  }
}
