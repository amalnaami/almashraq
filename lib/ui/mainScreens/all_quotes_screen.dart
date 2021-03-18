import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/Compenant/QuoteCard.dart';
import 'package:maktabeh_app/ui/mainScreens/all_quote_bloc/all_quote_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/all_quote_bloc/all_quote_event.dart';

import 'all_quote_bloc/all_quote_state.dart';

class AllQuote extends StatefulWidget {
  @override
  _AllQuoteState createState() => _AllQuoteState();
}

class _AllQuoteState extends State<AllQuote> {
  final _bloc = sl<AllQuoteBloc>();
  @override
  void initState() {
    super.initState();
    _bloc.add(GetQuotes());
    _bloc.add(GetIsLogin());
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, AllQuoteState state) {
        error(state.error);
        return Scaffold(
          appBar: customAppBar(context, AppLocalizations.of(context).translate('All quotes')),
          body: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(AppLocalizations.of(context).translate('All quotes'), style: boldStyle),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.quotes.length,
                      itemBuilder: (context, index) {
                        return QuoteCard(title: 'quotes', quote: state.quotes[index],);
                      },
                    ),
                  ),
                ],
              ),
              if(state.isLoading)
                loaderApp
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
          backgroundColor: primaryColor,
          textColor: Colors.white,
          fontSize: 16.0);
      _bloc.add(ClearState());
    }
  }
}
