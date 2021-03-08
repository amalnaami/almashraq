import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/auth/compnent/CustomField2.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'resetPass/confairmEmailScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              height: h * 0.5,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/image/login.png',
                    width: w,
                    // height: SizeConfig.screenHeight * 0.7,
                    fit: BoxFit.fill,
                  ),

                  // Container(
                  //   child: Positioned(
                  //     child: Image.asset(
                  //       "assets/image/book-library.png",
                  //     ),
                  //     top: -100,
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
                  //     top: -100,
                  //     right: -150,
                  //     // bottom: 15,
                  //     left: -50,
                  //   ),
                  // ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: h * 0.1),
                      child: Image.asset(
                        "assets/image/Group.png",
                        height: 170,
                        width: 170,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      AppLocalizations.of(context).translate('sign in'),
                      textAlign: TextAlign.center,
                      style: boldStyle.copyWith(fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  CustomFeild2(
                    title: AppLocalizations.of(context).translate('user name'),
                    hintText: AppLocalizations.of(context).translate('example name'),
                    headIcon: "assets/icons/Profile.png",
                    // iconPath: "assets/svg/Profile.svg",
                  ),
                  CustomFeild2(
                    title: AppLocalizations.of(context).translate('password'),
                    hintText: "*********",
                    headIcon: "assets/icons/Lock.png",
                    // iconPath: "assets/svg/Lock.svg",
                    visab: true,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: InkWell(
                      onTap: () =>
                          Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ConfirmEmailScreen(),
                      )),
                      child: Text(
                        AppLocalizations.of(context).translate("forget password?"),
                        style: regStyle.copyWith(
                          color: Color(0xFFD4D4D4),
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  appButton(
                    buttonColor: primaryColor,
                    context: context,
                    text: AppLocalizations.of(context).translate('sign in'),
                    onTap: () {},
                    textColor: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      AppLocalizations.of(context).translate("or sign in with"),
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
                        child: Image.asset('assets/image/google_icon.png'),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: seconderyColor,
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 50,
                        height: 50,
                        child: Image.asset('assets/image/facebook_icon.png'),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: seconderyColor,
                        ),
                      ),
                    ],
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
