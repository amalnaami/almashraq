import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/auth/compnent/CustomField2.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/rate_stars.dart';

class AddReviewScreen extends StatefulWidget {
  @override
  _AddReviewScreenState createState() => _AddReviewScreenState();
}

class _AddReviewScreenState extends State<AddReviewScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return SafeArea(
        child: Scaffold(
      appBar: app_bar(AppLocalizations.of(context).translate('reviews'), context),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: SizeConfig.blockSizeVertical * 2,
            horizontal: SizeConfig.blockSizeHorizontal * 4),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.blockSizeVertical * 2),
                child: Text(
                  AppLocalizations.of(context).translate('add review'),
                  style: boldStyle.copyWith(color: Colors.black),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context).translate('rate'),
                    style: regStyle.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  rateStars(SizeConfig.screenWidth * 0.08, 5),
                ],
              ),
              CustomFeild2(
                lines: 8,
                hintText: AppLocalizations.of(context).translate('comment'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.blockSizeVertical * 6),
                child: appButton(
                  context: context,
                  onTap: () {},
                  text: AppLocalizations.of(context).translate('add'),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
