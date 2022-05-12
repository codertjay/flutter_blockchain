import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blockchain/pages/home/home_widgets/text_builder.dart';
import 'package:flutter_blockchain/pages/home/home_widgets/top_coin_price.dart';
import 'package:flutter_blockchain/utils/colors.dart';
import 'package:flutter_blockchain/utils/dimensions.dart';
import 'package:flutter_blockchain/widgets/app_icons.dart';
import 'package:flutter_blockchain/widgets/icon_text.dart';

import 'home_widgets/gainer_looser.dart';
import 'home_widgets/image_builder.dart';
import 'home_widgets/p2p_transfer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;
  int _itemCount = 5;
  late Timer _timer;
  PageController pageController = PageController(
    initialPage: 0,
    viewportFraction: 1,
  );

  PageController pageTextController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < _itemCount) {
        this.setState(() {
          _currentPage++;
        });
      } else {
        _currentPage = 0;
      }
      pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
      pageTextController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 40,
        titleSpacing: 2,
        elevation: 0,
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: ClipRect(
            child: Image.asset(
              "assets/images/logo.png",
              // fit: BoxFit.contain,
            ),
          ),
        ),
        title: TextField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.0),
                borderSide: BorderSide(color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.0),
                borderSide: BorderSide(color: Colors.white),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.0),
                borderSide: BorderSide(color: Colors.white),
              ),
              filled: true,
              prefixIcon: Icon(Icons.search, color: AppColors.iconColor1),
              hintStyle: TextStyle(color: Colors.grey[800]),
              hintText: "Search",
              fillColor: Colors.white70),
        ),
        actions: [
          AppIcon(
            onTap: () {},
            icon: Icons.qr_code_scanner,
            size: Dimensions.iconSize35,
          ),
          SizedBox(width: 10),
          AppIcon(
            onTap: () {},
            icon: Icons.headset_mic,
            size: Dimensions.iconSize35,
          ),
          SizedBox(width: 10),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Stack(
              children: [
                AppIcon(
                  onTap: () {},
                  icon: Icons.notifications,
                  size: Dimensions.iconSize35,
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        color: AppColors.yellowColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: Text('22'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          AppIcon(
            onTap: () {},
            icon: Icons.mail_outline,
            size: Dimensions.iconSize35,
          ),
        ],
      ),
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(color: Colors.white38),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 10),
              HomeImageBuilder(
                  pageController: pageController,
                  currentPage: _currentPage,
                  itemCount: _itemCount),
              HomeTextBuilder(
                  pageTextController: pageTextController,
                  itemCount: _itemCount),
              //grid icons
              _gridViewIcons(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  P2PTransfer(
                    image:
                        'https://block-builders.net/wp-content/uploads/2020/12/Binance-Card-678x381.png',
                    bigText: 'Deposit NGN',
                    smallText: 'Bank Transfer',
                  ),
                  P2PTransfer(
                    image:
                        'https://block-builders.net/wp-content/uploads/2020/12/Binance-Card-678x381.png',
                    bigText: 'P2P Trading',
                    smallText: 'Bank Transfer,PayPal Revolut and more',
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TopCoinPrice(
                      price: '391.8', percent: '-3.40%', coin: 'BNB/BUSD'),
                  TopCoinPrice(
                      price: '38,483.8', percent: '-3.16%', coin: 'BTC/BUSD'),
                  TopCoinPrice(
                      price: '2,802.52', percent: '-3.40%', coin: 'BNB/BUSD'),
                ],
              ),
              GainerLooserTab()
            ],
          ),
        ),
      )),
    );
  }

  Container _gridViewIcons() {
    return Container(
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      child: GridView.count(
        primary: false,
        crossAxisSpacing: 20,
        mainAxisSpacing: 0,
        crossAxisCount: 4,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          IconText(
            icon: Icons.mail_outline,
            onTap: () {},
            text: 'Deposit',
          ),
          IconText(
            icon: Icons.person_add_alt,
            onTap: () {},
            text: 'Deposit',
          ),
          IconText(
            icon: Icons.flight,
            onTap: () {},
            text: 'LaunchPad',
          ),
          IconText(
            icon: Icons.wifi_protected_setup,
            onTap: () {},
            text: 'Auto Invest',
          ),
          IconText(
            icon: Icons.wifi_protected_setup,
            onTap: () {},
            text: 'Deposit',
          ),
          IconText(
            icon: Icons.leaderboard_sharp,
            onTap: () {},
            text: 'Strategy Trading',
          ),
          IconText(
            icon: Icons.question_answer_sharp,
            onTap: () {},
            text: 'Chat Room',
          ),
          IconText(
            icon: Icons.more_sharp,
            onTap: () {},
            text: 'More',
          ),
        ],
      ),
    );
  }
}
