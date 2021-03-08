import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        appBar: app_bar('notifications', context),
        body: ListView.builder(
          itemCount: 3,
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
                  Container(
                    margin: EdgeInsets.all(SizeConfig.devicePixelRatio * 4),
                    height: SizeConfig.screenWidth * 0.2,
                    width: SizeConfig.screenWidth * 0.2,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/image/1.jpg'),
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
                              AppLocalizations.of(context).translate('The alert title is placed here'),
                              style: regStyle.copyWith(
                                  fontSize: 12, color: Color(0xFF1A6C9E)),
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
                          'كتاب جداً رائع لقد انهيته في مدة قصيرة ونال أعجابي الشديد',
                          style:
                              lightStyle.copyWith(fontSize: 10, height: 1.5),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ));
  }
}
