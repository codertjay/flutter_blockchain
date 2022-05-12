import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blockchain/utils/dimensions.dart';
import 'package:flutter_blockchain/widgets/big_text.dart';
import 'package:flutter_blockchain/widgets/small_text.dart';


class TopCoinPrice extends StatelessWidget {
  final String coin, price, percent;

  const TopCoinPrice({
    Key? key,
    required this.coin,
    required this.price,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SmallText(
              text: coin,
              color: Colors.grey,
              size: Dimensions.font16,
            ),
            SizedBox(width: Dimensions.width10 * 0.5),
            SmallText(text: percent, color: Colors.red, size: Dimensions.font20)
          ],
        ),
        BigText(text: price, size: Dimensions.height30, color: Colors.red),
        SmallText(text: "\$$price")
      ],
    ));
  }
}
