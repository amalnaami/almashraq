import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/custom_drawer_bloc/custom_drawer_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/custom_drawer_bloc/custom_drawer_event.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/custom_drawer_bloc/custom_drawer_state.dart';
import 'package:maktabeh_app/ui/start_screen/start_screen.dart';
import 'package:maktabeh_app/ui/user/MyQuote.dart';
import 'HomSereens/HomeScreen.dart';
import 'NotificationScreen.dart';
import 'OuthorsScreen.dart';
import 'ProfileScreen.dart';
import 'categorisScreen.dart';
import 'drawer/CustomDrawer.dart';
import 'searchScreen.dart';

class MainPageProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainPage();
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  var _bottomNavIndex = 0;
  List<String> screenTitle = [];
  List<Widget> widgets = [];
  int inx = 0;
  final _bloc = sl<CustomDrawerBloc>();

  @override
  void initState() {
    if (widgets.isEmpty) {
      widgets = [
        HomeScreen(callback: (v) {
          setState(() {
            inx = v;
            _bottomNavIndex = v;
          });
        }),
        CategoriesScreen(),
        OuthorScreen(),
        MyQuote(fromHome: true, title: 'quotes'),
        SettingsScreen(),
      ];
    }
    if (screenTitle.isEmpty) {
      screenTitle = [
        "main", //AppLocalizations.of(context).translate('main'),
        "sections", //AppLocalizations.of(context).translate('sections'),
        "author", //AppLocalizations.of(context).translate('author'),
        "quotes", //AppLocalizations.of(context).translate('quotes'),
        "account", //AppLocalizations.of(context).translate('account'),
      ];
    }
    _bloc.add(IsLogin());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, CustomDrawerState state) {
        if (state.logout) {
          _bloc.add(ClearState());
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (_) => StartScreen()),
                (route) => false);
          });
        }
        return Scaffold(
            drawer: CustomDrawer(
              callback: (v) {
                setState(() {
                  inx = v;
                  _bottomNavIndex = v;
                });
              },
              logoutCallback: () => _bloc.add(Logout()),
              email: state.email,
              name: state.name,
              image: state.image,
              country: state.country,
              isLogin: state.isLogin,
            ),
            appBar: AppBar(
              title: Text(
                AppLocalizations.of(context)
                    .translate(screenTitle[_bottomNavIndex]),
                style: regStyle.copyWith(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              centerTitle: true,
              leading: Builder(
                builder: (context) => IconButton(
                  icon: Icon(Icons.menu_sharp),
                  // icon: ImageIcon(
                  //   AssetImage("assets/icons/Icon_sorting.png"),
                  //   color: Colors.white,
                  // ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
              actions: [
                IconButton(
                    icon: ImageIcon(
                      AssetImage("assets/icons/Search.png"),
                      color: Colors.white,
                    ),
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SearchScreen(),
                        ))),
                (state.isLogin)
                    ? IconButton(
                        icon: ImageIcon(
                          AssetImage("assets/icons/Notification.png"),
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => NotificationScreen(),
                          ));
                        }
                        // Navigator.of(context).push(MaterialPageRoute(
                        //                  builder: (context) => NotificationScreen(),
                        //                )
                        //
                        // )
                        )
                    : Container(),
              ],
            ),
            extendBody: true,
            body: state.isLoading
                ? Center(
                    child: loaderApp,
                  )
                : widgets[_bottomNavIndex],
            bottomNavigationBar: Card(
              elevation: 4,
              margin: EdgeInsets.only(bottom: 0.0),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
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
                    _bottomNavIndex = index;
                  });
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
            )
            // AppBottomBar(
            //   onTap: (v) {
            //     setState(() {
            //       _bottomNavIndex = v;
            //     });
            //   },
            // ),
            );
      },
    );
  }
}
