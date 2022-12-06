import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_place_flutter_app/screens/home/home_screen.dart';
import 'package:market_place_flutter_app/utils/app_styles.dart';

class MainHomeHolderScreen extends StatefulWidget {
  const MainHomeHolderScreen({super.key});

  @override
  State<MainHomeHolderScreen> createState() => _MainHomeHolderScreenState();
}

class _MainHomeHolderScreenState extends State<MainHomeHolderScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeScreen(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        height: 64,
        child: CustomNavigationBar(
          isFloating: true,
          borderRadius: const Radius.circular(40),
          selectedColor: kWhite,
          unSelectedColor: kGrey,
          backgroundColor: kBrown,
          strokeColor: Colors.transparent,
          scaleFactor: 0.1,
          iconSize: 40,
          items: [
            CustomNavigationBarItem(
              icon: _currentIndex == 0
                  ? SvgPicture.asset('assets/home_icon_selected.svg')
                  : SvgPicture.asset('assets/home_icon_unselected.svg'),
            ),
            CustomNavigationBarItem(
              icon: _currentIndex == 1
                  ? SvgPicture.asset('assets/cart_icon_selected.svg')
                  : SvgPicture.asset('assets/cart_icon_unselected.svg'),
            ),
            CustomNavigationBarItem(
              icon: _currentIndex == 2
                  ? SvgPicture.asset('assets/favorite_icon_selected.svg')
                  : SvgPicture.asset('assets/favorite_icon_unselected.svg'),
            ),
            CustomNavigationBarItem(
              icon: _currentIndex == 3
                  ? SvgPicture.asset('assets/account_icon_selected.svg')
                  : SvgPicture.asset('assets/account_icon_unselected.svg'),
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
