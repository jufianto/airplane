import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

import 'custom_button_navigation_item.dart';

class CustomButtonNavigation extends StatelessWidget {
  const CustomButtonNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: 24,
          right: 24,
          bottom: 30,
          top: 50,
        ),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultBorderRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/bonus');
              },
              child: CustomButtonNavigationItem(
                imgUrl: 'assets/menu1.png',
                isActive: true,
              ),
            ),
            CustomButtonNavigationItem(
              imgUrl: 'assets/menu2.png',
            ),
            CustomButtonNavigationItem(
              imgUrl: 'assets/menu3.png',
            ),
            CustomButtonNavigationItem(
              imgUrl: 'assets/menu4.png',
            )
          ],
        ),
      ),
    );
  }
}
