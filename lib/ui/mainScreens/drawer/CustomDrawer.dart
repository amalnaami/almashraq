import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/listTileDrawer.dart';
import 'package:maktabeh_app/ui/common_widget/local_image.dart';
import 'package:maktabeh_app/ui/mainScreens/allReviewsPage.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/drawerPages/favPage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maktabeh_app/injection.dart';

import 'package:maktabeh_app/ui/mainScreens/SettingBloc/setting_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/SettingBloc/setting_event.dart';
import 'package:maktabeh_app/ui/mainScreens/SettingBloc/setting_state.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/drawerPages/rate_page.dart';

import 'drawerPages/aboutUsPage.dart';
import 'drawerPages/contactusPage.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final _bloc = sl<SettingBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(GetAppLanguage());

    _bloc.add(GetIsLogin());
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, SettingState state) {
        return Drawer(
          child: Column(
            children: [
              Stack(
                children: [
                  (state.isLogin)?    Container(
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
                            child: Image.asset(
                              "assets/image/3.jpg",
                              height: double.infinity,
                              fit: BoxFit.fill,
                              width: double.infinity,
                            ),
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context).translate(
                              'example name'),
                          style: regStyle.copyWith(color: Colors.white),
                        ),
                        Text(
                          "ao25332@gmail.com",
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
                              AppLocalizations.of(context).translate('Egypt'),
                              style: regStyle.copyWith(color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ): Container(
                    padding: EdgeInsets.only(top: h * 0.06, bottom: 5),
               height: MediaQuery.of(context).size.height * 0.3,
                    width: double.infinity,
                    color: seconderyColor,
                    alignment:Alignment.center ,
                    child:   Text(
                      AppLocalizations.of(context).translate(
                          'NO DATA FOR YOU'),
                      style: regStyle.copyWith(color: Colors.white),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: SafeArea(
                      child: IconButton(
                        icon: ImageIcon(
                          AssetImage("assets/icons/Icon_sorting.png"),
                          color: Colors.white,
                        ),
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
                          onTap: () {},
                          title: AppLocalizations.of(context).translate('main'),
                          selected: true),
                      drawerListTile(
                        icon: buildLocalImage(
                          'assets/svg/fav_off.svg',
                        ),
                        onTap: () => push(context, FavPage()),
                        title: AppLocalizations.of(context).translate(
                            'favorite'),
                      ),
                      drawerListTile(
                        icon: buildLocalImage(
                          'assets/svg/review.svg',
                        ),
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AllReviewsPage(),
                            )),
                        title: AppLocalizations.of(context).translate(
                            'reviews'),
                      ),
                      drawerListTile(
                        icon: buildLocalImage(
                          'assets/svg/rate.svg',
                        ),
                        onTap: () => push(context, RateAppScreen()),
                        title: AppLocalizations.of(context).translate(
                            "rate the app"),
                      ),
                      drawerListTile(
                        icon: buildLocalImage(
                          'assets/svg/call.svg',
                        ),
                        onTap: () => push(context, ContactusPage()),
                        title: AppLocalizations.of(context).translate(
                            'contact us'),
                      ),
                      drawerListTile(
                        icon: buildLocalImage(
                          'assets/svg/info.svg',
                        ),
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AboutusPage(),
                            )),
                        title: AppLocalizations.of(context).translate(
                            "about almashreq"),
                      ),
                      (state.isLogin)?   drawerListTile(
                        icon: buildLocalImage(
                          'assets/svg/logout.svg',
                        ),
                        onTap: () {},
                        title: AppLocalizations.of(context).translate(
                            'sign out'),
                      ):Container(),
                    ],
                  ))
            ],
          ),
        );
      },
    );
  }
}