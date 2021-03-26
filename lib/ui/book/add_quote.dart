import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/auth/compnent/CustomField2.dart';
import 'package:maktabeh_app/ui/book/quotes_screen.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/home_bloc/home_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/home_bloc/home_event.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/home_bloc/home_state.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import '../../injection.dart';
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../common_widget/local_image.dart';

class AddQuoteScreen extends StatefulWidget {
  int bookid;
  bool isLogin;
  String image;

  AddQuoteScreen({this.bookid, this.isLogin, this.image});

  @override
  _AddQuoteScreenState createState() => _AddQuoteScreenState();
}

class _AddQuoteScreenState extends State<AddQuoteScreen> {
  final _bloc = sl<HomeBloc>();
  TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  backMethod() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Navigator.of(context).pop();
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return QuotesScreen(
            bookid: widget.bookid,
            isLogin: widget.isLogin,
            image: widget.image,
          );
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return WillPopScope(
      onWillPop: () async {
        return await backMethod();
      },
      child: BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context, HomeState state) {
          error(state.error);
          if (state.success) {
            textController.text = '';
            error(
                AppLocalizations.of(context).translate('adding successfully'));
          }
          return SafeArea(
              child: Scaffold(
            appBar: AppBar(
              title: Text(
                AppLocalizations.of(context).translate('add quote'),
                style: regStyle.copyWith(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              centerTitle: true,
              elevation: 0,
              leading: InkWell(
                onTap: () {
                  backMethod();
                },
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: buildLocalImage(
                    AppLocalizations.of(context).locale.toLanguageTag() == 'ar'
                        ? 'assets/svg/arrow_back_white.svg'
                        : 'assets/svg/arrow_forward.svg',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.blockSizeVertical * 2,
                  horizontal: SizeConfig.blockSizeHorizontal * 4),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: SizeConfig.blockSizeVertical * 2),
                          child: Text(
                            AppLocalizations.of(context).translate('add quote'),
                            style: boldStyle.copyWith(color: Colors.black),
                          ),
                        ),
                        CustomFeild2(
                          lines: 8,
                          controller: textController,
                          hintText:
                              AppLocalizations.of(context).translate('quote'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: SizeConfig.blockSizeVertical * 6),
                          child: appButton(
                            context: context,
                            onTap: () {
                              _bloc.add(AddQuote((b) => b
                                ..text = textController.value.text
                                ..bookId = widget.bookid));
                            },
                            text: AppLocalizations.of(context).translate('add'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (state.isLoading) loaderApp,
                ],
              ),
            ),
          ));
        },
      ),
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
