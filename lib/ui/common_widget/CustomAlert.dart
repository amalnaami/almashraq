import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';

import 'filter_drop_down.dart';
import 'filter_textfield.dart';
import 'local_image.dart';

class CustomAlert {
  submitChangeData(
      {BuildContext context,
      Function onSubmite,
      Function onCancel,
      String hintText,
      String textBtn,
      String title}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: lightStyle.copyWith(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                textAlign: TextAlign.center,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: regStyle.copyWith(color: Color(0xFFD4D4D4)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xFFD4D4D4)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xFFD4D4D4)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              appButton(
                buttonColor: primaryColor,
                context: context,
                text: textBtn,
                onTap: onSubmite,
              ),
              SizedBox(
                height: 8,
              ),
              onCancel != null
                  ? appButton(
                      buttonColor: Color(0x00000000),
                      context: context,
                      text: AppLocalizations.of(context).translate('cancel'),
                      onTap: onCancel ?? () => Navigator.pop(context),
                      textColor: seconderyColor,
                    )
                  : SizedBox(),
            ],
          ),
        );
      },
    );
  }

  options({
    BuildContext context,
    Function onSubmite,
    String textBtn,
    List<Widget> children,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: children,
              ),
              SizedBox(
                height: 15,
              ),
              appButton(
                buttonColor: primaryColor,
                context: context,
                text: textBtn,
                onTap: onSubmite,
              ),
            ],
          ),
        );
      },
    );
  }

  successfulProcess({
    BuildContext context,
    String title,
    String content,
    String btnText,
    Function action,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Container(
            width: MediaQuery.of(context).size.width - 50,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/Shape 2 copy 3.svg",
                        height: 60,
                        width: 60,
                      ),
                      Center(
                        child: SvgPicture.asset(
                          "assets/icons/Shape 5 copy 2.svg",
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  title,
                  style: boldStyle.copyWith(color: Colors.green),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    content,
                    textAlign: TextAlign.center,
                    style: lightStyle.copyWith(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                appButton(
                  buttonColor: primaryColor,
                  context: context,
                  onTap: action,
                  text: btnText,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  errorProcess({
    BuildContext context,
    String title,
    String content,
    String btnText,
    Function action,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Container(
            width: MediaQuery.of(context).size.width - 50,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Image.asset(
                    "assets/icons/right-and-wrong-check-marks.png",
                    height: 60,
                    width: 60,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  title,
                  style: boldStyle.copyWith(color: Colors.red),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    content,
                    textAlign: TextAlign.center,
                    style: lightStyle.copyWith(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                appButton(
                  buttonColor: primaryColor,
                  context: context,
                  onTap: action,
                  text: btnText,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

Widget filterDialog(BuildContext context) {
  return Dialog(
    insetPadding: EdgeInsets.all(10),
    child: Container(
      height: SizeConfig.screenHeight * 0.7,
      width: SizeConfig.screenWidth * 0.9,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal * 3),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.blockSizeVertical * 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: Container()),
                    Text(
                      AppLocalizations.of(context).translate('filter'),
                      style: boldStyle.copyWith(
                          color: Colors.black, fontSize: 18),
                    ),
                    Expanded(child: Container()),
                    //Spacer(),
                    Text(
                      AppLocalizations.of(context).translate('cancel'),
                      style: regStyle.copyWith(
                          color: Color(0xFF28ABE3),
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(height: SizeConfig.blockSizeVertical * 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppLocalizations.of(context).translate('author name'), style: regStyle),
                    filterTextField(hint: AppLocalizations.of(context).translate('author name'))
                  ],
                ),
                Divider(
                  color: Color(0xFFE5E5E5),
                  thickness: 1.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppLocalizations.of(context).translate('ISIN'), style: regStyle),
                    filterTextField(hint: AppLocalizations.of(context).translate('ISIN'))
                  ],
                ),
                Divider(
                  color: Color(0xFFE5E5E5),
                  thickness: 1.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppLocalizations.of(context).translate('release date'), style: regStyle),
                    filterTextField(
                      hint: '2020/5/3',
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: buildLocalImage(
                          'assets/svg/calendar.svg',
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Color(0xFFE5E5E5),
                  thickness: 1.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppLocalizations.of(context).translate('author name'), style: regStyle),
                    filterDropDown(context, hint: AppLocalizations.of(context).translate('author name'))
                  ],
                ),
                Divider(
                  color: Color(0xFFE5E5E5),
                  thickness: 1.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppLocalizations.of(context).translate('section'), style: regStyle),
                    filterDropDown(context, hint: AppLocalizations.of(context).translate('section'))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: SizeConfig.blockSizeVertical * 4,
                      right: SizeConfig.blockSizeHorizontal,
                      left: SizeConfig.blockSizeHorizontal),
                  child: appButton(
                    buttonColor: primaryColor,
                    context: context,
                    text: AppLocalizations.of(context).translate('apply'),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget sortDialog(BuildContext context) {
  return Dialog(
    insetPadding: EdgeInsets.all(10),
    child: Container(
      height: SizeConfig.screenHeight * 0.4,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal * 3),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical * 2,
                          bottom: SizeConfig.blockSizeVertical * 2,
                          right: SizeConfig.screenWidth * 0.32,
                          left: SizeConfig.screenWidth * 0.32),
                      child: Text(
                        AppLocalizations.of(context).translate('order'),
                        style: boldStyle.copyWith(
                            color: Colors.black, fontSize: 18),
                      ),
                    ),
                    Text(
                      AppLocalizations.of(context).translate("cancel"),
                      style: regStyle.copyWith(
                          color: Color(0xFFCBCBCB),
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      onChanged: (_) {},
                      value: true,
                      activeColor: primaryColor,
                      groupValue: 1,
                    ),
                    Text(
                      AppLocalizations.of(context).translate('Descending Order'),
                      style: regStyle.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Divider(
                  color: Color(0xFFE5E5E5),
                  thickness: 1.0,
                ),
                Row(
                  children: [
                    Radio(
                      onChanged: (_) {},
                      value: false,
                      activeColor: primaryColor,
                      groupValue: 0,
                    ),
                    Text(
                      AppLocalizations.of(context).translate('Ascending order'),
                      style: regStyle.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: SizeConfig.blockSizeVertical * 3,
                      right: SizeConfig.blockSizeHorizontal,
                      left: SizeConfig.blockSizeHorizontal),
                  child: appButton(
                    buttonColor: primaryColor,
                    context: context,
                    text:  AppLocalizations.of(context).translate('apply'),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
