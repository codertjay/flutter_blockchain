import 'package:flutter/material.dart';

import '../../../utils/dimensions.dart';

class HomeImageBuilder extends StatelessWidget {
  final int itemCount;
  final int currentPage;
  final PageController pageController;

  const HomeImageBuilder(
      {Key? key,
      required this.itemCount,
      required this.currentPage,
      required this.pageController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: Dimensions.pageView,
              child: PageView.builder(
                  itemCount: itemCount,
                  controller: pageController,
                  itemBuilder: (index, context) {
                    return Container(
                      height: Dimensions.pageView,
                      width: Dimensions.screenWidth,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.redAccent,
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://public.bnbstatic.com/image/cms/blog/20210119/d2f7485c-364d-4950-a609-12a1c8dd82aa.png'),
                            fit: BoxFit.fill,
                          )),
                    );
                  }),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: Dimensions.screenWidth,
                height: Dimensions.pageViewTextContainer,
                padding: EdgeInsets.only(right: 30),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(''),
                    Text(
                      currentPage.toString() + "/5",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
