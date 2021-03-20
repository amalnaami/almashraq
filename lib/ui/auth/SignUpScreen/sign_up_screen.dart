import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/auth/SignUpScreen/sign_up_bloc/sign_up_bloc.dart';
import 'package:maktabeh_app/ui/auth/SignUpScreen/sign_up_bloc/sign_up_state.dart';
import 'package:maktabeh_app/ui/auth/SignUpScreen/sign_up_bloc/sign_up_event.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/guide/guide_screen.dart';
import 'package:maktabeh_app/ui/auth/compnent/CustomField2.dart';

class SignupScreen extends StatefulWidget {
  // final CountryModel countryModel;
  // SignupScreen({this.countryModel});
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _bloc = sl<SignUpBloc>();
  bool _showPassword = false;

  TextEditingController fullNameController;
  TextEditingController emailController;
  TextEditingController nameController;
  TextEditingController phoneController;
  TextEditingController passwordController;

  @override
  void initState() {
    _bloc.add(GetCountry());
    fullNameController = TextEditingController();
    emailController = TextEditingController();
    nameController = TextEditingController();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  File image = File("");

  bool uploadImage = false;
  final picker = ImagePicker();
  String dropdownCountry;
  String genderType = '0';
  String genderValueType = null;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    final sizeAware = MediaQuery.of(context).size;

    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, SignUpState state) {
        print('state is $state');
        error(state.error);
        if (state.successSignup) {
          _bloc.add(ClearState());
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            print('PUSHING');
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (_) => SectionGuideScreen()),
              (route) => false,
            );
          });
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

                          Container(
                            alignment: Alignment.center,
                            margin:
                                EdgeInsets.only(bottom: sizeAware.width * 0.01),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Container(
                                  width: sizeAware.width * 0.25,
                                  height: sizeAware.width * 0.25,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 1), // changes position of shadow
                                      ),
                                    ],
                                    border: Border.all(
                                        color: Colors.grey[200],
                                        width: sizeAware.width * 0.008),
                                    image: DecorationImage(
                                        image: !uploadImage
                                            ? NetworkImage(
                                                'https://th.bing.com/th/id/OIP.dfOyZLx5TURjqBMYs1-iIAD6D5?pid=ImgDet&rs=1')
                                            : FileImage(image),

                                        // image: NetworkImage(
                                        //   'https://i1.wp.com/manforhimself.com/wp-content/uploads/sizeAware.width*0.045sizeAware.width*0.045/04/david-beckham-mens-haircut-hairstyle-short-cropped-MFHC2-man-for-himself-1.jpg?resize=600%2C600&ssl=1'),
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(60)),
                                  ),
// =======
//                           )
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(sizeAware.width * 0.03),
//                       child: Column(
//                         children: [
//                           Container(
//                             margin: EdgeInsets.all(8),
//                             decoration: BoxDecoration(
//                               color: whiteColor,
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             child: TextField(
//                               onTap: () {
//                                 setState(() {
//                                   _color1 = Colors.black;
//                                 });
//                               },
//                               decoration: InputDecoration(
//                                 labelText: AppLocalizations.of(context)
//                                     .translate('Full name'),
//                                 prefixIcon: Icon(
//                                   Icons.person,
//                                   color: _color1,
//                                 ),
//                                 contentPadding: EdgeInsets.all(0),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(12),
//                                   borderSide: BorderSide(
//                                       width: 1, color: Colors.black),
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(4),
//                                   borderSide: BorderSide(
//                                       width: 1, color: Colors.black),
//                                 ),
//                                 labelStyle: dataStyle.copyWith(
//                                     fontWeight: FontWeight.w900,
//                                     fontSize: sizeAware.width * 0.035,
//                                     fontFamily: 'fonts',
//                                     color: _color1),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             margin: EdgeInsets.all(8),
//                             decoration: BoxDecoration(
//                               color: whiteColor,
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             child: TextField(
//                               onTap: () {
//                                 setState(() {
//                                   _color2 = Colors.black;
//                                 });
//                               },
//                               decoration: InputDecoration(
//                                 labelText: AppLocalizations.of(context)
//                                     .translate('Address'),
//                                 contentPadding: EdgeInsets.all(0),
//                                 prefixIcon: Icon(
//                                   Icons.location_on,
//                                   color: _color2,
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(12),
//                                   borderSide: BorderSide(
//                                       width: 1, color: Colors.black),
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(4),
//                                   borderSide: BorderSide(
//                                       width: 1, color: Colors.black),
//                                 ),
//                                 labelStyle: dataStyle.copyWith(
//                                     fontWeight: FontWeight.w900,
//                                     fontSize: sizeAware.width * 0.035,
//                                     fontFamily: 'fonts',
//                                     color: _color2),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             margin: EdgeInsets.all(8),
//                             decoration: BoxDecoration(
//                               color: whiteColor,
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             child: TextField(
//                               onTap: () {
//                                 setState(() {
//                                   _color3 = Colors.black;
//                                 });
//                               },
//                               decoration: InputDecoration(
//                                 labelText: AppLocalizations.of(context)
//                                     .translate('Email'),
//                                 contentPadding: EdgeInsets.all(0),
//
//                                 //hintText: 'Email',
//                                 prefixIcon: Icon(
//                                   Icons.email,
//                                   color: _color3,
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(12),
//                                   borderSide: BorderSide(
//                                       width: 1, color: Colors.black),
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(4),
//                                   borderSide: BorderSide(
//                                       width: 1, color: Colors.black),
//                                 ),
//
//                                 labelStyle: dataStyle.copyWith(
//                                     fontWeight: FontWeight.w900,
//                                     fontSize: sizeAware.width * 0.035,
//                                     fontFamily: 'fonts',
//                                     color: _color3),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             margin: EdgeInsets.all(8),
//                             decoration: BoxDecoration(
//                               color: whiteColor,
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             child: TextField(
//                               onTap: () {
//                                 setState(() {
//                                   _color4 = Colors.black;
//                                 });
//                               },
//                               decoration: InputDecoration(
//                                 labelText: AppLocalizations.of(context)
//                                     .translate('phone Number'),
//                                 contentPadding: EdgeInsets.all(0),
//                                 prefixIcon: Icon(
//                                   Icons.phone_android,
//                                   color: _color4,
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(12)),
//                                   borderSide: BorderSide(
//                                       width: 1, color: Colors.black),
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(4)),
//                                   borderSide: BorderSide(
//                                       width: 1, color: Colors.black),
//                                 ),
//                                 labelStyle: dataStyle.copyWith(
//                                     fontWeight: FontWeight.w900,
//                                     fontSize: sizeAware.width * 0.035,
//                                     fontFamily: 'fonts',
//                                     color: _color4),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             margin: EdgeInsets.all(8),
//                             decoration: BoxDecoration(
//                               color: whiteColor,
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(12)),
//                             ),
//                             child: TextField(
//                               onTap: () {
//                                 setState(() {
//                                   _color5 = Colors.black;
//                                 });
//                               },
//                               decoration: InputDecoration(
//                                 labelText: AppLocalizations.of(context)
//                                     .translate('Password'),
//                                 contentPadding: EdgeInsets.all(0),
//
//                                 //hintText: 'Email',
//                                 prefixIcon: Icon(
//                                   Icons.lock,
//                                   color: _color5,
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(12)),
//                                   borderSide: BorderSide(
//                                       width: 1, color: Colors.black),
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(4)),
//                                   borderSide: BorderSide(
//                                       width: 1, color: Colors.black),
// >>>>>>> 1afc7011e3f67c5b3b8e45fe28b1fcb833a0d2c4
                                ),
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      width: sizeAware.width * 0.065,
                                      height: sizeAware.width * 0.065,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            spreadRadius: 1,
                                            blurRadius: 3,
                                            offset: Offset(0,
                                                0.5), // changes position of shadow
                                          ),
                                        ],
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                sizeAware.height * 0.06)),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        getImage();
                                      },
                                      child: Icon(
                                        Icons.camera_alt_outlined,
                                        size: sizeAware.width * 0.045,
                                        color: Colors.orange,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          CustomFeild2(
                            hintText: AppLocalizations.of(context)
                                .translate('full name'),
                            iconPath: "assets/svg/Profile.svg",
                            controller: fullNameController,
                          ),
                          CustomFeild2(
                            hintText:
                                AppLocalizations.of(context).translate('email'),
                            iconPath: "assets/svg/email.svg",
                            controller: emailController,
                          ),
                          CustomFeild2(
                            hintText: AppLocalizations.of(context)
                                .translate('user name'),
                            iconPath: "assets/svg/Profile.svg",
                            controller: nameController,
                          ),
                          CustomFeild2(
                            hintText: AppLocalizations.of(context)
                                .translate('phone number (optional)'),
                            iconPath: "assets/svg/mobile.svg",
                            controller: phoneController,
                          ),
                          // CustomFeild2(
                          //   visab: true,
                          //   hintText: AppLocalizations.of(context).translate('password'),
                          //   iconPath: "assets/svg/Lock.svg",
                          //   controller: passwordController,
                          // ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: TextFormField(
                              obscureText: !_showPassword,
                              controller: passwordController,
                              maxLines: 1,
                              decoration: InputDecoration(
                                fillColor: Color(0xFFFBFBFB),
                                filled: true,
                                hintStyle:
                                    regStyle.copyWith(color: Color(0xFFC4C4C4)),
                                hintText: AppLocalizations.of(context)
                                    .translate('password'),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                    "assets/svg/Lock.svg",
                                  ),
                                ),
                                suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _showPassword = !_showPassword;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset(
                                      "assets/svg/Show.svg",
                                    ),
                                  ),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 10),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
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
                                        style: regStyle.copyWith(
                                            color: Color(0xFFC4C4C4),
                                            fontSize: 17),
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
                                              style: regStyle.copyWith(
                                                  color: Color(0xFFC4C4C4),
                                                  fontSize: 17),
                                            ),
                                          ));
                                    }).toList(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          (state.country == null)
                              ? Container()
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
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
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
                                              style: regStyle.copyWith(
                                                  color: Color(0xFFC4C4C4),
                                                  fontSize: 17),
                                            ),
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down,
                                            color: Colors.grey[300],
                                            size: 32,
                                          ),
                                          style: TextStyle(
                                              color: Colors.deepPurple),
                                          onChanged: (String newValue) {
                                            print('selectedValue  $newValue');
                                            setState(() {
                                              dropdownCountry = newValue;
                                            });
                                          },
                                          items: state.country
                                              .map<DropdownMenuItem<String>>(
                                                  (value) {
                                            return DropdownMenuItem<String>(
                                                value: value.id.toString(),
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                      right: 2, left: 12),
                                                  child: Text(
                                                    value.getName(
                                                        AppLocalizations.of(
                                                                context)
                                                            .locale
                                                            .languageCode),
                                                    style: regStyle.copyWith(
                                                        color:
                                                            Color(0xFFC4C4C4),
                                                        fontSize: 17),
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
                            text: AppLocalizations.of(context)
                                .translate('Register'),
                            textColor: Colors.white,
                            onTap: () {
                              if (fullNameController.value.text == null ||
                                  fullNameController.value.text.isEmpty) {
                                error(AppLocalizations.of(context)
                                    .translate('fullname can not be empty'));
                                return;
                              }
                              if (nameController.value.text == null ||
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
                              } else if (passwordController.value.text.length <
                                  8) {
                                error(AppLocalizations.of(context).translate(
                                    'The password must be at least 8 characters'));
                                return;
                              } else if (dropdownCountry == null ||
                                  dropdownCountry.isEmpty) {
                                error(AppLocalizations.of(context)
                                    .translate('country can not be empty'));
                                return;
                              } else if (genderType == null ||
                                  genderType == '0' ||
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
                              } else {
                                _bloc.add(
                                  SignUp(
                                    (b) => b
                                      ..name = fullNameController.value.text
                                      ..username = nameController.value.text
                                      ..email = emailController.value.text
                                      ..password = passwordController.value.text
                                      ..tele = phoneController.value.text
                                      ..gender = genderType.toString()
                                      ..country_code =
                                          dropdownCountry.toString()
                                      ..image = (image != null)
                                          ? image
                                          : 'https://th.bing.com/th/id/OIP.dfOyZLx5TURjqBMYs1-iIAD6D5?pid=ImgDet&w=577&h=576&rs=1',
                                  ),
                                );
                                print(
                                    'dropdownCountrydropdownCountry $dropdownCountry');
                                print(
                                    'dropdownCountrydropdownCountry $genderType');
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

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      image = File(pickedFile.path);
      uploadImage = true;
    });
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
