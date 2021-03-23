import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/auth/SignUpScreen/sign_up_screen.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/listTileDrawer.dart';
import 'package:maktabeh_app/ui/common_widget/local_image.dart';
import 'package:maktabeh_app/ui/mainScreens/SettingBloc/setting_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/SettingBloc/setting_event.dart';
import 'package:maktabeh_app/ui/mainScreens/SettingBloc/setting_state.dart';
import 'package:maktabeh_app/ui/mainScreens/allReviewsPage.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/custom_drawer_bloc/custom_drawer_state.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/drawerPages/favPage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/drawerPages/rate_page.dart';
import 'package:maktabeh_app/ui/start_screen/start_screen.dart';

import '../../../injection.dart';
import 'custom_drawer_bloc/custom_drawer_bloc.dart';
import 'custom_drawer_bloc/custom_drawer_event.dart';
import 'drawerPages/aboutUsPage.dart';
import 'drawerPages/contactusPage.dart';

class CustomDrawer extends StatefulWidget {
  final Function(int) callback;
  final VoidCallback logoutCallback;
  final bool isLogin;
  final String image, country, name, email;

  const CustomDrawer(
      {this.callback,
      this.isLogin,
      this.country,
      this.name,
      this.email,
      this.image, this.logoutCallback});

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  final _bloc = sl<SettingBloc>();

  @override
  void initState() {
    super.initState();

    _bloc.add(GetIsLogin());

  }
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context, SettingState state) {
      if (state.success) {
        WidgetsBinding.instance.addPostFrameCallback((_) =>
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => StartScreen())));
        ChangeStatus();
      }
      return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
                 widget.isLogin ? Container(
                      padding: EdgeInsets.only(top: h * 0.06, bottom: 5),
                      // height: MediaQuery.of(context).size.height * 0.3,
                      width: double.infinity,
                      color: seconderyColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 3,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(1000),
                              child: Image.network(
                                widget.image,
                                height: double.infinity,
                                fit: BoxFit.fill,
                                width: double.infinity,
                              ),
                            ),
                          ),
                          Text(
                            widget.name,
                            style: regStyle.copyWith(color: Colors.white),
                          ),
                          Text(
                            widget.email,
                            style: regStyle.copyWith(color: Colors.white),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.white,
                              ),
                              Text(
                                widget.country,
                                style: regStyle.copyWith(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  : Container(
                      padding: EdgeInsets.only(top: h * 0.06, bottom: 5),
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: double.infinity,
                      color: seconderyColor,
                      alignment: Alignment.center,
                      child: Text(
                        AppLocalizations.of(context)
                            .translate('NO DATA FOR YOU'),
                        style: regStyle.copyWith(color: Colors.white),
                      ),
                    ),
              Align(
                alignment: Alignment.topRight,
                child: SafeArea(
                  child: IconButton(
                    icon:Icon( Icons.menu_sharp,color: Colors.white,),
                    // icon: ImageIcon(
                    //   AssetImage("assets/icons/Icon_sorting.png"),
                    //   color: Colors.white,
                    // ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
              child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              drawerListTile(
                  icon: buildLocalImage(
                    'assets/svg/home.svg',
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    widget.callback.call(0);
                  },
                  title: AppLocalizations.of(context).translate('main'),
                  selected: true),
              drawerListTile(
                icon: buildLocalImage(
                  'assets/svg/fav_off.svg',
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  (widget.isLogin)?   push(context, FavPage()): showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return alertDialog(ctx);
                      });
                },
                title: AppLocalizations.of(context).translate('favorite'),
              ),
              drawerListTile(
                icon: buildLocalImage(
                  'assets/svg/review.svg',
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AllReviewsPage(),
                  ));
                },
                title: AppLocalizations.of(context).translate('reviews'),
              ),
              drawerListTile(
                icon: buildLocalImage(
                  'assets/svg/rate.svg',
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  push(context, RateAppScreen());
                },
                title: AppLocalizations.of(context).translate("rate the app"),
              ),
              drawerListTile(
                icon: buildLocalImage(
                  'assets/svg/call.svg',
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  (widget.isLogin)?   push(context, ContactusPage()): showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return alertDialog(ctx);
                      });
                },
                title: AppLocalizations.of(context).translate('contact us'),
              ),
              drawerListTile(
                icon: buildLocalImage(
                  'assets/svg/info.svg',
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AboutusPage(),
                  ));
                },
                title:
                    AppLocalizations.of(context).translate("about almashreq"),
              ),
           drawerListTile(
                      icon: buildLocalImage(
                        'assets/svg/logout.svg',
                      ),
                      onTap: () {
                        state.isLogin
                            ? _bloc.add(LogOut())
                            : Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => StartScreen()));
                        // widget.logoutCallback.call();
                        // Navigator.of(context).pop();
                        // print('Adding');
                      },
                      title: AppLocalizations.of(context).translate('sign out'),
                    ),
            ],
          ))
        ],
      ),
    );});
  }
}
Widget alertDialog(BuildContext context) {
  return Dialog(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 4),
          child: buildLocalImage(
            'assets/svg/dialog.svg',
          ),
        ),
        Text(
          AppLocalizations.of(context).translate(
              'Sign in now...'),
          style: regStyle.copyWith(color: Color(0xFF9C9C9C)),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: SizeConfig.blockSizeVertical * 2,
              horizontal: SizeConfig.blockSizeHorizontal * 6),
          child: appButton(
            text: AppLocalizations.of(context).translate('Register'),
            context: context,
            onTap: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(
                  builder: (context) => SignupScreen()
              ));
            },
          ),
        ),
        InkWell(
          onTap: () {   Navigator.pop(context);},
          child: Text(
            AppLocalizations.of(context).translate('cancel'),
            style: regStyle.copyWith(
                color: Color(0xFF12416D), fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 20),
      ],
    ),
  );
}