import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';

import 'PayCardPage.dart';

class TypesPage extends StatefulWidget {
  @override
  _TypesPageState createState() => _TypesPageState();
}

class _TypesPageState extends State<TypesPage> {
  @override
  Widget build(BuildContext context) {
    if(paymentmethod.isEmpty) {
      paymentmethod = [
        PaymentMethod(
          name: AppLocalizations.of(context).translate('visa'),
          selected: false,
        ),
        PaymentMethod(
          name: AppLocalizations.of(context).translate('master card'),
          selected: false,
        ),
        PaymentMethod(
          name: AppLocalizations.of(context).translate('vodaphone cash'),
          selected: false,
        ),
        PaymentMethod(
          name: AppLocalizations.of(context).translate('fawry'),
          selected: false,
        ),
        PaymentMethod(
          name: AppLocalizations.of(context).translate('mobily'),
          selected: false,
        ),
        PaymentMethod(
          name: AppLocalizations.of(context).translate('PayPal'),
          selected: false,
        ),
      ];
    }
    return Scaffold(
      appBar: customAppBar(context, AppLocalizations.of(context).translate('payment method')),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          Text(
            AppLocalizations.of(context).translate('please select a payment method'),
            style: boldStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: List.generate(paymentmethod.length, (index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  boxShadow: [
                    paymentmethod[index].selected == true
                        ? BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                          )
                        : BoxShadow(
                            color: Colors.white,
                            spreadRadius: 0,
                            blurRadius: 0,
                          ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[200],
                  border: Border.all(
                    color: paymentmethod[index].selected == true
                        ? Colors.blue
                        : Color(0x00000000),
                  ),
                ),
                child: ListTile(
                    onTap: () {
                      for (var i = 0; i < paymentmethod.length; i++) {
                        if (i == index) {
                          setState(() {
                            paymentmethod[i].selected = true;
                          });
                        } else {
                          setState(() {
                            paymentmethod[i].selected = false;
                          });
                        }
                      }
                    },
                    title: Text(
                      paymentmethod[index].name,
                      style: lightStyle.copyWith(color: Colors.grey),
                    ),
                    trailing: Radio<bool>(
                      value: paymentmethod[index].selected,
                      groupValue: true,
                      activeColor: Colors.blue,
                      onChanged: (value) {
                        for (var i = 0; i < paymentmethod.length; i++) {
                          if (i == index) {
                            setState(() {
                              paymentmethod[i].selected = true;
                            });
                          } else {
                            setState(() {
                              paymentmethod[i].selected = false;
                            });
                          }
                        }
                      },
                    )),
              );
            }),
          ),
          SizedBox(
            height: 40,
          ),
          appButton(
            buttonColor: primaryColor,
            context: context,
            onTap: () => push(context, PayCardPage()),
            text: AppLocalizations.of(context).translate('Continue'),
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
  List<PaymentMethod> paymentmethod = [];
  @override
  void initState() {

    super.initState();
  }
}

class PaymentMethod {
  String name;
  bool selected;
  PaymentMethod({this.name, this.selected});
}
