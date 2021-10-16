import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class CustomButtonNavigationItem extends StatelessWidget {
  final String imgUrl;
  final bool isActive;

  const CustomButtonNavigationItem(
      {Key? key, required this.imgUrl, this.isActive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgUrl),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isActive ? kPrimaryColor : kTransparentColor,
            borderRadius: BorderRadius.circular(defaultBorderRadius),
          ),
        ),
      ],
    );
  }
}
