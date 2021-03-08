import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';

import 'local_image.dart';

Widget filterDropDown(BuildContext context, {String hint, double height, double width, String option = 'Taha'}) {
  return Container(
    width: width ?? SizeConfig.screenWidth * 0.4,
    height: height ?? SizeConfig.screenHeight * 0.08,
    padding: EdgeInsets.all(12),
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 1, color: Color(0xFFCBCBCB)),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
    ),
    child: DropdownButton(
      onChanged: (String newValue) {},
      // value: 'اختر اسم الكاتب',

      items: [
        DropdownMenuItem<String>(
          child: Text(
            AppLocalizations.of(context).translate('Select writer name'),
            style: lightStyle.copyWith(color: Colors.grey),
          ),
        ),
        DropdownMenuItem<String>(
          child: Text(
            option,
            style: lightStyle.copyWith(color: Colors.grey),
          ),
        )
      ],
      underline: Container(),
      isExpanded: true,
      icon: buildLocalImage('assets/svg/arrow_down.svg'),
      hint: Text(hint,
          style: regStyle.copyWith(color: Color(0xFFCBCBCB), fontSize: 12)),
    ),
  );
}
