import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maktabeh_app/core/app_language.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/common_widget/local_image.dart';
import 'package:maktabeh_app/ui/guide/guide_screen.dart';
import 'package:maktabeh_app/ui/mainScreens/all_mu_quote.dart';
import 'package:maktabeh_app/ui/mainScreens/all_my_review.dart';
import 'package:maktabeh_app/ui/start_screen/start_screen.dart';
import 'package:maktabeh_app/ui/user/MyQuote.dart';
import 'package:maktabeh_app/ui/user/SubscriptionScreen/SubscriptionScreen.dart';
import 'package:maktabeh_app/ui/user/editProfile.dart/editProfileScreen.dart';
import 'package:maktabeh_app/ui/language_page/language_screen.dart';

import '../../core/loaderApp.dart';
import 'SettingBloc/setting_bloc.dart';
import 'SettingBloc/setting_event.dart';
import 'SettingBloc/setting_state.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool showLang = false;
  int _radioValue;
  final _bloc = sl<SettingBloc>();
  @override
  void initState() {

    super.initState();
    _bloc.add(GetAppLanguage());
    _bloc.add(GetProfileData());

    _bloc.add(GetIsLogin());
    _bloc.add(GetIsLogin());
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _radioValue =
      AppLocalizations.of(context).locale.toLanguageTag() == 'en' ? 1 : 0;
      setState(() {});
    });

  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, SettingState state){
        if (state.success) {
          WidgetsBinding.instance.addPostFrameCallback((_) =>
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => StartScreen())));
        }
        return Scaffold(
          body: Stack(
            children: [
              ListView(
                padding: EdgeInsets.all(10),
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.15,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.all(10),
                    child:state.isLogin ?(state.profileUser!=null&&state.profileUser.data!=null)? Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(1000),
                            child: Image.network(
                              state.profileUser.data.image!=null?state.profileUser.data.image:"https://th.bing.com/th/id/OIP.BJLPreahM4_L0rTTUQAasQAAAA?pid=ImgDet&w=350&h=350&rs=1",
                              fit: BoxFit.fill,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                state.profileUser.data.username!=null?state.profileUser.data.username:"No Name",
                                style: regStyle,
                              ),
                              Text(
                                state.profileUser.data.email!=null?state.profileUser.data.email:"No Email",
                                style: regStyle,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.grey,
                                    size: 18,
                                  ),
                                  Text(
                                    state.profileUser.data.country!=null?state.profileUser.data.country:"No Country",
                                    style: regStyle.copyWith(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Center(
                          child: IconButton(
                            icon: Image.asset("assets/icons/Edit.png"),
                            onPressed: () => push(context, EfitProfileScreen()),
                          ),
                        )
                      ],
                    ):Container():Center(child: Text(' '),),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  (state.isLogin)?   Row(
                    children: [
                      optionSetting(
                        onTap: () => push(context, SubscriptionScreen()),
                        pathIcon: "assets/icons/Iconly-Broken-Discount.png",
                        title:
                        AppLocalizations.of(context).translate('my subscriptions'),
                      ),
                      optionSetting(
                        onTap: () =>

                            push(
                                context,
                              AllMyQuote())
                                // MyQuote(
                                //     fromHome: false,
                                //     title:
                                //       'my quotes',
                                //     )
                        ,
                        pathIcon: "assets/icons/Iconly-Broken-Chat.png",
                        title: AppLocalizations.of(context).translate('my quotes'),
                      ),
                      optionSetting(
                        onTap: () => push(context, AllMyReview()),
                        pathIcon: "assets/icons/Iconly-Broken-Star.png",
                        title: AppLocalizations.of(context).translate('my reviews'),
                      ),
                    ],
                  ):Container(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    AppLocalizations.of(context).translate('General Settings'),
                    style: boldStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 0.5,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  ExpansionTile(
                    children: [
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'English',
                                  style: regStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight:
                                      FontWeight.w500),
                                ),

                                Radio(
                                  value: 1,
                                  groupValue: _radioValue,
                                  onChanged:
                                      (int value) {
                                    setState(() {
                                      _radioValue = value;

                                      _bloc.add(
                                          ChangeLanguage(
                                                  (b) => b
                                                ..idLang =
                                                    value));
                                      _bloc.add(SetAppLanguage(
                                              (b) => b..language = AppLanguageKeys.EN));
                                      _bloc.add(GetAppLanguage());
                                      changeAppLanguage(AppLanguageKeys.EN);
                                    });
                                  },
                                  activeColor: primaryColor,
                                ),
                              ],
                            ),
                            // SizedBox(
                            //   width: SizeConfig.screenWidth * 0.1,
                            // ),
                            Row(
                              children: [
                                Text(
                                  'العربية',
                                  style: regStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                                Radio(
                                  value: 0,
                                  groupValue: _radioValue,
                                  onChanged: (int value) {
                                    setState(() {
                                      _radioValue = value;
                                      _bloc.add(
                                          ChangeLanguage(
                                                  (b) =>
                                              b
                                                ..idLang =
                                                    value));
                                      _bloc.add(SetAppLanguage(
                                              (b) => b..language = AppLanguageKeys.AR));
                                      _bloc.add(GetAppLanguage());
                                      changeAppLanguage(AppLanguageKeys.AR);
                                    });
                                  },
                                  activeColor: primaryColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                    trailing: SvgPicture.asset("assets/svg/arrow_down.svg"),
                    leading: ImageIcon(
                      AssetImage("assets/icons/Chat.png"),
                      size: 50,
                      color: Color(0xFF28ABE3),
                    ),
                    title: Row(
                      children: [
                        Text(
                          AppLocalizations.of(context).translate('App language'),
                          style: regStyle.copyWith(color: Colors.black),
                        ),
                        Expanded(child: SizedBox()),
                        Text(
                          AppLocalizations.of(context).locale.toLanguageTag() != 'en' ? "العربية" : "English",
                          style: regStyle.copyWith(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 0.5,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  InkWell(
                    onTap: (){
                      print('state.isLogin ${state.isLogin}');
                      state.isLogin ?      _bloc.add(LogOut()): Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => LanguageScreen()));
                    },
                    child: ListTile(
                        title: Text(
                          AppLocalizations.of(context).translate('sign out'),
                          style: regStyle.copyWith(color: Colors.black),
                        ),
                        trailing:   AppLocalizations
                            .of(context)
                            .locale
                            .toLanguageTag() == 'ar'
                            ?
                        SvgPicture.asset(
                            'assets/svg/arrow_forward.svg'
                        ):
                        RotatedBox(quarterTurns: 2,child:  SvgPicture.asset(
                            'assets/svg/arrow_forward.svg'
                        ),),
                        leading:
                        AppLocalizations.of(context).locale.toLanguageTag()=="ar"?
                        ImageIcon(
                          AssetImage("assets/icons/logout.png"),
                          size: 50,
                          color: Color(0xFF28ABE3),
                        ):RotatedBox(quarterTurns: 2,child: ImageIcon(
                          AssetImage("assets/icons/logout.png"),
                          size: 50,
                          color: Color(0xFF28ABE3),
                        ),)
                    ),
                  ),
                  Container(
                    height: 0.5,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                ],
              ),
              if (state.isLoading) loaderApp,
            ],
          ),
        );
      },
    );
  }

  Widget optionSetting({String title, String pathIcon, Function onTap}) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(5),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                pathIcon,
                height: 50,
                width: 50,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: regStyle.copyWith(color: seconderyColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
Directionality(
                                      textDirection: TextDirection.ltr,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'English',
                                                style: regStyle.copyWith(
                                                    fontSize: 12,
                                                    fontWeight:
                                                    FontWeight.w500),
                                              ),
                                              Radio(
                                                value: 1,
                                                groupValue: _radioValue,
                                                onChanged: (int value) {
                                                  setState(() {
                                                    _radioValue = value;

                                                    _bloc.add(
                                                        ChangeLanguage(
                                                                (b) => b
                                                              ..idLang =
                                                                  value));
                                                    _bloc.add(SetAppLanguage(
                                                            (b) => b..language = AppLanguageKeys.EN));
                                                    _bloc.add(GetAppLanguage());
                                                    changeAppLanguage(AppLanguageKeys.EN);
                                                  });
                                                },
                                                activeColor: primaryColor,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: SizeConfig.screenWidth *
                                                0.1,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'العربية',
                                                style: regStyle.copyWith(
                                                    fontSize: 12,
                                                    fontWeight:
                                                    FontWeight.w500),
                                              ),
                                              Radio(
                                                value: 0,
                                                groupValue: _radioValue,
                                                onChanged: (int value) {
                                                  setState(() {
                                                    _radioValue = value;
                                                    _bloc.add(
                                                        ChangeLanguage(
                                                                (b) => b
                                                              ..idLang =
                                                                  value));
                                                    _bloc.add(SetAppLanguage(
                                                            (b) => b..language = AppLanguageKeys.AR));
                                                    _bloc.add(GetAppLanguage());
                                                    changeAppLanguage(AppLanguageKeys.AR);
                                                  });
                                                },
                                                activeColor: primaryColor,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
 */
