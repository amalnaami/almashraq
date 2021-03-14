import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/local_image.dart';
import 'package:maktabeh_app/ui/common_widget/rate_stars.dart';
import 'package:maktabeh_app/ui/review/add_review_screen.dart';

class ReviewScreen extends StatefulWidget {
  bool isLogin;
  ReviewScreen({this.isLogin});
  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
        appBar: app_bar(AppLocalizations.of(context).translate('reviews'), context),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal * 4),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                (widget.isLogin)?    Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 2),
                  child: appButton(
                    context: context,
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AddReviewScreen(),
                    )),
                    text: AppLocalizations.of(context).translate('add review'),
                  ),
                ):Container(),
                Divider(
                  thickness: 1,
                  color: Color(0xFFE5E5E5),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 2),
                  child: Text(
                    AppLocalizations.of(context).translate('All reviews'),
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
                      return reviewCard();
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget reviewCard() {
  return Card(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
      Radius.circular(12),
    )),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.grey[300], blurRadius: 3, spreadRadius: 2),
        ],
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(SizeConfig.devicePixelRatio * 4),
            height: SizeConfig.screenWidth * 0.2,
            width: SizeConfig.screenWidth * 0.2,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/image/2.jpg'),
                )),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: SizeConfig.screenWidth * 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'نادين محمود',
                      style:
                          boldStyle.copyWith(fontSize: 12, color: Colors.black),
                    ),
                    Row(
                      children: [
                        rateStars(16, 5),
                        SizedBox(width: 8),
                        Icon(
                          Icons.share,
                          size: 18,
                          color: seconderyColor,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 2,
              ),
              Container(
                width: SizeConfig.screenWidth * 0.5,
                child: Text(
                  'كتاب جداً رائع لقد انهيته في مدة قصيرة ونال أعجابي الشديد',
                  style: lightStyle.copyWith(fontSize: 12),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
