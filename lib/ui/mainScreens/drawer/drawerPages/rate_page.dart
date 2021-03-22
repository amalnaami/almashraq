import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/rate_stars.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/drawerPages/add_rate_screen.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/rate_bloc/rate_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/rate_bloc/rate_event.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/rate_bloc/rate_state.dart';

import '../CustomDrawer.dart';

class RateAppScreen extends StatefulWidget {
  @override
  _RateAppScreenState createState() => _RateAppScreenState();
}

class _RateAppScreenState extends State<RateAppScreen> {
  final _bloc = sl<RateBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(GetRates());
    _bloc.add(IsLogin());
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, RateState state) {
        error(state.error);
        return SafeArea(
          child: Scaffold(
            appBar: app_bar(
                AppLocalizations.of(context).translate('ratting'), context),
            body: Padding(
              padding: EdgeInsets.symmetric(
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
                                child: appButton(
                                  context: context,
                                  onTap: () async {
                                    (state.isLogin)?await Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => AddRate(),
                                  )): showDialog(
                                        context: context,
                                        builder: (BuildContext ctx) {
                                          return alertDialog(ctx);
                                        });
                                  _bloc.add(GetRates());
                                  },
                                  text: AppLocalizations.of(context)
                                      .translate('add rate'),
                                ),
                              ),
                        Divider(
                          thickness: 1,
                          color: Color(0xFFE5E5E5),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: SizeConfig.blockSizeVertical * 2),
                          child: Text(
                            '${AppLocalizations.of(context).translate('All rates')}',
                            style: boldStyle.copyWith(color: Colors.black),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          color: Color(0xFFE5E5E5),
                        ),
                        (state.rates != null && state.rates.all_rates.length != 0)
                            ? ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: state.rates.all_rates.length,
                                itemBuilder: (context, index) {
                                  return rateCard(
                                      state.rates.all_rates[index].user.name != null
                                          ? state.rates.all_rates[index].user.name
                                          : "No Name",
                                      state.rates.all_rates[index].note != null
                                          ? state.rates.all_rates[index].note
                                          : "No Review",
                                      int.parse(state.rates.all_rates[index].rate),
                                      state.rates.all_rates[index].user.image != null
                                          ? state.rates.all_rates[index].user.image
                                          : "https://th.bing.com/th/id/OIP.xo-BCC1ZKFpLL65D93eHcgHaGe?pid=ImgDet&rs=1");
                                })
                            : Center(
                                child: Text('No rates'),
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

Widget rateCard(String name, String review, int rate, String image) {
  return Card(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
      Radius.circular(12),
    )),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.grey[300], blurRadius: 3, spreadRadius: 2),
        ],
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(SizeConfig.devicePixelRatio * 4),
            height: SizeConfig.screenWidth * 0.2,
            width: SizeConfig.screenWidth * 0.2,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(image),
                )),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: SizeConfig.screenWidth * 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      //  'نادين محمود',
                      style:
                          boldStyle.copyWith(fontSize: 12, color: Colors.black),
                    ),
                    rateStars(16, rate),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 2,
              ),
              Container(
                width: SizeConfig.screenWidth * 0.5,
                child: Text(
                  review,
                  //  'كتاب جداً رائع لقد انهيته في مدة قصيرة ونال أعجابي الشديد',
                  style: lightStyle.copyWith(fontSize: 12),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
