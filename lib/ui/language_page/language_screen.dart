import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maktabeh_app/core/app_language.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/guide/guide_screen.dart';
import 'package:maktabeh_app/ui/language_page/bloc/language_bloc.dart';
import 'package:maktabeh_app/ui/language_page/bloc/language_event.dart';
import 'package:maktabeh_app/ui/language_page/bloc/language_event.dart';
import 'package:maktabeh_app/ui/start_screen/start_screen.dart';
import 'package:maktabeh_app/ui/widgets/widgets.dart';

import 'bloc/language_state.dart';

class LanguageScreen extends StatefulWidget {
  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  var isLargeScreen = false;
  int _radioValue;
  final _bloc = sl<LanguageBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(GetAppLanguage());
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _radioValue =
          AppLocalizations.of(context).locale.toLanguageTag() == 'en' ? 1 : 0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.close();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    if (MediaQuery.of(context).size.height > 700) {
      isLargeScreen = true;
    } else {
      isLargeScreen = false;
    }
    return BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context, LanguageState state) {
          return Scaffold(
            body: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: SizeConfig.screenHeight,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/image/language.png',
                            width: SizeConfig.screenWidth,
                            height: SizeConfig.screenHeight * 0.7,
                            fit: BoxFit.fill,
                          ),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                children: [
                                  SizedBox(
                                      height: SizeConfig.screenHeight * 0.15),
                                  Image.asset(
                                    'assets/image/logo_image.png',
                                    height: SizeConfig.screenHeight * 0.3,
                                  ),
                                ],
                              )),
                          Positioned(
                            height: isLargeScreen
                                ? SizeConfig.screenHeight * 0.27
                                : SizeConfig.screenHeight * 0.33,
                            width: SizeConfig.screenWidth,
                            bottom: 0,
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    AppLocalizations.of(context).translate(
                                        "Please select the right language for you"),
                                    style: boldStyle.copyWith(fontSize: 14),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical:
                                            SizeConfig.screenWidth * 0.05),
                                    child: Directionality(
                                      textDirection: TextDirection.ltr,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'English',
                                                style: regStyle.copyWith(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Radio(
                                                value: 1,
                                                groupValue: _radioValue,
                                                onChanged: (int value) {
                                                  setState(() {
                                                    _radioValue = value;

                                                    _bloc.add(ChangeLanguage(
                                                        (b) =>
                                                            b..idLang = value));
                                                    _bloc.add(SetAppLanguage(
                                                        (b) => b
                                                          ..language =
                                                              AppLanguageKeys
                                                                  .EN));
                                                    _bloc.add(GetAppLanguage());
                                                    changeAppLanguage(
                                                        AppLanguageKeys.EN);
                                                  });
                                                },
                                                activeColor: primaryColor,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: SizeConfig.screenWidth * 0.1,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'العربية',
                                                style: regStyle.copyWith(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Radio(
                                                value: 0,
                                                groupValue: _radioValue,
                                                onChanged: (int value) {
                                                  setState(() {
                                                    _radioValue = value;
                                                    _bloc.add(ChangeLanguage(
                                                        (b) =>
                                                            b..idLang = value));
                                                    _bloc.add(SetAppLanguage(
                                                        (b) => b
                                                          ..language =
                                                              AppLanguageKeys
                                                                  .AR));
                                                    _bloc.add(GetAppLanguage());
                                                    changeAppLanguage(
                                                        AppLanguageKeys.AR);
                                                  });
                                                },
                                                activeColor: primaryColor,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  appButton(
                                    buttonColor: primaryColor,
                                    context: context,
                                    text: AppLocalizations.of(context)
                                        .translate('Continue'),
                                    textColor: Colors.white,
                                    onTap: () => Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => GuideScreen(),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        });
  }
}
//
// class ToggleButton extends StatefulWidget {
//   final String text;
//   final int value;
//
//   ToggleButton(this.text, this.value);
//
//   @override
//   _ToggleButtonState createState() => _ToggleButtonState();
// }
//
// class _ToggleButtonState extends State<ToggleButton> {
//   int _radioValue;
//
//   @override
//   void initState() {
//     super.initState();
//     _radioValue = 0;
//   }
//
//   void _handleRadioValueChange(int value) {
//     print(value);
//     setState(() {
//       _radioValue = value;
//       print('RADIO VALUE $_radioValue');
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Text(
//           widget.text,
//           style: regStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w500),
//         ),
//         Radio(
//           value: widget.value,
//           groupValue: _radioValue,
//           onChanged: (int value) => _handleRadioValueChange(value),
//           activeColor: primaryColor,
//         ),
//       ],
//     );
//   }
// }
