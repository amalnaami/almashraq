import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/contact_us/bloc/contact_us_bloc.dart';

import 'bloc/contact_us_event.dart';
import 'bloc/contact_us_state.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _bloc = sl<ContactUsBloc>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _bloc.close();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, ContactUsState state) {
        error(state.error);
        if(state.success) {
          error(AppLocalizations.of(context).translate('Thank you for your message'));
          Timer(
            Duration(
              seconds: 1
            ),
              () => Navigator.of(context).pop()
          );
          _bloc.add(ClearState());
        }
        return SafeArea(
          child: Scaffold(
            appBar: app_bar(
                AppLocalizations.of(context).translate('contact us'), context),
            body: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: SizeConfig.screenWidth,
                      color: seconderyColor,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        children: [
                          Text(
                            AppLocalizations.of(context).translate('Note: '),
                            style: boldStyle.copyWith(color: Colors.white),
                          ),
                          Text(
                            AppLocalizations.of(context).translate(
                                'You will be replied within 24 hours'),
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
                                AppLocalizations.of(context)
                                    .translate('contact us'),
                                style: boldStyle.copyWith(color: Colors.black),
                              ),
                            ),
                            Container(
                              width: SizeConfig.screenWidth,
                              height: SizeConfig.screenHeight * 0.08,
                              color: Color(0xFFF5F5F5),
                              child: TextField(
                                controller: nameController,
                                textAlignVertical: TextAlignVertical.top,
                                expands: true,
                                maxLines: null,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    hintText: AppLocalizations.of(context)
                                        .translate('name'),
                                    hintStyle: regStyle.copyWith(
                                        color: Color(0xFFC4C4C4))),
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
                                  controller: emailController,
                                  textAlignVertical: TextAlignVertical.top,
                                  expands: true,
                                  maxLines: null,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      hintText: AppLocalizations.of(context)
                                          .translate('email'),
                                      hintStyle: regStyle.copyWith(
                                          color: Color(0xFFC4C4C4))),
                                ),
                              ),
                            ),
                            Container(
                              width: SizeConfig.screenWidth,
                              height: SizeConfig.screenHeight * 0.25,
                              color: Color(0xFFF5F5F5),
                              child: TextField(
                                controller: messageController,
                                textAlignVertical: TextAlignVertical.top,
                                expands: true,
                                maxLines: null,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    hintText: AppLocalizations.of(context)
                                        .translate('your message'),
                                    hintStyle: regStyle.copyWith(
                                        color: Color(0xFFC4C4C4))),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: SizeConfig.blockSizeVertical * 6),
                              child: appButton(
                                context: context,
                                onTap: () {
                                  if (nameController.value != null &&
                                      nameController.value.text.isEmpty) {
                                    error(AppLocalizations.of(context).translate('name can not be empty'));
                                  } else if (emailController.value != null &&
                                      emailController.value.text.isEmpty) {
                                    error(AppLocalizations.of(context).translate('email can not be empty'));
                                  } else if (messageController.value != null &&
                                      messageController.value.text.isEmpty) {
                                    error(AppLocalizations.of(context).translate('message can not be empty'));
                                  } else {
                                    _bloc.add(Post((b) => b
                                      ..name = nameController.value.text
                                      ..email = emailController.value.text
                                      ..message =
                                          messageController.value.text));
                                  }
                                },
                                text: AppLocalizations.of(context)
                                    .translate('send message'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                if (state.isLoading) loaderApp
              ],
            ),
          ),
        );
      },
    );
  }

  void error(String errorCode) {
    if (errorCode.isNotEmpty) {
      Fluttertoast.showToast(
          msg: (errorCode),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: primaryColor,
          textColor: Colors.white,
          fontSize: 16.0);
      _bloc.add(ClearState());
    }
  }
}
