import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';

class AppBottomBar extends StatefulWidget {
  final Function onTap;

  const AppBottomBar({Key key, this.onTap}) : super(key: key);
  @override
  _AppBottomBarState createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  int inx = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.only(bottom: 0.0),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontSize: 10),
        unselectedLabelStyle: TextStyle(fontSize: 10),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: primaryColor,
        currentIndex: inx,
        onTap: (index) {
          setState(() {
            inx = index;
          });
          widget.onTap(index);
        },
        items: [
          BottomNavigationBarItem(
            label: AppLocalizations.of(context).translate('main'),
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageIcon(
                AssetImage("assets/icons/Home.png"),
                size: 20,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: AppLocalizations.of(context).translate('sections'),
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageIcon(
                AssetImage(
                  "assets/icons/Categoris.png",
                ),
                size: 20,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: AppLocalizations.of(context).translate('author'),
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageIcon(
                AssetImage("assets/icons/Profile.png"),
                size: 20,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: AppLocalizations.of(context).translate('quotes'),
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageIcon(
                AssetImage("assets/icons/Chat.png"),
                size: 20,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: AppLocalizations.of(context).translate('account'),
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageIcon(
                AssetImage("assets/icons/Setting.png"),
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
