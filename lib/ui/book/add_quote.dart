import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/auth/compnent/CustomField2.dart';
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

class AddQuoteScreen extends StatefulWidget {
  int bookid;
  AddQuoteScreen({this.bookid});
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
  @override
  Widget build(BuildContext context) {

    SizeConfig.init(context);

    return BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context, HomeState state) {
      error(state.error);
      if(state.successAddQuote) {
        print('successAddQuotesuccessAddQuote ${state.successAddQuote}');
        error(AppLocalizations.of(context).translate('adding successfully'));
        Timer(Duration(seconds: 1), () => Navigator.of(context).pop());

      }else{
        print('successAddQuotesuccessAddQuote1111 ${state.successAddQuote}');
      }
      return SafeArea(
        child: Scaffold(
      appBar: app_bar(AppLocalizations.of(context).translate('add quote'), context),
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
                    hintText: AppLocalizations.of(context).translate('quote'),
                  ),
                  // Container(
                  //   width: SizeConfig.screenWidth,
                  //   height: SizeConfig.screenHeight * 0.25,
                  //   color: Color(0xFFF5F5F5),
                  //   child: TextField(
                  //     textAlignVertical: TextAlignVertical.top,
                  //     expands: true,
                  //     maxLines: null,
                  //     decoration: InputDecoration(
                  //         border: OutlineInputBorder(
                  //           borderSide: BorderSide.none,
                  //           borderRadius: BorderRadius.circular(16),
                  //         ),
                  //         hintText: 'الإقتباس',
                  //         hintStyle: regStyle.copyWith(color: Color(0xFFC4C4C4))),
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: SizeConfig.blockSizeVertical * 6),
                    child: appButton(
                      context: context,
                      onTap: () {
                        _bloc.add(AddQuote((b) => b..text = textController.value.text
                          ..bookId=widget.bookid));
                      },
                      text: AppLocalizations.of(context).translate('add'),
                    ),
                  ),
                ],
              ),
            ),
            if(state.isLoading)
              loaderApp,
          ],
        ),
      ),
    ));
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
