import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/rate_stars.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return SafeArea(
        child: Scaffold(
      appBar: app_bar('contact us', context),
      body: Column(
        children: [
          Container(
            width: SizeConfig.screenWidth,
            color: seconderyColor,
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                Text(
                  'ملاحظة: ',
                  style: boldStyle.copyWith(color: Colors.white),
                ),
                Text(
                  "سيتم الرد عليكم خلال 24 ساعة.",
                  style: regStyle.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          Padding(
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
                      AppLocalizations.of(context).translate('contact us'),
                      style: boldStyle.copyWith(color: Colors.black),
                    ),
                  ),
                  Container(
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenHeight * 0.08,
                    color: Color(0xFFF5F5F5),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.top,
                      expands: true,
                      maxLines: null,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          hintText: 'الاسم الكريم',
                          hintStyle:
                              regStyle.copyWith(color: Color(0xFFC4C4C4))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: SizeConfig.blockSizeVertical * 2),
                    child: Container(
                      width: SizeConfig.screenWidth,
                      height: SizeConfig.screenHeight * 0.08,
                      color: Color(0xFFF5F5F5),
                      child: TextField(
                        textAlignVertical: TextAlignVertical.top,
                        expands: true,
                        maxLines: null,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            hintText: AppLocalizations.of(context).translate('email'),
                            hintStyle:
                                regStyle.copyWith(color: Color(0xFFC4C4C4))),
                      ),
                    ),
                  ),
                  Container(
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenHeight * 0.25,
                    color: Color(0xFFF5F5F5),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.top,
                      expands: true,
                      maxLines: null,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          hintText: 'رسالتك',
                          hintStyle:
                              regStyle.copyWith(color: Color(0xFFC4C4C4))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: SizeConfig.blockSizeVertical * 6),
                    child: appButton(
                      context: context,
                      onTap: () {},
                      text: 'إرسال الرسالة',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
