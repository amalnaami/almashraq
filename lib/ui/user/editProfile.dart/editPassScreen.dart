import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/auth/compnent/CustomField2.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';
import 'package:maktabeh_app/ui/user/editProfile.dart/edit_password_bloc/edit_password_bloc.dart';
import 'package:maktabeh_app/ui/user/editProfile.dart/edit_password_bloc/edit_password_state.dart';

import 'edit_password_bloc/edit_password_event.dart';

class EditPassScreen extends StatefulWidget {
  @override
  _EditPassScreenState createState() => _EditPassScreenState();
}

class _EditPassScreenState extends State<EditPassScreen> {
  final _bloc = sl<EditPasswordBloc>();
  TextEditingController passwordController;
  TextEditingController confirmPasswordController;
  bool pass = true;
  bool confirmPass = true;

  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, EditPasswordState state) {
        print('STATE ERROR ${state.error}');
        error(state.error);
        if (state.success) {
          error(AppLocalizations.of(context)
              .translate('password changed successfully'));
          Timer(Duration(seconds: 1), () => Navigator.of(context).pop());
          passwordController.text = '';
          confirmPasswordController.text = '';
          _bloc.add(ClearState());
        }
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: customAppBar(context,
              AppLocalizations.of(context).translate('Change password')),
          body: Stack(
            children: [
              ListView(
                padding: EdgeInsets.all(20),
                children: [
                  Text(
                    AppLocalizations.of(context).translate('Change password'),
                    style: boldStyle,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // CustomFeild2(
                  //   title: AppLocalizations.of(context).translate('current password'),
                  //   hintText: "*********",
                  //   headIcon: "assets/icons/Lock.png",
                  //   // iconPath: "assets/svg/Lock.svg",
                  //   visab: true,
                  // ),
                  passwordField(
                    AppLocalizations.of(context).translate('new password'),
                    passwordController,
                    pass,
                    () => pass = !pass,
                  ),
                  passwordField(
                    AppLocalizations.of(context).translate('confirm password'),
                    confirmPasswordController,
                    confirmPass,
                    () => confirmPass = !confirmPass,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  appButton(
                    context: context,
                    buttonColor: primaryColor,
                    onTap: () {
                      if (passwordController.value.text == null ||
                          passwordController.value.text.isEmpty) {
                        error(AppLocalizations.of(context)
                            .translate('new password can not be empty'));
                        return;
                      } else if (confirmPasswordController.value.text == null ||
                          confirmPasswordController.value.text.isEmpty) {
                        error(AppLocalizations.of(context)
                            .translate('confirm password can not be empty'));
                        return;
                      } else if (confirmPasswordController.value.text !=
                          passwordController.value.text) {
                        error(AppLocalizations.of(context).translate(
                            'password and confirm password dose not match'));
                        return;
                      } else if (passwordController.value.text.length < 8) {
                        error(AppLocalizations.of(context).translate(
                            'The password must be at least 8 characters'));
                      } else {
                        _bloc.add(SubmitRequest((b) =>
                            b..newPassword = passwordController.value.text));
                      }
                    },
                    text:
                        AppLocalizations.of(context).translate('save changes'),
                  ),
                ],
              ),
              if (state.isLoading) loaderApp
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

  Widget passwordField(String title, TextEditingController controller,
      bool showPass, VoidCallback callback) {
    return Column(
      children: [
        title == null
            ? SizedBox()
            : Column(
                children: [
                  Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/icons/Lock.png'),
                        size: 20,
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        title,
                        style: regStyle.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: TextFormField(
            obscureText: showPass,
            controller: controller,
            decoration: InputDecoration(
              fillColor: Color(0xFFFBFBFB),
              hintStyle: regStyle.copyWith(color: Color(0xFFC4C4C4)),
              hintText: '********',
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: ()  {
                    setState(() {
                      callback.call();
                    });
                    },
                  child: SvgPicture.asset(
                    "assets/svg/Show.svg",
                  ),
                ),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
