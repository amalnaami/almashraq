import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';

import 'local_image.dart';

AppBar customAppBar(BuildContext context, String title) {
  return AppBar(
      title: Text(title,
          style: regStyle.copyWith(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500)),
      centerTitle: true,
      leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: buildLocalImage(
              AppLocalizations.of(context).locale.toLanguageTag() == 'ar'
                  ? 'assets/svg/arrow_back_white.svg'
                  : 'assets/svg/arrow_forward.svg',
              color:Colors.white,
            ),
          )));
}
