import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Function onTap;
  final Color color;

  AppIcon(
      {Key? key,
      required this.icon,
      required this.size,
      required this.onTap,
      this.color = AppColors.iconColor1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Icon(
        icon,
        color: color,
        size: size,
      ),
    );
  }
}
