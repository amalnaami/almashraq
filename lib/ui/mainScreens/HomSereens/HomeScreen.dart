import 'dart:io';

import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/book/all_books.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/Compenant/supremeWriterPage.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/book_list_view.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/home_bloc/home_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/home_bloc/home_event.dart';
import 'Compenant/HomeCategoris.dart';
import 'Compenant/QuoteToday.dart';
import 'Compenant/ReviewToday.dart';
import 'Compenant/mainList.dart';
import 'home_bloc/home_state.dart';

class HomeScreen extends StatefulWidget {
  final Function(int) callback;
  const HomeScreen({this.callback});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _bloc = sl<HomeBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(GetHomePage());
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, HomeState state) {
        error(state.error);
        return Scaffold(
          body: Stack(
            children: [
              ListView(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 12,bottom: 12,left: 4,right: 4),
                      child: AdmobBanner(
                          adUnitId: getBannerAdUnitId(),
                          adSize: AdmobBannerSize.FULL_BANNER),
                      width: MediaQuery.of(context).size.width),
                  // categoris //
                  if (state.categories != null && state.categories.isNotEmpty)
                    HomeCategoris(categories: state.categories, callback: widget.callback,),
                  // for you
                  if (state.featuredBooks != null &&
                      state.featuredBooks.isNotEmpty)
                    MainList(
                      goto: BookListView(
                        AppLocalizations.of(context).translate('for you'),
                        state.featuredBooks,
                      ),
                      books: state.featuredBooks,
                      title: AppLocalizations.of(context).translate('for you'),
                    ),
                  // all books
                  if (state.allBooks != null && state.allBooks.isNotEmpty)
                    MainList(
                      goto: AllBooksScreen(AppLocalizations.of(context).translate('all books')),
                      books: state.allBooks,
                      title:
                          AppLocalizations.of(context).translate('all books'),
                    ),
                  //most review
                  if (state.mostReviewedBooks != null &&
                      state.mostReviewedBooks.isNotEmpty)
                    MainList(
                      goto: BookListView(
                        AppLocalizations.of(context)
                            .translate('most reviewed'),
                        state.mostReviewedBooks,
                      ),
                      books: state.mostReviewedBooks,
                      title: AppLocalizations.of(context)
                          .translate('most reviewed'),
                    ),
                  // recently add
                  if (state.latestBooks != null && state.latestBooks.isNotEmpty)
                    MainList(
                      goto: BookListView(
                        AppLocalizations.of(context)
                            .translate('recently added'),
                        state.latestBooks,
                      ),
                      books: state.latestBooks,
                      title: AppLocalizations.of(context)
                          .translate('recently added'),
                    ),
                  //QuoteToday
                  if (state.todayQuote != null) QuoteToday(state.todayQuote, widget.callback),
                  // review today
                  if (state.todayReview != null) ReviewToday(state.todayReview),
                  // writers
                  if (state.authors != null && state.authors.isNotEmpty)
                    SupremeWriterPage(state.authors, seeMoreCallback: widget.callback,),
                ],
              ),
              if (state.isLoading) loaderApp
            ],
          ),
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

  String getBannerAdUnitId() {
    if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/2934735716';
    } else if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111';
    }
    return null;
  }
}
