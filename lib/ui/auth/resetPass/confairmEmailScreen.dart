import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/auth/compnent/CustomField2.dart';
import 'package:maktabeh_app/ui/auth/resetPass/confirm_email_bloc/confirm_email_bloc.dart';
import 'package:maktabeh_app/ui/auth/resetPass/confirm_email_bloc/confirm_email_state.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';

import 'confirm_email_bloc/confirm_email_event.dart';
import 'newPasswordScreen.dart';

class ConfirmEmailScreen extends StatefulWidget {
  @override
  _ConfirmEmailScreenState createState() => _ConfirmEmailScreenState();
}

class _ConfirmEmailScreenState extends State<ConfirmEmailScreen> {
  final _bloc = sl<ConfirmEmailBloc>();
  TextEditingController emailController;
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
  }
  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, ConfirmEmailState state) {
        error(state.error);
        if(state.success) {
          error(AppLocalizations.of(context).translate('check your email inbox to rest the password'));
          Timer(Duration(seconds: 1), () => Navigator.of(context).pop());
          emailController.text = '';
          _bloc.add(ClearState());
        }
        return Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: h * 0.6,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/image/forgetpassword.png',
                            width: w,
                            // height: SizeConfig.screenHeight * 0.7,
                            fit: BoxFit.fill,
                          ),

                          // Container(
                          //   child: Image.asset(
                          //     "assets/image/start.png",
                          //     fit: BoxFit.fill,
                          //     width: double.infinity,
                          //   ),
                          // ),
                          // Container(
                          //   child: Image.asset(
                          //     "assets/image/start.png",
                          //     fit: BoxFit.fill,
                          //     width: double.infinity,
                          //     color: Colors.black.withOpacity(0.2),
                          //   ),
                          // ),
                          Center(
                            child: Image.asset(
                              "assets/image/logo_image.png",
                              height: 200,
                              width: 200,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              AppLocalizations.of(context)
                                  .translate('forget password?'),
                              textAlign: TextAlign.center,
                              style: boldStyle.copyWith(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          CustomFeild2(
                            controller: emailController,
                            title:
                                AppLocalizations.of(context).translate('email'),
                            hintText: "exa@gmail.com",
                            headIcon: "assets/icons/Message.png",
                            // iconPath: "assets/svg/email.svg",
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          appButton(
                            buttonColor: primaryColor,
                            context: context,
                            text: AppLocalizations.of(context)
                                .translate('confirm'),
                            textColor: Colors.white,
                            onTap: () {
                              if(emailController.value.text == null || emailController.value.text.isEmpty) {
                                error(AppLocalizations.of(context).translate('email can not be empty'));
                                return;
                              }
                              _bloc.add(SubmitEmail((b) => b..email = emailController.value.text));
                            }
                          ),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (state.isLoading) loaderApp,
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
          // timeInSecForIosWeb: 1,
          backgroundColor: primaryColor,
          textColor: Colors.white,
          fontSize: 16.0);
      _bloc.add(ClearState());
    }
  }
}
