import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/CustomNavBar.dart';
import 'package:maktabeh_app/ui/user/MyQuote.dart';
import 'HomSereens/HomeScreen.dart';
import 'NotificationScreen.dart';
import 'OuthorsScreen.dart';
import 'ProfileScreen.dart';
import 'categorisScreen.dart';
import 'drawer/CustomDrawer.dart';
import 'searchScreen.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  var _bottomNavIndex = 0;
  List<String> screenTitle = [];
  List<Widget> widgets = [];
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    if(widgets.isEmpty){
      widgets = [
        HomeScreen(),
        CategoriesScreen(),
        OuthorScreen(),
        MyQuote(fromHome:true ,title: 'quotes'),
        SettingsScreen(),
      ];
    }
    if(screenTitle.isEmpty){
      screenTitle = [
       "main", //AppLocalizations.of(context).translate('main'),
       "sections", //AppLocalizations.of(context).translate('sections'),
        "author",//AppLocalizations.of(context).translate('author'),
        "quotes",//AppLocalizations.of(context).translate('quotes'),
        "account",//AppLocalizations.of(context).translate('account'),
      ];
    }
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text(
      AppLocalizations.of(context).translate(screenTitle[_bottomNavIndex]),
          style: regStyle.copyWith(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            icon: ImageIcon(
              AssetImage("assets/icons/Icon_sorting.png"),
              color: Colors.white,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
            IconButton(
              icon: ImageIcon(
                AssetImage("assets/icons/Search.png"),
                color: Colors.white,
              ),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SearchScreen(),
                  ))),
          IconButton(
              icon: ImageIcon(
                AssetImage("assets/icons/Notification.png"),
                color: Colors.white,
              ),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NotificationScreen(),
                  ))),
        ],
      ),
      extendBody: true,
      body: widgets[_bottomNavIndex],
      bottomNavigationBar: AppBottomBar(
        onTap: (v) {
          setState(() {
            _bottomNavIndex = v;
          });
        },
      ),
    );
  }
}
