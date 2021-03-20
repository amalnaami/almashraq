import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/auth/compnent/CustomField2.dart';
import 'package:maktabeh_app/ui/auth/login_bloc/login_bloc.dart';
import 'package:maktabeh_app/ui/auth/login_bloc/login_state.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/mainScreens/main_screen.dart';
import 'login_bloc/login_event.dart';
import 'resetPass/confairmEmailScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _bloc = sl<LoginBloc>();
  TextEditingController userNameController;
  TextEditingController passwordController;
  bool _showPassword = false;

  @override
  void initState() {
    super.initState();
    userNameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _bloc.close();
    _bloc.add(GetIsLogin());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, LoginState state) {
        error(state.error);
        if(state.successLogin) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) { Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
              MainPageProvider()), (Route<dynamic> route) => false);});
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
                      height: h * 0.5,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/image/login.png',
                            width: w,
                            // height: SizeConfig.screenHeight * 0.7,
                            fit: BoxFit.fill,
                          ),

                          // Container(
                          //   child: Positioned(
                          //     child: Image.asset(
                          //       "assets/image/book-library.png",
                          //     ),
                          //     top: -100,
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
                          //     top: -100,
                          //     right: -150,
                          //     // bottom: 15,
                          //     left: -50,
                          //   ),
                          // ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(top: h * 0.1),
                              child: Image.asset(
                                "assets/image/Group.png",
                                height: 170,
                                width: 170,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              AppLocalizations.of(context).translate('sign in'),
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
                            controller: userNameController,
                            title: AppLocalizations.of(context)
                                .translate('user name'),
                            hintText: AppLocalizations.of(context)
                                .translate('example name'),
                            headIcon: "assets/icons/Profile.png",
                            // iconPath: "assets/svg/Profile.svg",
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  ImageIcon(
                                    AssetImage("assets/icons/Lock.png",),
                                    size: 20,
                                    color: primaryColor,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                      AppLocalizations.of(context)
                                          .translate('password'),
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
                              obscureText: !_showPassword,
                              controller: passwordController,
                              maxLines:1,
                              decoration: InputDecoration(
                                fillColor: Color(0xFFFBFBFB),
                                filled: true,
                                hintStyle: regStyle.copyWith(color: Color(0xFFC4C4C4)),
                                hintText: '*********',
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

                                contentPadding:
                                EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                          ),
                          // CustomFeild2(
                          //   controller: passwordController,
                          //   title: AppLocalizations.of(context)
                          //       .translate('password'),
                          //   hintText: "*********",
                          //   headIcon: "assets/icons/Lock.png",
                          //   // iconPath: "assets/svg/Lock.svg",
                          //   visab: true,
                          // ),
                          SizedBox(
                            height: 5,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: InkWell(
                              onTap: () =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ConfirmEmailScreen(),
                              )),
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate("forget password?"),
                                style: regStyle.copyWith(
                                  color: Color(0xFFD4D4D4),
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          appButton(
                            buttonColor: primaryColor,
                            context: context,
                            text: AppLocalizations.of(context)
                                .translate('sign in'),
                            onTap: () {
                              if (userNameController.value.text == null ||
                                  userNameController.value.text.isEmpty) {
                                error(AppLocalizations.of(context)
                                    .translate('username can not be empty'));
                                return;
                              } else if (passwordController.value.text ==
                                      null ||
                                  passwordController.value.text.isEmpty) {
                                error(AppLocalizations.of(context)
                                    .translate('password can not be empty'));
                                return;
                              } else {
                                _bloc.add(
                                  Login((b) => b
                                    ..password = passwordController.value.text
                                    ..userName = userNameController.value.text,),
                                );
                              }
                            },
                            textColor: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              AppLocalizations.of(context)
                                  .translate("or sign in with"),
                              style: regStyle.copyWith(
                                  color: Color(0xFFD4D4D4),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                child:
                                    Image.asset('assets/image/google_icon.png'),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: seconderyColor,
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: 50,
                                child: Image.asset(
                                    'assets/image/facebook_icon.png'),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: seconderyColor,
                                ),
                              ),
                            ],
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
