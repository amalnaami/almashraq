import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/Compenant/supremeWriterPage.dart';
import 'Compenant/HomeCategoris.dart';
import 'Compenant/QuoteToday.dart';
import 'Compenant/ReviewToday.dart';
import 'Compenant/mainList.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // categoris //
          HomeCategoris(),
          // for you
          MainList(
            title: AppLocalizations.of(context).translate('for you'),
          ),
          // all books
          MainList(
            title: AppLocalizations.of(context).translate('all books'),
          ),
          //most review
          MainList(
            title: AppLocalizations.of(context).translate('most reviewed'),
          ),
          // recently add
          MainList(
            title: AppLocalizations.of(context).translate('recently added'),
          ),
          //QuoteToday
          QuoteToday(),
          // review today
          ReviewToday(),
          // writers
          SupremeWriterPage(),
        ],
      ),
    );
  }
}
