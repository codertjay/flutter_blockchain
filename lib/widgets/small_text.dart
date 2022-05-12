import 'package:flutter/material.dart';
import 'package:flutter_blockchain/utils/colors.dart';

class SmallText extends StatelessWidget {
  final String text;
  Color color;
  double size;
  double height;

  SmallText(
      {Key? key,
        this.size = 16,
        required this.text,
        this.height = 1.2,
        this.color =  AppColors.iconColor1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          height: height,
          color: color,
          fontFamily: 'Roboto'),
    );
  }
}
