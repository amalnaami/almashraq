import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/model/country_model/country_model.dart';
import 'package:maktabeh_app/ui/auth/LoginScreen.dart';
import 'package:maktabeh_app/ui/auth/SignUpScreen/sign_up_screen.dart';
import 'package:maktabeh_app/ui/auth/login_bloc/login_bloc.dart';
import 'package:maktabeh_app/ui/auth/login_bloc/login_event.dart';
import 'package:maktabeh_app/ui/auth/login_bloc/login_state.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/HomeScreen.dart';
import 'package:maktabeh_app/ui/mainScreens/main_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as JSON;

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  var isLargeScreen = false;
  bool isSelected = false;
  final facebookLogin = FacebookLogin();
  GoogleSignIn _googleSignIn;
  final _bloc = sl<LoginBloc>();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    if (MediaQuery.of(context).size.height > 700) {
      isLargeScreen = true;
    } else {
      isLargeScreen = false;
    }
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, LoginState state) {
        error(state.error);
        if (state.successSocail) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            push(context, MainPage());
          });
          _bloc.add(ClearState());
        }
        return Stack(
          children: [
            Scaffold(
                extendBodyBehindAppBar: true,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  leading: Container(),
                  actions: [
                    InkWell(
                      onTap: () => push(context, MainPage()),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.blockSizeHorizontal * 2),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () => push(context, MainPage()),
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate('skip login'),
                                style: boldStyle.copyWith(color: Colors.white),
                              ),
                            ),
                            AppLocalizations.of(context).locale.toLanguageTag() ==
                                "en"
                                ? Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                  SizeConfig.blockSizeHorizontal * 2),
                              child: Image.asset(
                                  'assets/image/arrowback_icon.png'),
                            )
                                : Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                  SizeConfig.blockSizeHorizontal * 2),
                              child: RotatedBox(
                                  quarterTurns: 2,
                                  child: Image.asset(
                                      'assets/image/arrowback_icon.png')),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                body: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: SizeConfig.screenHeight,
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/image/start.png',
                              width: SizeConfig.screenWidth,
                              height: SizeConfig.screenHeight * 0.65,
                              fit: BoxFit.fill,
                            ),
                            Column(
                              children: [
                                SizedBox(height: SizeConfig.screenHeight * 0.15),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Image.asset(
                                    'assets/image/logo_image.png',
                                    height: isLargeScreen
                                        ? SizeConfig.screenHeight * 0.3
                                        : SizeConfig.screenHeight * 0.23,
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              height: isLargeScreen
                                  ? SizeConfig.screenHeight * 0.35
                                  : SizeConfig.screenHeight * 0.4,
                              width: SizeConfig.screenWidth,
                              bottom: 0,
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)
                                          .translate('Please sign in or register'),
                                      style: boldStyle.copyWith(fontSize: 14),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: SizeConfig.blockSizeVertical * 3,
                                          bottom: SizeConfig.blockSizeVertical * 2),
                                      child: appButton(
                                        buttonColor: primaryColor,
                                        context: context,
                                        text: AppLocalizations.of(context)
                                            .translate('sign in'),
                                        textColor: Colors.white,
                                        onTap: () => Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) => LoginScreen(),
                                        )),
                                      ),
                                    ),
                                    Container(
                                      width: SizeConfig.screenWidth * 0.9,
                                      height: SizeConfig.screenHeight * 0.06,
                                      child: FlatButton(
                                          color: Colors.white,
                                          onPressed: () => Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) =>
                                                SignupScreen(),
                                          )),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 1, color: primaryColor),
                                            borderRadius:
                                            BorderRadius.circular(10.0),
                                          ),
                                          child: Text(
                                              AppLocalizations.of(context)
                                                  .translate('Register'),
                                              style: regStyle.copyWith(
                                                  fontSize: 14,
                                                  color: primaryColor))),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical:
                                          SizeConfig.blockSizeVertical * 2),
                                      child: Text(
                                        AppLocalizations.of(context)
                                            .translate('or sign in with'),
                                        style: regStyle.copyWith(
                                            color: Color(0xFFD4D4D4),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          child: Container(
                                            width: 50,
                                            height: 50,
                                            child: Image.asset(
                                                'assets/image/facebook_icon.png'),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: seconderyColor,
                                            ),
                                          ),
                                          onTap: () async {
                                            print('facebookClick');
                                            final result = await facebookLogin
                                                .logIn(['email']);
                                            switch (result.status) {
                                              case FacebookLoginStatus.loggedIn:
                                                {
                                                  final token =
                                                      result.accessToken.token;
                                                  final graphResponse = await http.get(
                                                      'https://graph.facebook.com/v2.12/me?fields=name,picture.width(800).height(800),first_name,last_name,email&access_token=${token}');
                                                  final profile = JSON.jsonDecode(graphResponse.body);
                                                  if (profile != null) {
                                                    error('Success Register');
                                                 _bloc.add(SocialLogin((b) => b..acessToken = result.accessToken.token..typeSocial = 'facebook'));
                                                  }
                                                }
                                                break;
                                              case FacebookLoginStatus
                                                  .cancelledByUser:
                                              //_showCancelledMessage();
                                                break;
                                              case FacebookLoginStatus.error:
                                                print(
                                                    'FacebookLoginStatus Error : ${result.errorMessage}');
                                                break;
                                            }
                                          },
                                        ),
                                        SizedBox(
                                            width:
                                            SizeConfig.blockSizeHorizontal * 2),
                                        InkWell(
                                            child: Container(
                                              width: 50,
                                              height: 50,
                                              child: Image.asset(
                                                  'assets/image/google_icon.png'),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: seconderyColor,
                                              ),
                                            ),
                                            onTap: () async {
                                              try {
                                                _googleSignIn = GoogleSignIn(
                                                    scopes: <String>['email']);
                                                print(
                                                    '_googleSignIn $_googleSignIn');
                                                GoogleSignInAccount
                                                googleSignInAccount;
                                                if (googleSignInAccount == null) {
                                                  googleSignInAccount =
                                                  await _googleSignIn
                                                      .signIn()
                                                      .catchError((onError) {
                                                    return Future.error(
                                                        onError.toString());
                                                  });
                                                  print(googleSignInAccount ??
                                                      "error in google");
                                                }
                                                if (googleSignInAccount != null) {
                                                  //process success
                                                  final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
                                                  print(('gggooogle ${googleSignInAuthentication.accessToken}'));
                                                  print(('gggooogle ${googleSignInAuthentication.toString()}'));
                                              _bloc.add(SocialLogin((b) => b..acessToken = googleSignInAuthentication.accessToken ..typeSocial = 'google'));
                                                  error('Success Register'); }
                                                return Future.error(
                                                    " Future.error");
                                              } on PlatformException catch (e) {
                                                print(e.toString());
                                                Future.error(
                                                    "ePlatformExceptionin");
                                              } catch (e) {
                                                print('catch Error' + e.toString());
                                                Future.error(
                                                    "error in google sin in");
                                              }
                                            })
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            if (state.isLoading) loaderApp,
          ],
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
// _bloc.add(FaceBookLogin((b) => b
//   ..email = profile["email"] ?? profile["id"]
//   ..fullName = profile["name"]
//   ..image = profile["picture"]["data"]["url"]
//   ..tokenFacebook = token
//   ..id = int.parse(profile["id"])));
