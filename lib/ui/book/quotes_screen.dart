import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/book/add_quote.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';

import 'package:maktabeh_app/ui/common_widget/soshialBar.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/Compenant/QuoteCard.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/home_bloc/home_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/home_bloc/home_event.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/home_bloc/home_state.dart';

import '../../injection.dart';

class QuotesScreen extends StatefulWidget {
  bool isLogin;
  int bookid;

  QuotesScreen({this.isLogin, this.bookid});

  @override
  _QuotesScreenState createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
  final _bloc = sl<HomeBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(GetQuotesByBookId((b) => b..bookId = widget.bookid));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, HomeState state) {
        error(state.error);
        return SafeArea(
          child: Scaffold(
            appBar: app_bar(
                AppLocalizations.of(context).translate('quotes'), context),
            body: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal * 4),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        (widget.isLogin)
                            ? Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: SizeConfig.blockSizeVertical * 2),
                                child: appButton(
                                  context: context,
                                  onTap: () {
                                    // state.allReview=
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => AddQuoteScreen(
                                          bookid: widget.bookid,
                                          isLogin: widget.isLogin),
                                    ));
                                  },
                                  text: AppLocalizations.of(context)
                                      .translate('add quote'),
                                ),
                              )
                            : Container(),
                        Divider(
                          thickness: 1,
                          color: Color(0xFFE5E5E5),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: SizeConfig.blockSizeVertical * 2),
                          child: Text(
                            AppLocalizations.of(context)
                                .translate('All quotes'),
                            style: boldStyle.copyWith(color: Colors.black),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          color: Color(0xFFE5E5E5),
                        ),
                        (state.allQuote.length != 0)
                            ? ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: state.allQuote.length,
                                itemBuilder: (context, index) {
                                  return QuoteCard(quote: state.allQuote[index],);
                                })
                            : Center(
                                child: Text('No Quote'),
                              )
                      ],
                    ),
                  ),
                  if (state.isLoading) loaderApp,
                ],
              ),
            ),
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

Widget quoteCard(String nameBook, String quotes, String image, String author) {
  return Card(
    margin: EdgeInsets.all(10),
    child: Container(
      height: SizeConfig.screenHeight * 0.2,
      width: 500,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                image,
                height: double.infinity,
                fit: BoxFit.fill,
                width: double.infinity,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  quotes,
                  // "ما العمر الا لحظات",
                  style: regStyle.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        ImageIcon(
                          AssetImage("assets/icons/Profile.png"),
                          color: primaryColor,
                          size: 12,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          nameBook,
                          // "الأوابد",
                          style: lightStyle.copyWith(
                              color: Colors.black, fontSize: 10),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        ImageIcon(
                          AssetImage("assets/icons/book.png"),
                          color: primaryColor,
                          size: 12,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          author,
                          //"عبدالوهاب عزام",
                          style: lightStyle.copyWith(
                              color: Colors.black, fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
                SoshialBar('')
              ],
            ),
          )
        ],
      ),
    ),
  );
}
