import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';
import 'component/payFeild.dart';

class ConfairmPayPage extends StatefulWidget {
  @override
  _ConfairmPayPageState createState() => _ConfairmPayPageState();
}

class _ConfairmPayPageState extends State<ConfairmPayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context,
          AppLocalizations.of(context).translate('purchase details')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              AppLocalizations.of(context)
                  .translate('please select a payment method'),
              style: boldStyle,
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Container(
                height: 170,
                width: 170,
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey),
                      ),
                      height: 150,
                      width: 170,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                              "assets/icons/Iconly-Broken-Discount.png"),
                          SizedBox(height: 5),
                          Text(
                            AppLocalizations.of(context)
                                .translate('Monthly subscription'),
                            style: regStyle.copyWith(color: seconderyColor),
                          ),
                          SizedBox(height: 5),
                          Text(
                            AppLocalizations.of(context)
                                .translate('Worth 5 pounds'),
                            textAlign: TextAlign.center,
                            style: lightStyle.copyWith(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 1,
                      width: 170,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[300],
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/qwwe.svg",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            PayField(
              checkIcon: true,
              hint: "0000-****-****-****",
              title: AppLocalizations.of(context)
                  .translate('payment method details'),
            ),
            Expanded(flex: 2, child: SizedBox()),
            Center(
              child: appButton(
                buttonColor: primaryColor,
                context: context,
                onTap: () {
                  CustomAlert().errorProcess(
                    action: () {},
                    btnText:
                        AppLocalizations.of(context).translate('try again'),
                    content: AppLocalizations.of(context).translate(
                        'Please check the entered card data and try again'),
                    context: context,
                    title: AppLocalizations.of(context)
                        .translate('The subscription process failed'),
                  );
                },
                text:
                    AppLocalizations.of(context).translate('Confirm payment'),
                textColor: Colors.white,
              ),
            ),
            Expanded(flex: 1, child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
