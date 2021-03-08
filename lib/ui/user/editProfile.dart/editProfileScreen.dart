import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/auth/compnent/CustomField2.dart';
import 'package:maktabeh_app/ui/auth/compnent/OptionalFeild.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';
import 'package:maktabeh_app/ui/user/editProfile.dart/editPassScreen.dart';

class EfitProfileScreen extends StatefulWidget {
  @override
  _EfitProfileScreenState createState() => _EfitProfileScreenState();
}

class _EfitProfileScreenState extends State<EfitProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(context, AppLocalizations.of(context).translate('edit profile')),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        children: [
          Center(
            child: Container(
              height: 130,
              width: 130,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Image.asset(
                      "assets/image/3.jpg",
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: CircleAvatar(
                      child: SvgPicture.asset(
                        "assets/icons/Plus.svg",
                        height: 18,
                        width: 18,
                      ),
                      radius: 18,
                      backgroundColor: primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 45,
          ),
          CustomFeild2(
            hintText: AppLocalizations.of(context).translate('user name'),
            iconPath: "assets/svg/Profile.svg",
          ),
          CustomFeild2(
            hintText: AppLocalizations.of(context).translate('email'),
            iconPath: "assets/svg/email.svg",
          ),
          CustomFeild2(
            hintText: AppLocalizations.of(context).translate('phone number (optional)'),
            iconPath: "assets/svg/mobile.svg",
          ),
          OptionalFeild(
            title: AppLocalizations.of(context).translate('gender'),
            onTap: () {},
            iconPath: "assets/icons/Iconly-Broken-2 User.png",
          ),
          OptionalFeild(
            title: AppLocalizations.of(context).translate('country'),
            onTap: () {},
            iconPath: "assets/icons/Iconly-Broken-Location.png",
          ),
          SizedBox(
            height: 20,
          ),
          appButton(
              buttonColor: primaryColor,
              context: context,
              text: AppLocalizations.of(context).translate('save changes'),
              textColor: Colors.white,
              onTap: () {
                CustomAlert().submitChangeData(
                  context: context,
                  onSubmite: () {},
                  title: AppLocalizations.of(context).translate('To save the changes, please type the password'),
                  textBtn: AppLocalizations.of(context).translate('save changes'),
                  hintText: AppLocalizations.of(context).translate('password'),
                );
              }),
          SizedBox(
            height: 35,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Color(0xFFE5E5E5)),
                bottom: BorderSide(color: Color(0xFFE5E5E5)),
              ),
            ),
            child: ListTile(
              onTap: () => push(context, EditPassScreen()),
              title: Text(
                AppLocalizations.of(context).translate('Change password'),
                style: regStyle,
              ),
              trailing: SvgPicture.asset(
                AppLocalizations.of(context).locale.toLanguageTag() == 'ar'
                    ? 'assets/svg/arrow_back_white.svg'
                    : 'assets/svg/arrow_forward.svg',
                color:Colors.white,
                height: 15,
              ),
              leading: ImageIcon(
                AssetImage("assets/icons/Lock.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
