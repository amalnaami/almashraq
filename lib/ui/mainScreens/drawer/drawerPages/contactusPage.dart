import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/auth/compnent/CustomField2.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';

class ContactusPage extends StatefulWidget {
  @override
  _ContactusPageState createState() => _ContactusPageState();
}

class _ContactusPageState extends State<ContactusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, AppLocalizations.of(context).translate("contact us")),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(15),
            child: Text(
              AppLocalizations.of(context).translate('Note: You will be replied within 24 hours'),
              style: regStyle.copyWith(color: Colors.white),
            ),
            color: seconderyColor,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10),
              children: [
                Text(
                  AppLocalizations.of(context).translate('contact us'),
                  style: boldStyle.copyWith(fontSize: 15),
                ),
                SizedBox(
                  height: 15,
                ),
                CustomFeild2(
                  hintText: AppLocalizations.of(context).translate('name'),
                ),
                CustomFeild2(
                  hintText: AppLocalizations.of(context).translate('email'),
                ),
                CustomFeild2(
                  lines: 6,
                  hintText: AppLocalizations.of(context).translate('your message'),
                ),
                SizedBox(
                  height: 30,
                ),
                appButton(
                  buttonColor: primaryColor,
                  context: context,
                  onTap: () {},
                  text: AppLocalizations.of(context).translate('send message'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
