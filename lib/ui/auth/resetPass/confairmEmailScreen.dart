import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/auth/compnent/CustomField2.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';

import 'newPasswordScreen.dart';

class ConfirmEmailScreen extends StatefulWidget {
  @override
  _ConfirmEmailScreenState createState() => _ConfirmEmailScreenState();
}

class _ConfirmEmailScreenState extends State<ConfirmEmailScreen> {
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
              height: h * 0.6,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/image/forgetpassword.png',
                    width: w,
                    // height: SizeConfig.screenHeight * 0.7,
                    fit: BoxFit.fill,
                  ),

                  // Container(
                  //   child: Image.asset(
                  //     "assets/image/start.png",
                  //     fit: BoxFit.fill,
                  //     width: double.infinity,
                  //   ),
                  // ),
                  // Container(
                  //   child: Image.asset(
                  //     "assets/image/start.png",
                  //     fit: BoxFit.fill,
                  //     width: double.infinity,
                  //     color: Colors.black.withOpacity(0.2),
                  //   ),
                  // ),
                  Center(
                    child: Image.asset(
                      "assets/image/logo_image.png",
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      AppLocalizations.of(context).translate('forget password?'),
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
                    title: AppLocalizations.of(context).translate('email'),
                    hintText: "exa@gmail.com",
                    headIcon: "assets/icons/Message.png",
                    // iconPath: "assets/svg/email.svg",
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  appButton(
                    buttonColor: primaryColor,
                    context: context,
                    text: AppLocalizations.of(context).translate('confirm'),
                    textColor: Colors.white,
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ResetPassScreen(),
                    )),
                  ),
                  SizedBox(
                    height: 50,
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
