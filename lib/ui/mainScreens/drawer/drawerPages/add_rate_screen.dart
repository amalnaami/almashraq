import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/auth/compnent/CustomField2.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/add_rate_bloc/add_rate_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/add_rate_bloc/add_rate_state.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/add_rate_bloc/add_rate_event.dart'
    as event;
import 'package:smooth_star_rating/smooth_star_rating.dart';

class AddRate extends StatefulWidget {
  @override
  _AddRateState createState() => _AddRateState();
}

class _AddRateState extends State<AddRate> {
  int rate = 0;
  final _bloc = sl<AddRateBloc>();
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
      builder: (BuildContext context, AddRateState state) {
        error(state.error);
        if (state.success) {
          error(AppLocalizations.of(context).translate('adding successfully'));
          Timer(Duration(seconds: 1), () => Navigator.of(context).pop());
        }
        return SafeArea(
            child: Scaffold(
          appBar: app_bar(
              AppLocalizations.of(context).translate('reviews'), context),
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
                          AppLocalizations.of(context).translate('add review'),
                          style: boldStyle.copyWith(color: Colors.black),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppLocalizations.of(context).translate('rate'),
                            style: regStyle.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          SmoothStarRating(
                              allowHalfRating: false,
                              onRated: (v) {
                                setState(() {
                                  rate = v.toInt();
                                });
                                print('SADS $v');
                              },
                              starCount: 5,
                              rating: double.parse('$rate'),
                              size: SizeConfig.screenWidth * 0.08,
                              defaultIconData: Icons.star_outline_rounded,
                              filledIconData: Icons.star_rounded,
                              isReadOnly: false,
                              color: Color(0xFFFFE32A),
                              borderColor: Color(0xFFD4D4D4),
                              spacing: -3),
                          // rateStars(SizeConfig.screenWidth * 0.08, rate),
                        ],
                      ),
                      CustomFeild2(
                        lines: 8,
                        controller: textController,
                        hintText:
                            AppLocalizations.of(context).translate('comment'),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: SizeConfig.blockSizeVertical * 6),
                        child: appButton(
                          context: context,
                          onTap: () {
                            _bloc.add(event.AddRate((b) => b
                              ..rate = rate
                              ..note = textController.value.text));
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
      _bloc.add(event.ClearState());
    }
  }
}
