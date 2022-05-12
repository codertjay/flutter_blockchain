import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/dimensions.dart';
import '../../../widgets/app_icons.dart';

class HomeTextBuilder extends StatelessWidget {

  final int itemCount;
  final PageController pageTextController;

  HomeTextBuilder({Key? key, required this.itemCount, required this.pageTextController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppIcon(
              icon: Icons.campaign_sharp,
              size: Dimensions.iconSize24,
              onTap: () {},
            ),
            Container(
              height: 50,
              padding: EdgeInsets.only(top: Dimensions.height20),
              width: Dimensions.screenWidth * 0.7,
              child: PageView.builder(
                  itemCount: itemCount,
                  controller: pageTextController,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (index, context) {
                    return Container(
                        child: Text(
                          "Binance will support TERAUSD (USDT)",
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              fontSize: Dimensions.font20),
                        ));
                  }),
            ),
            AppIcon(
              icon: Icons.format_list_bulleted,
              size: Dimensions.iconSize24,
              onTap: () {},
            ),
          ],
        ));
  }
}
