import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/auth/compnent/CustomField2.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';
import 'package:maktabeh_app/ui/contact_us/bloc/contact_us_bloc.dart';
import 'package:maktabeh_app/ui/contact_us/bloc/contact_us_event.dart';
import 'package:maktabeh_app/ui/contact_us/bloc/contact_us_state.dart';

class ContactusPage extends StatefulWidget {
  @override
  _ContactusPageState createState() => _ContactusPageState();
}

class _ContactusPageState extends State<ContactusPage> {
  final _bloc = sl<ContactUsBloc>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
        }
        return Scaffold(
          appBar: customAppBar(context, AppLocalizations.of(context).translate("contact us")),
          body: Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    child: Text(
                      AppLocalizations.of(context).translate('Note: You will be replied within 24 hours'),
                      style: regStyle.copyWith(color: Colors.white),
                    ),
                    color: seconderyColor,
                  ),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.all(10),
                      children: [
                        Text(
                          AppLocalizations.of(context).translate('contact us'),
                          style: boldStyle.copyWith(fontSize: 15),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        CustomFeild2(
                          controller: nameController,
                          hintText: AppLocalizations.of(context).translate('name'),
                        ),
                        CustomFeild2(
                          controller: emailController,
                          hintText: AppLocalizations.of(context).translate('email'),
                        ),
                        CustomFeild2(
                          controller: messageController,
                          lines: 6,
                          hintText: AppLocalizations.of(context).translate('your message'),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        appButton(
                          buttonColor: primaryColor,
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
                          text: AppLocalizations.of(context).translate('send message'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              if(state.isLoading)
                loaderApp
            ],
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
