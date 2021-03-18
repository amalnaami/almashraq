import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/about_us/bloc/about_us_bloc.dart';
import 'package:maktabeh_app/ui/about_us/bloc/about_us_event.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';

import 'bloc/about_us_state.dart';

class AboutUsScreen extends StatefulWidget {
  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  final _bloc = sl<AboutUsBloc>();
  @override
  void initState() {
    super.initState();
    _bloc.add(GetAboutUs());
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, AboutUsState state) {
        error(state.error);
        return SafeArea(
            child: Scaffold(
              appBar: app_bar(AppLocalizations.of(context).translate('about almashreq library'), context),
              body: Stack(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Container(
                            height: SizeConfig.screenHeight * 0.25,
                            child: Image.asset(
                              'assets/image/lib_image.png',
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: SizeConfig.devicePixelRatio),
                            width: SizeConfig.screenWidth,
                            child: Text(
                              state.aboutUs.getText(AppLocalizations.of(context).locale.languageCode),
                              style: regStyle.copyWith(
                                  fontSize: 12, height: 1.5, color: Color(0xFF5D5D5D)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  if(state.isLoading)
                    loaderApp,
                ],
              ),
            ),);
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
