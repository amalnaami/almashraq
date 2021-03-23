import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';
import 'package:maktabeh_app/ui/mainScreens/notifications_bloc/notifications_event.dart';

import 'notifications_bloc/notifications_bloc.dart';
import 'notifications_bloc/notifications_state.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final _bloc = sl<NotificationsBloc>();

  @override
  void initState() {
    _bloc.add(GetNotifications());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, NotificationsState state) {
        error(state.error);
        return Scaffold(
          appBar: app_bar(
              AppLocalizations.of(context).translate('notifications'), context),
          body: Stack(
            children: [
              state.isLoading
                  ? Container()
                  : ListView.builder(
                      itemCount: state.notifications.length,
                      padding: EdgeInsets.all(8.0),
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          )),
                          child: Row(
                            children: [
                              state.notifications[index].image == null
                                  ? Container(
                                margin: EdgeInsets.all(
                                    SizeConfig.devicePixelRatio * 4),
                                      height: SizeConfig.screenWidth * 0.2,
                                      width: SizeConfig.screenWidth * 0.2,
                                    )
                                  : Container(
                                      margin: EdgeInsets.all(
                                          SizeConfig.devicePixelRatio * 4),
                                      height: SizeConfig.screenWidth * 0.2,
                                      width: SizeConfig.screenWidth * 0.2,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: NetworkImage(state
                                                .notifications[index].image),
                                          )),
                                    ),
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: SizeConfig.screenWidth * 0.6,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          state.notifications[index].title,
                                          style: regStyle.copyWith(
                                              fontSize: 12,
                                              color: Color(0xFF1A6C9E)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical * 2,
                                  ),
                                  Container(
                                    width: SizeConfig.screenWidth * 0.5,
                                    child: Text(
                                      state.notifications[index].body,
                                      style: lightStyle.copyWith(
                                          fontSize: 10, height: 1.5),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
              if (state.isLoading) loaderApp
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
      _bloc.add(ClearError());
    }
  }
}
