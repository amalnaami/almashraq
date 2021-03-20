import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/auth/LoginScreen.dart';
import 'package:maktabeh_app/ui/auth/SignUpScreen/sign_up_screen.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/mainScreens/main_screen.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  var isLargeScreen = false;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    if (MediaQuery.of(context).size.height > 700) {
      isLargeScreen = true;
    } else {
      isLargeScreen = false;
    }
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: Container(),
          actions: [
            InkWell(
              onTap: () =>Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                  MainPage()), (Route<dynamic> route) => false),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.blockSizeHorizontal * 2),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                          MainPage()), (Route<dynamic> route) => false),
                      child: Text(
                        AppLocalizations.of(context).translate('skip login'),
                        style: boldStyle.copyWith(color: Colors.white),
                      ),
                    ),
                    AppLocalizations.of(context).locale.toLanguageTag() == "en"
                        ? Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.blockSizeHorizontal * 2),
                            child:
                                Image.asset('assets/image/arrowback_icon.png'),
                          )
                        : Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.blockSizeHorizontal * 2),
                            child: RotatedBox(
                                quarterTurns: 2,
                                child: Image.asset(
                                    'assets/image/arrowback_icon.png')),
                          ),
                  ],
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: SizeConfig.screenHeight,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/image/start.png',
                      width: SizeConfig.screenWidth,
                      height: SizeConfig.screenHeight * 0.65,
                      fit: BoxFit.fill,
                    ),
                    Column(
                      children: [
                        SizedBox(height: SizeConfig.screenHeight * 0.15),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                            'assets/image/logo_image.png',
                            height: isLargeScreen
                                ? SizeConfig.screenHeight * 0.3
                                : SizeConfig.screenHeight * 0.23,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      height: isLargeScreen
                          ? SizeConfig.screenHeight * 0.35
                          : SizeConfig.screenHeight * 0.4,
                      width: SizeConfig.screenWidth,
                      bottom: 0,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppLocalizations.of(context)
                                  .translate('Please sign in or register'),
                              style: boldStyle.copyWith(fontSize: 14),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: SizeConfig.blockSizeVertical * 3,
                                  bottom: SizeConfig.blockSizeVertical * 2),
                              child: appButton(
                                buttonColor: primaryColor,
                                context: context,
                                text: AppLocalizations.of(context)
                                    .translate('sign in'),
                                textColor: Colors.white,
                                onTap: () =>
                                    Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                )),
                              ),
                            ),
                            Container(
                              width: SizeConfig.screenWidth * 0.9,
                              height: SizeConfig.screenHeight * 0.06,
                              child: FlatButton(
                                  color: Colors.white,
                                  onPressed: () => Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => SignupScreen(),
                                      )),
                                  shape: RoundedRectangleBorder(
                                    side:
                                        BorderSide(width: 1, color: primaryColor),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Text(
                                      AppLocalizations.of(context)
                                          .translate('Register'),
                                      style: regStyle.copyWith(
                                          fontSize: 14, color: primaryColor))),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: SizeConfig.blockSizeVertical * 2),
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate('or sign in with'),
                                style: regStyle.copyWith(
                                    color: Color(0xFFD4D4D4),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset(
                                      'assets/image/facebook_icon.png'),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: seconderyColor,
                                  ),
                                ),
                                SizedBox(
                                    width: SizeConfig.blockSizeHorizontal * 2),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child:
                                      Image.asset('assets/image/google_icon.png'),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: seconderyColor,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
