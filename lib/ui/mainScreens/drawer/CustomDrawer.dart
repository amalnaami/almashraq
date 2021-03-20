import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/listTileDrawer.dart';
import 'package:maktabeh_app/ui/common_widget/local_image.dart';
import 'package:maktabeh_app/ui/mainScreens/allReviewsPage.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/custom_drawer_bloc/custom_drawer_state.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/drawerPages/favPage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/drawerPages/rate_page.dart';
import 'package:maktabeh_app/ui/start_screen/start_screen.dart';

import 'custom_drawer_bloc/custom_drawer_bloc.dart';
import 'custom_drawer_bloc/custom_drawer_event.dart';
import 'drawerPages/aboutUsPage.dart';
import 'drawerPages/contactusPage.dart';

class CustomDrawer extends StatefulWidget {
  final Function(int) callback;

  const CustomDrawer({this.callback});

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  CustomDrawerBloc _bloc;
  @override
  void initState() {
    _bloc = BlocProvider.of<CustomDrawerBloc>(context);
    _bloc.add(IsLogin());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder<CustomDrawerBloc, CustomDrawerState>(
      builder: (BuildContext context, CustomDrawerState state) {
        if(state.logout) {
          //WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) => StartScreen()), (route) => false);
          _bloc.add(ClearState());
        }
        print('state.logout ${state.logout}');
        return Drawer(
          child: Column(
            children: [
              Stack(
                children: [
                  (state.isLogin)
                      ? Container(
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
                                    state.image,
                                    height: double.infinity,
                                    fit: BoxFit.fill,
                                    width: double.infinity,
                                  ),
                                ),
                              ),
                              Text(
                                state.name,
                                style: regStyle.copyWith(color: Colors.white),
                              ),
                              Text(
                                state.email,
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
                                    state.country,
                                    style:
                                        regStyle.copyWith(color: Colors.white),
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
                      push(context, FavPage());
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
                    title:
                        AppLocalizations.of(context).translate("rate the app"),
                  ),
                  drawerListTile(
                    icon: buildLocalImage(
                      'assets/svg/call.svg',
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      push(context, ContactusPage());
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
                    title: AppLocalizations.of(context)
                        .translate("about almashreq"),
                  ),
                  (state.isLogin)
                      ? drawerListTile(
                          icon: buildLocalImage(
                            'assets/svg/logout.svg',
                          ),
                          onTap: () {
                            _bloc.add(Logout());
                            print('Adding');
                          },
                          title: AppLocalizations.of(context)
                              .translate('sign out'),
                        )
                      : Container(),
                ],
              ))
            ],
          ),
        );
      },
    );
    // return BlocBuilder(
    //   cubit: _bloc,
    //   builder: (BuildContext context, CustomDrawerState state) {
    //     return Drawer(
    //       child: Column(
    //         children: [
    //           Stack(
    //             children: [
    //               (state.isLogin)
    //                   ? Container(
    //                       padding: EdgeInsets.only(top: h * 0.06, bottom: 5),
    //                       // height: MediaQuery.of(context).size.height * 0.3,
    //                       width: double.infinity,
    //                       color: seconderyColor,
    //                       child: Column(
    //                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                         children: [
    //                           Container(
    //                             height: 100,
    //                             width: 100,
    //                             decoration: BoxDecoration(
    //                               shape: BoxShape.circle,
    //                               border: Border.all(
    //                                 color: Colors.white,
    //                                 width: 3,
    //                               ),
    //                             ),
    //                             child: ClipRRect(
    //                               borderRadius: BorderRadius.circular(1000),
    //                               child: Image.network(
    //                                 state.image,
    //                                 height: double.infinity,
    //                                 fit: BoxFit.fill,
    //                                 width: double.infinity,
    //                               ),
    //                             ),
    //                           ),
    //                           Text(
    //                             state.name,
    //                             style: regStyle.copyWith(color: Colors.white),
    //                           ),
    //                           Text(
    //                             state.email,
    //                             style: regStyle.copyWith(color: Colors.white),
    //                           ),
    //                           Row(
    //                             mainAxisSize: MainAxisSize.min,
    //                             children: [
    //                               Icon(
    //                                 Icons.location_on_outlined,
    //                                 color: Colors.white,
    //                               ),
    //                               Text(
    //                                 state.country,
    //                                 style:
    //                                     regStyle.copyWith(color: Colors.white),
    //                               ),
    //                             ],
    //                           )
    //                         ],
    //                       ),
    //                     )
    //                   : Container(
    //                       padding: EdgeInsets.only(top: h * 0.06, bottom: 5),
    //                       height: MediaQuery.of(context).size.height * 0.3,
    //                       width: double.infinity,
    //                       color: seconderyColor,
    //                       alignment: Alignment.center,
    //                       child: Text(
    //                         AppLocalizations.of(context)
    //                             .translate('NO DATA FOR YOU'),
    //                         style: regStyle.copyWith(color: Colors.white),
    //                       ),
    //                     ),
    //               Align(
    //                 alignment: Alignment.topRight,
    //                 child: SafeArea(
    //                   child: IconButton(
    //                     icon: ImageIcon(
    //                       AssetImage("assets/icons/Icon_sorting.png"),
    //                       color: Colors.white,
    //                     ),
    //                     onPressed: () => Navigator.pop(context),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //           Expanded(
    //               child: ListView(
    //             padding: EdgeInsets.all(10),
    //             children: [
    //               drawerListTile(
    //                   icon: buildLocalImage(
    //                     'assets/svg/home.svg',
    //                   ),
    //                   onTap: () {
    //                     Navigator.of(context).pop();
    //                     widget.callback.call(0);
    //                   },
    //                   title: AppLocalizations.of(context).translate('main'),
    //                   selected: true),
    //               drawerListTile(
    //                 icon: buildLocalImage(
    //                   'assets/svg/fav_off.svg',
    //                 ),
    //                 onTap: () {
    //                   Navigator.of(context).pop();
    //                   push(context, FavPage());
    //                 },
    //                 title: AppLocalizations.of(context).translate('favorite'),
    //               ),
    //               drawerListTile(
    //                 icon: buildLocalImage(
    //                   'assets/svg/review.svg',
    //                 ),
    //                 onTap: () {
    //                   Navigator.of(context).pop();
    //                   Navigator.of(context).push(MaterialPageRoute(
    //                     builder: (context) => AllReviewsPage(),
    //                   ));
    //                 },
    //                 title: AppLocalizations.of(context).translate('reviews'),
    //               ),
    //               drawerListTile(
    //                 icon: buildLocalImage(
    //                   'assets/svg/rate.svg',
    //                 ),
    //                 onTap: () {
    //                   Navigator.of(context).pop();
    //                   push(context, RateAppScreen());
    //                 },
    //                 title:
    //                     AppLocalizations.of(context).translate("rate the app"),
    //               ),
    //               drawerListTile(
    //                 icon: buildLocalImage(
    //                   'assets/svg/call.svg',
    //                 ),
    //                 onTap: () {
    //                   Navigator.of(context).pop();
    //                   push(context, ContactusPage());
    //                 },
    //                 title: AppLocalizations.of(context).translate('contact us'),
    //               ),
    //               drawerListTile(
    //                 icon: buildLocalImage(
    //                   'assets/svg/info.svg',
    //                 ),
    //                 onTap: () {
    //                   Navigator.of(context).pop();
    //                   Navigator.of(context).push(MaterialPageRoute(
    //                     builder: (context) => AboutusPage(),
    //                   ));
    //                 },
    //                 title: AppLocalizations.of(context)
    //                     .translate("about almashreq"),
    //               ),
    //               (state.isLogin)
    //                   ? drawerListTile(
    //                       icon: buildLocalImage(
    //                         'assets/svg/logout.svg',
    //                       ),
    //                       onTap: () {
    //                         _bloc.add(Logout());
    //                       },
    //                       title: AppLocalizations.of(context)
    //                           .translate('sign out'),
    //                     )
    //                   : Container(),
    //             ],
    //           ))
    //         ],
    //       ),
    //     );
    //   },
    // );
  }
}
