import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/model/country_model/country_model.dart';
import 'package:maktabeh_app/ui/auth/LoginScreen.dart';
import 'package:maktabeh_app/ui/auth/SignUpScreen/sign_up_bloc/sign_up_bloc.dart';
import 'package:maktabeh_app/ui/auth/SignUpScreen/sign_up_bloc/sign_up_state.dart';
import 'package:maktabeh_app/ui/auth/SignUpScreen/sign_up_bloc/sign_up_event.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/guide/guide_screen.dart';
import '../compnent/CustomField2.dart';

class SignupScreen extends StatefulWidget {
  // final CountryModel countryModel;
  // SignupScreen({this.countryModel});
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _bloc = sl<SignUpBloc>();

  TextEditingController fullNameController;
  TextEditingController emailController;
  TextEditingController nameController;
  TextEditingController phoneController;
  TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    _bloc.add(GetCountry());
    fullNameController = TextEditingController();
    emailController = TextEditingController();
    nameController = TextEditingController();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
  }
  String dropdownCountry;
  String genderType = '0';
  String genderValueType = null;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context, SignUpState state) {
      error(state.error);
      if(state.successSignup) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) { push(context, GuideScreen());});
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
                  height: h * 0.35,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/image/signup.png',
                        width: w,
                        // height: SizeConfig.screenHeight * 0.7,
                        fit: BoxFit.fill,
                      ),
                      // Container(
                      //   child: Positioned(
                      //     child: Image.asset(
                      //       "assets/image/book-library.png",
                      //     ),
                      //     top: -h * 0.25,
                      //     right: -150,
                      //     left: -50,
                      //     // bottom: 5,
                      //   ),
                      // ),
                      // Container(
                      //   child: Positioned(
                      //     child: Image.asset(
                      //       "assets/image/book-library.png",
                      //       color: Colors.black.withOpacity(0.2),
                      //     ),
                      //     top: -h * 0.25,
                      //     right: -150,
                      //     left: -50,
                      //   ),
                      // ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: h * 0.05),
                          child: Image.asset(
                            "assets/image/logo_image.png",
                            height: 120,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    top: 0,
                    start: 20,
                    bottom: 20,
                    end: 10,
                  ),
                  child: Column(
                    children: [
                      Text(
                        AppLocalizations.of(context).translate('Register'),
                        textAlign: TextAlign.center,
                        style: boldStyle.copyWith(fontSize: 18),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomFeild2(
                        hintText: AppLocalizations.of(context).translate('full name'),
                        iconPath: "assets/svg/Profile.svg",
                        controller: fullNameController,
                      ),
                      CustomFeild2(
                        hintText: AppLocalizations.of(context).translate('email'),
                        iconPath: "assets/svg/email.svg",
                        controller: emailController,
                      ),
                      CustomFeild2(
                        hintText: AppLocalizations.of(context).translate('user name'),
                        iconPath: "assets/svg/Profile.svg",
                        controller: nameController,
                      ),
                      CustomFeild2(
                        hintText: AppLocalizations.of(context).translate('phone number (optional)'),
                        iconPath: "assets/svg/mobile.svg",
                        controller: phoneController,
                      ),
                      CustomFeild2(
                        visab: true,
                        hintText: AppLocalizations.of(context).translate('password'),
                        iconPath: "assets/svg/Lock.svg",
                        controller: passwordController,
                      ),
                      // CustomFeild2(
                      //   hintText: AppLocalizations.of(context).translate('gender'),
                      //   iconPath: "assets/svg/User.svg",
                      // ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey[50],
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        margin: EdgeInsets.only(top: 15, bottom: 20),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: SvgPicture.asset(
                                "assets/svg/User.svg",
                                width: 32,
                              ),
                            ),
                            Expanded(
                              child: DropdownButton<String>(
                                underline: Container(),
                                value: genderValueType,
                                isExpanded: true,
                                hint: Container(
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate('gender'),
                                    style: regStyle.copyWith(color: Color(0xFFC4C4C4),fontSize: 17),
                                  ),
                                ),
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.grey[300],
                                  size: 32,
                                ),
                                style: TextStyle(color: Colors.deepPurple),
                                onChanged: (String newValue) {

                                  setState(() {
                                    if (newValue == 'Male') {
                                      genderValueType = newValue;
                                      genderType = 'male';

                                    } else if (newValue == 'Female') {
                                      genderValueType = newValue;
                                      genderType = 'female';
                                      }
                                  });
                                },
                                items: <String>['Female', 'Male']
                                    .map<DropdownMenuItem<String>>((value) {
                                  return DropdownMenuItem<String>(
                                      value: value,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            right: 2, left: 12),
                                        child: Text(
                                          value,
                                          style: regStyle.copyWith(color: Color(0xFFC4C4C4),fontSize: 17),
                                        ),
                                      ));
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ( state.country == null
                      )? Container()
                          : Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey[50],
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        margin: EdgeInsets.only(top: 15, bottom: 20),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: SvgPicture.asset(
                                "assets/svg/Location.svg",
                                width: 32,
                              ),
                            ),
                            Expanded(
                              child: DropdownButton<String>(
                                underline: Container(),
                                value: dropdownCountry,
                                isExpanded: true,
                                hint: Container(
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate('country'),
                                    style: regStyle.copyWith(color: Color(0xFFC4C4C4),fontSize: 17),
                                  ),
                                ),
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.grey[300],
                                  size: 32,
                                ),
                                style: TextStyle(color: Colors.deepPurple),
                                onChanged: (String newValue) {
                                  print('selectedValue  $newValue');
                                  setState(() {
                                    dropdownCountry = newValue;
                                  });
                                },
                                items: state.country
                                    .map<DropdownMenuItem<String>>((value) {
                                  return DropdownMenuItem<String>(
                                      value: value.id.toString(),
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            right: 2, left: 12),
                                        child: Text(
                                        value.getName(AppLocalizations.of(context).locale.languageCode),

                                          style: regStyle.copyWith(color: Color(0xFFC4C4C4),fontSize: 17),


                                        ),
                                      ));
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // CustomFeild2(
                      //   hintText: AppLocalizations.of(context).translate('country'),
                      //   iconPath: "assets/svg/Location.svg",
                      // ),
                      SizedBox(
                        height: 20,
                      ),
                      appButton(
                        buttonColor: primaryColor,
                        context: context,
                        text: AppLocalizations.of(context).translate('Register'),
                        textColor: Colors.white,
                        onTap: () {
                          if (fullNameController.value.text == null ||
                              fullNameController.value.text.isEmpty) {
                            error(AppLocalizations.of(context)
                                .translate('fullname can not be empty'));
                            return;
                          }if (nameController.value.text == null ||
                              nameController.value.text.isEmpty) {
                            error(AppLocalizations.of(context)
                                .translate('username can not be empty'));
                            return;
                          } else if (passwordController.value.text ==
                              null ||
                              passwordController.value.text.isEmpty) {
                            error(AppLocalizations.of(context)
                                .translate('password can not be empty'));
                            return;
                          }else if (passwordController.value.text.length < 8) {
                            error(AppLocalizations.of(context)
                                .translate('The password must be at least 8 characters'));
                            return;
                          }
                          else if (dropdownCountry ==
                              null ||
                              dropdownCountry.isEmpty) {
                            error(AppLocalizations.of(context)
                                .translate('country can not be empty'));
                            return;
                          }  else if (genderType ==
                              null ||
                              genderType.isEmpty) {
                            print('genderTypegenderType $genderType');
                            error(AppLocalizations.of(context)
                                .translate('gender can not be empty'));
                            return;
                          }
                          if (emailController.value.text == null ||
                              emailController.value.text.isEmpty) {
                            error(AppLocalizations.of(context)
                                .translate('email can not be empty'));
                            return;
                          }
                          else {
                            _bloc.add(
                              SignUp((b) => b
                              ..username=fullNameController.value.text
                              ..name=nameController.value.text
                                ..email=emailController.value.text
                                ..password = passwordController.value.text
                                ..tele = phoneController.value.text
                                ..gender=genderType.toString()
                                ..country_code=dropdownCountry.toString()
                                ,),
                            );
                            print('dropdownCountrydropdownCountry $dropdownCountry');
                            print('dropdownCountrydropdownCountry $genderType');
                          }

                        },
                      ),
                      SizedBox(
                        height: 20,
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
