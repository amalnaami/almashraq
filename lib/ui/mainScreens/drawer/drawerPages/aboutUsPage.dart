import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/about_us/bloc/about_us_bloc.dart';
import 'package:maktabeh_app/ui/about_us/bloc/about_us_event.dart';
import 'package:maktabeh_app/ui/about_us/bloc/about_us_state.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';

class AboutusPage extends StatefulWidget {
  @override
  _AboutusPageState createState() => _AboutusPageState();
}

class _AboutusPageState extends State<AboutusPage> {
  final _bloc = sl<AboutUsBloc>();
  @override
  void initState() {
    super.initState();
    _bloc.add(GetAboutUs());
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, AboutUsState state) {
        print('${state.aboutUs?.translations}');
        error(state.error);
        return Scaffold(
          appBar: customAppBar(context, AppLocalizations.of(context).translate("about almashreq")),
          body: Stack(
            children: [
              ListView(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 170,
                    width: 170,
                    child: Image.asset("assets/image/lib_image.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: state.aboutUs == null ? Container() : Text(
                      '${state.aboutUs?.getText(AppLocalizations.of(context).locale.languageCode)}',
                      style: TextStyle(color: Colors.black),
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
