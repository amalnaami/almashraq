import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/about_us/about_us_screen.dart';
import 'package:maktabeh_app/ui/common_widget/listTileDrawer.dart';
import 'package:maktabeh_app/ui/common_widget/local_image.dart';
import 'package:maktabeh_app/ui/common_widget/networkImage.dart';
import 'package:maktabeh_app/ui/contact_us/contact_us_screen.dart';
import 'package:maktabeh_app/ui/mainScreens/allReviewsPage.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/drawerPages/favPage.dart';

import 'drawerPages/aboutUsPage.dart';
import 'drawerPages/contactusPage.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
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
                      AppLocalizations.of(context).translate('example name'),
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
                  title:  AppLocalizations.of(context).translate('main'),
                  selected: true),
              drawerListTile(
                icon: buildLocalImage(
                  'assets/svg/fav_off.svg',
                ),
                onTap: () => push(context, FavPage()),
                title: AppLocalizations.of(context).translate('favorite'),
              ),
              drawerListTile(
                icon: buildLocalImage(
                  'assets/svg/review.svg',
                ),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AllReviewsPage(),
                )),
                title: AppLocalizations.of(context).translate('reviews'),
              ),
              drawerListTile(
                icon: buildLocalImage(
                  'assets/svg/rate.svg',
                ),
                onTap: () {},
                title: AppLocalizations.of(context).translate("rate the app"),
              ),
              drawerListTile(
                icon: buildLocalImage(
                  'assets/svg/call.svg',
                ),
                onTap: () => push(context, ContactusPage()),
                title: AppLocalizations.of(context).translate('contact us'),
              ),
              drawerListTile(
                icon: buildLocalImage(
                  'assets/svg/info.svg',
                ),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AboutusPage(),
                )),
                title: AppLocalizations.of(context).translate("about almashreq"),
              ),
              drawerListTile(
                icon: buildLocalImage(
                  'assets/svg/logout.svg',
                ),
                onTap: () {},
                title: AppLocalizations.of(context).translate('sign out'),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
