import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/new_destination.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headerPage() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Howdy, \nKezia Anne",
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "where to fly today",
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/pic.png"),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              DestonationCard(
                imgUrl: "assets/item_featured1.png",
                city: "Pekanbaru",
                title: "Sungai Siak",
              ),
              DestonationCard(
                imgUrl: "assets/item_featured1.png",
                city: "Pekanbaru",
                title: "Sungai Siak",
                rating: 4.0,
              ),
              DestonationCard(
                imgUrl: "assets/item_featured1.png",
                city: "Pekanbaru",
                title: "Sungai Siak",
              ),
              DestonationCard(
                imgUrl: "assets/item_featured1.png",
                city: "Pekanbaru",
                title: "Sungai Siak",
              ),
              DestonationCard(
                imgUrl: "assets/item_featured1.png",
                city: "Pekanbaru",
                title: "Sungai Siak",
              ),
              DestonationCard(
                imgUrl: "assets/item_featured1.png",
                city: "Pekanbaru",
                title: "Sungai Siak",
              ),
              DestonationCard(
                imgUrl: "assets/item_featured1.png",
                city: "Pekanbaru",
                title: "Sungai Siak",
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
          bottom: 140,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New This Year",
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            DestinationCard(),
            DestinationCard(),
            DestinationCard(),
            DestinationCard(),
            DestinationCard(),
            DestinationCard(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          headerPage(),
          popularDestination(),
          newDestination(),
        ],
      ),
    );
  }
}
