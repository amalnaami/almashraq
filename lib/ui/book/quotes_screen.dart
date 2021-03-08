import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/book/add_quote.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';

import 'package:maktabeh_app/ui/common_widget/soshialBar.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/Compenant/QuoteCard.dart';

class QuotesScreen extends StatefulWidget {
  @override
  _QuotesScreenState createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
        appBar: app_bar('quotes', context),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal * 4),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 2),
                  child: appButton(
                    context: context,
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AddQuoteScreen(),
                    )),
                    text: AppLocalizations.of(context).translate('add quote'),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xFFE5E5E5),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 2),
                  child: Text(
                    AppLocalizations.of(context).translate('All quotes'),
                    style: boldStyle.copyWith(color: Colors.black),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xFFE5E5E5),
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return QuoteCard();
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget quoteCard() {
  return Card(
    margin: EdgeInsets.all(10),
    child: Container(
      height: SizeConfig.screenHeight * 0.2,
      width: 500,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/image/2.jpg",
                height: double.infinity,
                fit: BoxFit.fill,
                width: double.infinity,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "ما العمر الا لحظات",
                  style: regStyle.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        ImageIcon(
                          AssetImage("assets/icons/Profile.png"),
                          color: primaryColor,
                          size: 12,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "الأوابد",
                          style: lightStyle.copyWith(
                              color: Colors.black, fontSize: 10),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        ImageIcon(
                          AssetImage("assets/icons/book.png"),
                          color: primaryColor,
                          size: 12,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "عبدالوهاب عزام",
                          style: lightStyle.copyWith(
                              color: Colors.black, fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
                SoshialBar()
              ],
            ),
          )
        ],
      ),
    ),
  );
}
