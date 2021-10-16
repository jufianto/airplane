import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BonusSaldo extends StatelessWidget {
  const BonusSaldo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        height: 211,
        width: 300,
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/card.png"),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: kPrimaryColor.withOpacity(0.5),
              offset: Offset(20, 10),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: whiteTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        "Jufianto Henri",
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: defaultMargin,
                      width: defaultMargin,
                      margin: EdgeInsets.only(right: 6),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/logo.png"),
                        ),
                      ),
                    ),
                    Text(
                      "Pay",
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 41,
            ),
            Text(
              "Balance",
              style: whiteTextStyle.copyWith(fontSize: 14, fontWeight: light),
            ),
            Text(
              "IDR 280.000.000",
              style: whiteTextStyle.copyWith(
                fontSize: 26,
                fontWeight: medium,
              ),
            )
          ],
        ),
      );
    }

    Widget diskonInfo() {
      return Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Text(
                "Big Bonus 🎉",
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 32,
                ),
              ),
              Container(
                height: 56,
                width: 250,
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "We give you early credit so that you can buy a flight ticket",
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          )
        ],
      );
    }

    Widget buttonSubmit() {
      return CustomButton(
        titles: "Start Fly Now ",
        routes: '/main',
        width: 220,
        margin: EdgeInsets.only(top: 50),
      );
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            diskonInfo(),
            buttonSubmit(),
          ],
        ),
      ),
    );
  }
}
