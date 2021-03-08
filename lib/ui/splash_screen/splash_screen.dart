import 'dart:async';

import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/ui/language_page/language_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var isLargeScreen = false;

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => LanguageScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    if (MediaQuery.of(context).size.height > 700) {
      isLargeScreen = true;
    } else {
      isLargeScreen = false;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: SizeConfig.screenHeight,
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        SizedBox(height: SizeConfig.screenHeight * 0.15),
                        Image.asset(
                          'assets/image/lib_image.png',
                          height: SizeConfig.screenHeight * 0.3,
                        ),
                      ],
                    )),
                Positioned(
                  bottom: 0,
                  child: Image.asset(
                    'assets/image/splash.png',
                    fit: BoxFit.fill,
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenHeight * 0.5,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
