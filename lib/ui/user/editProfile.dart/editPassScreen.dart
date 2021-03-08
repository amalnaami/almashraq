import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/auth/compnent/CustomField2.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';

class EditPassScreen extends StatefulWidget {
  @override
  _EditPassScreenState createState() => _EditPassScreenState();
}

class _EditPassScreenState extends State<EditPassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(context, AppLocalizations.of(context).translate('Change password')),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text(
            AppLocalizations.of(context).translate('Change password'),
            style: boldStyle,
          ),
          SizedBox(
            height: 30,
          ),
          CustomFeild2(
            title: AppLocalizations.of(context).translate('current password'),
            hintText: "*********",
            headIcon: "assets/icons/Lock.png",
            // iconPath: "assets/svg/Lock.svg",
            visab: true,
          ),
          CustomFeild2(
            title: AppLocalizations.of(context).translate('new password'),
            hintText: "*********",
            headIcon: "assets/icons/Lock.png",
            // iconPath: "assets/svg/Lock.svg",
            visab: true,
          ),
          CustomFeild2(
            title: AppLocalizations.of(context).translate('confirm password'),
            hintText: "*********",
            headIcon: "assets/icons/Lock.png",
            // iconPath: "assets/svg/Lock.svg",
            visab: true,
          ),
          SizedBox(
            height: 70,
          ),
          appButton(
            context: context,
            buttonColor: primaryColor,
            onTap: () {},
            text: AppLocalizations.of(context).translate('save changes'),
          ),
        ],
      ),
    );
  }
}
