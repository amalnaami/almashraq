import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'compnent/CustomField2.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: h * 0.35,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/image/signup.png',
                    width: w,
                    // height: SizeConfig.screenHeight * 0.7,
                    fit: BoxFit.fill,
                  ),

                  // Container(
                  //   child: Positioned(
                  //     child: Image.asset(
                  //       "assets/image/book-library.png",
                  //     ),
                  //     top: -h * 0.25,
                  //     right: -150,
                  //     left: -50,
                  //     // bottom: 5,
                  //   ),
                  // ),
                  // Container(
                  //   child: Positioned(
                  //     child: Image.asset(
                  //       "assets/image/book-library.png",
                  //       color: Colors.black.withOpacity(0.2),
                  //     ),
                  //     top: -h * 0.25,
                  //     right: -150,
                  //     left: -50,
                  //   ),
                  // ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: h * 0.05),
                      child: Image.asset(
                        "assets/image/logo_image.png",
                        height: 120,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                top: 0,
                start: 20,
                bottom: 20,
                end: 10,
              ),
              child: Column(
                children: [
                  Text(
                    AppLocalizations.of(context).translate('Register'),
                    textAlign: TextAlign.center,
                    style: boldStyle.copyWith(fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomFeild2(
                    hintText: AppLocalizations.of(context).translate('full name'),
                    iconPath: "assets/svg/Profile.svg",
                  ),
                  CustomFeild2(
                    hintText: AppLocalizations.of(context).translate('email'),
                    iconPath: "assets/svg/email.svg",
                  ),
                  CustomFeild2(
                    hintText: AppLocalizations.of(context).translate('user name'),
                    iconPath: "assets/svg/Profile.svg",
                  ),
                  CustomFeild2(
                    hintText: AppLocalizations.of(context).translate('phone number (optional)'),
                    iconPath: "assets/svg/mobile.svg",
                  ),
                  CustomFeild2(
                    visab: true,
                    hintText: AppLocalizations.of(context).translate('password'),
                    iconPath: "assets/svg/Lock.svg",
                  ),
                  CustomFeild2(
                    hintText: AppLocalizations.of(context).translate('gender'),
                    iconPath: "assets/svg/User.svg",
                  ),
                  CustomFeild2(
                    hintText: AppLocalizations.of(context).translate('country'),
                    iconPath: "assets/svg/Location.svg",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  appButton(
                    buttonColor: primaryColor,
                    context: context,
                    text: AppLocalizations.of(context).translate('Register'),
                    textColor: Colors.white,
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
