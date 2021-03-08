import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';
import 'package:maktabeh_app/ui/paymentPages/typsPage.dart';

import 'component/SubscriptionCard.dart';

class SubscriptionScreen extends StatefulWidget {
  @override
  _SubscriptionScreenState createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, AppLocalizations.of(context).translate('Subscribe')),
      body: ListView(
        children: [
          Container(
            color: seconderyColor,
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              AppLocalizations.of(context).translate('15 days left for subscription'),
              style: boldStyle.copyWith(color: Colors.white),
            ),
            alignment: Alignment.center,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context).translate('Subscribe via packages'),
                  style: boldStyle,
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SubscriptionCard(
                      onTap: () => push(context, TypesPage()),
                      title: AppLocalizations.of(context).translate('Monthly subscription'),
                      subTitle: "بقيمة 5 جنية",
                    ),
                    SubscriptionCard(
                      onTap: () => push(context, TypesPage()),
                      title: AppLocalizations.of(context).translate('annual subscription'),
                      subTitle: "بقيمة 50 جنية",
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      Text(AppLocalizations.of(context).translate('Subscribe via'), style: boldStyle),
                      Text(
                        "Promo Code",
                        style:
                            boldStyle.copyWith(fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: SubscriptionCard(
                    onTap: () {
                      CustomAlert().submitChangeData(
                        context: context,
                        onSubmite: () {
                          Navigator.pop(context);
                          CustomAlert().successfulProcess(
                            btnText: AppLocalizations.of(context).translate('browse the book'),
                            content:
                            AppLocalizations.of(context).translate('The promo code has been activated. You can now browse books'),
                            action: () {},
                            context: context,
                            title: AppLocalizations.of(context).translate('activated'),
                          );
                        },
                        textBtn: AppLocalizations.of(context).translate('active'),
                        title: AppLocalizations.of(context).translate('write promo code here'),
                      );
                    },
                    title: AppLocalizations.of(context).translate('free subscription'),
                    subTitle: AppLocalizations.of(context).translate('The code has been sent to your e-mail'),
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
