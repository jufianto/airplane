import 'dart:async';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/get-started');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/logo.png')),
                ),
              ),
              Text(
                'AIRPLANE',
                style: whiteTextStyle.copyWith(
                    fontSize: 32, fontWeight: medium, letterSpacing: 10),
              ),
              Text(
                'Made by Jufi',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: light,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ));
  }
}
