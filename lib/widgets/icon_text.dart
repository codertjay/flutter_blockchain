import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blockchain/utils/dimensions.dart';
import 'package:flutter_blockchain/widgets/small_text.dart';

import '../utils/colors.dart';
import 'app_icons.dart';

class IconText extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onTap;

  IconText(
      {Key? key, required this.text, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppIcon(
          onTap: () => onTap,
          color: AppColors.yellowColor,
          icon: icon,
          size: Dimensions.iconSize35,
        ),
        SmallText(text: text)
      ],
    );
  }
}
