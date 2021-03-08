import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:maktabeh_app/app/bloc/app_event.dart';
import 'package:maktabeh_app/core/app_language.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';

import 'package:maktabeh_app/ui/splash_screen/splash_screen.dart';

import '../injection.dart';
import 'bloc/app_bloc.dart';
import 'bloc/app_state.dart';

// class App extends StatefulWidget {
//   App({Key key}) : super(key: key);
//
//   @override
//   _AppState createState() => _AppState();
// }
//
// class _AppState extends State<App> {
//   // ignore: close_sinks
//   final _bloc = sl<AppBloc>();
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder(
//         bloc: _bloc,
//         builder: (BuildContext context, AppState state) {
//           print('Language App : ${state.appLanguage}');
//           return StreamBuilder(
//               stream: localeSubjectAppLanguage.stream.distinct(),
//               initialData: state.appLanguage == AppLanguageKeys.AR
//                   ? Locale('ar', '')
//                   : Locale('en', ''),
//               builder: (context, snapshotLanguage) {
//                 return MaterialApp(
//                     title: "Warehouses",
//                     home: Scaffold(
//                       backgroundColor: primaryColor,
//                     ),
//                     locale: snapshotLanguage.data == AppLanguageKeys.AR
//                         ? Locale('ar', '')
//                         : Locale('en', ''),
//                     localizationsDelegates: [
//                       AppLocalizations.delegate,
//                       GlobalMaterialLocalizations.delegate,
//                       GlobalWidgetsLocalizations.delegate,
//                     ],
//                     supportedLocales: [
//                       const Locale('en', ''), // English
//                       const Locale('ar', ''), // Arabic
//                     ]);
//               });
//         });
//   }
// }

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _bloc = sl<AppBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(IniEvent());
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
      builder: (BuildContext context, AppState state) {
        return StreamBuilder(
          stream: localeSubjectAppLanguage.stream.distinct(),
          initialData: state.appLanguage == AppLanguageKeys.AR
              ? Locale('ar', '')
              : Locale('en', ''),
          builder: (context, snapshot) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
              locale: snapshot.data == AppLanguageKeys.AR
                  ? Locale('ar', '')
                  : Locale('en', ''),
              localizationsDelegates: [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: [
                const Locale('en', ''), // English
                const Locale('ar', ''), // Arabic
              ],
              theme: ThemeData(
                primaryColor: primaryColor,
                accentColor: seconderyColor,
              ),
            );
          },
        );
      },
    );
  }
}
