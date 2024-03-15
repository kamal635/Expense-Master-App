import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    this.iconSize,
    required this.icon,
    required this.onPressed,
    this.colorIcon,
  });
  final double? iconSize;
  final IconData icon;
  final Color? colorIcon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: iconSize ?? 15,
      onPressed: onPressed,
      alignment: Alignment.center,
      icon: Icon(
        icon,
        color: colorIcon,
      ),
    );
  }
}
