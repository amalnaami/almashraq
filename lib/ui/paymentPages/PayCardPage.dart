import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';

import 'component/payFeild.dart';
import 'confirmPayPage.dart';

class PayCardPage extends StatefulWidget {
  @override
  _PayCardPageState createState() => _PayCardPageState();
}

class _PayCardPageState extends State<PayCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, AppLocalizations.of(context).translate('payment method')),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Text(
            AppLocalizations.of(context).translate('please select a payment method'),
            style: boldStyle,
          ),
          SizedBox(
            height: 25,
          ),
          PayField(
            checkIcon: true,
            hint: "0000-0000-0000-0000",
            title: AppLocalizations.of(context).translate('Card number'),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Expanded(
                child: PayField(
                  hint: "10/21",
                  title: AppLocalizations.of(context).translate('expiry date'),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: PayField(
                  hint: "000",
                  title: AppLocalizations.of(context).translate('pin code'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          PayField(
            hint: "mohamed hassen",
            title: AppLocalizations.of(context).translate('card owner name'),
          ),
          SizedBox(
            height: 100,
          ),
          appButton(
            buttonColor: primaryColor,
            context: context,
            onTap: () => push(context, ConfairmPayPage()),
            text: AppLocalizations.of(context).translate('Continue'),
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
