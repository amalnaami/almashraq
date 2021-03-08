import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';
import 'package:maktabeh_app/ui/common_widget/local_image.dart';
import 'package:maktabeh_app/ui/common_widget/outhorCard.dart';

class OuthorScreen extends StatefulWidget {
  @override
  _OuthorScreenState createState() => _OuthorScreenState();
}

class _OuthorScreenState extends State<OuthorScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context).translate('All Author'),
                  style: boldStyle,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext ctx) {
                              return filterDialog(ctx);
                            });
                      },
                      child: buildLocalImage('assets/svg/filter.svg'),
                    ),
                    SizedBox(
                      width: SizeConfig.screenWidth * 0.05,
                    ),
                    InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext ctx) {
                                return sortDialog(ctx);
                              });
                        },
                        child: buildLocalImage('assets/svg/sort.svg')),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.only(right: 5, left: 5, bottom: 100),
              childAspectRatio: (1 / 1.8),
              crossAxisCount: 3,
              children: List.generate(20, (index) {
                return OuthorCard();
              }),
            ),
          )
        ],
      ),
    );
  }
}
