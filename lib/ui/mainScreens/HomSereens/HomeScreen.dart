import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/Compenant/supremeWriterPage.dart';
import 'package:maktabeh_app/ui/mainScreens/bloc/main_screen_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/bloc/main_screen_event.dart';
import 'package:maktabeh_app/ui/mainScreens/bloc/main_screen_state.dart';
import 'package:maktabeh_app/ui/mainScreens/moreBooksPage.dart';
import 'Compenant/HomeCategoris.dart';
import 'Compenant/QuoteToday.dart';
import 'Compenant/ReviewToday.dart';
import 'Compenant/mainList.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/ui/common_widget/BookCard.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/ui/book/book_screen.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _bloc = sl<MainScreenBloc>();


  @override
  void initState() {
    super.initState();
    _bloc.add(GetAllBooks());

  }
  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context, MainScreenState state) {
      error(state.error);
      return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              // categoris //
              HomeCategoris(),
             // for you
              MainList(
                title: AppLocalizations.of(context).translate('for you'),
              ),
              // all books
              // MainList(
              //   title: AppLocalizations.of(context).translate('all books'),
              // ),

              Container(
                padding: EdgeInsets.only(top: 10),
                height: h * 0.338,
                width: w,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8, left: 8, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 3,
                                color: Color(0xFF1A6C9E),
                                margin: const EdgeInsets.symmetric(horizontal: 5),
                              ),
                              Text(
                                AppLocalizations.of(context).translate('all books'),
                                style: boldStyle,
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () => push(context, MoreBookPage(title: AppLocalizations.of(context).translate('all books'),)),
                            child: Text(
                              AppLocalizations.of(context).translate('see more'),
                              style: lightStyle.copyWith(fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    (state.books.length!=0&&state.books!=null)?      Expanded(
                        child: ListView.builder(
                          itemCount: state.books.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return AllBookCard(
                              rate:  state.books[index].rate*1.0,
                              action:  () => push(context, BookScreen(
                                singleBook: state.books[index],
                              )),
                              image:state.books[index].image!=null?state.books[index].image:'https://crystalclearmaths.com/wp-content/uploads/2015/11/gray-background-31.jpg' ,
                              name:state.books[index].editor!=null?state.books[index].editor:'No Name' ,
                              author: state.books[index].getName(AppLocalizations.of(context).locale.languageCode),
                            );
                          },
                        )):Text(' '),
                  ],
                ),
              ),
              //most review
              MainList(
                title: AppLocalizations.of(context).translate('most reviewed'),
              ),
              // // recently add
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
          if (state.isLoading) loaderApp,
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
}
