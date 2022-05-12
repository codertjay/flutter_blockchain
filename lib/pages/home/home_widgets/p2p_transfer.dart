import 'package:flutter/material.dart';

import '../../../utils/dimensions.dart';
import '../../../widgets/app_icons.dart';
import '../../../widgets/big_text.dart';
import '../../../widgets/small_text.dart';

class P2PTransfer extends StatelessWidget {
  final String smallText, bigText, image;

  const P2PTransfer({
    Key? key,
    required this.smallText,
    required this.bigText,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.height10,
        vertical: Dimensions.height10,
      ),
      height: Dimensions.screenHeight * 0.14,
      width: Dimensions.screenWidth * 0.45,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BigText(
            text: bigText,
            size: Dimensions.font20,

          ),
          SmallText(
            text: smallText,
            size: Dimensions.font16,
          ),
          SizedBox(
            height: Dimensions.height10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: Dimensions.screenHeight * 0.05,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  )),
              Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.white38.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(50)),
                child: AppIcon(
                  icon: Icons.east_outlined,
                  color: Colors.black54,
                  onTap: () {},
                  size: Dimensions.iconSize24,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
