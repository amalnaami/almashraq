import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/auth/compnent/CustomField2.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/rate_stars.dart';

class AddQuoteScreen extends StatefulWidget {
  @override
  _AddQuoteScreenState createState() => _AddQuoteScreenState();
}

class _AddQuoteScreenState extends State<AddQuoteScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return SafeArea(
        child: Scaffold(
      appBar: app_bar(AppLocalizations.of(context).translate('add quote'), context),
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
                  AppLocalizations.of(context).translate('add quote'),
                  style: boldStyle.copyWith(color: Colors.black),
                ),
              ),
              CustomFeild2(
                lines: 8,
                hintText: AppLocalizations.of(context).translate('quote'),
              ),
              // Container(
              //   width: SizeConfig.screenWidth,
              //   height: SizeConfig.screenHeight * 0.25,
              //   color: Color(0xFFF5F5F5),
              //   child: TextField(
              //     textAlignVertical: TextAlignVertical.top,
              //     expands: true,
              //     maxLines: null,
              //     decoration: InputDecoration(
              //         border: OutlineInputBorder(
              //           borderSide: BorderSide.none,
              //           borderRadius: BorderRadius.circular(16),
              //         ),
              //         hintText: 'الإقتباس',
              //         hintStyle: regStyle.copyWith(color: Color(0xFFC4C4C4))),
              //   ),
              // ),
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
