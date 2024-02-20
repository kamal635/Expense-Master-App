import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    this.iconSize,
    required this.icon,
    required this.onPressed,
  });
  final double? iconSize;
  final Widget icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 15,
      onPressed: onPressed,
      icon: icon,
    );
  }
}
