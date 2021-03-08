import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/BookCard.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';
import 'package:maktabeh_app/ui/common_widget/local_image.dart';

class MoreBookPage extends StatelessWidget {
  final String title;
  final bool bookNum;

  const MoreBookPage({Key key, @required this.title, this.bookNum})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: customAppBar(context, title),
      body: Column(
        children: [
          bookNum == true
              ? Padding(
                  padding: EdgeInsets.only(
                      bottom: SizeConfig.blockSizeVertical,
                      top: SizeConfig.blockSizeVertical * 3,
                      left: SizeConfig.blockSizeVertical * 3,
                      right: SizeConfig.blockSizeVertical * 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppLocalizations.of(context).translate('books for the same author'),
                        style: boldStyle.copyWith(color: Colors.black),
                      ),
                      Row(
                        children: [
                          buildLocalImage('assets/svg/book.svg'),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '25',
                            style: regStyle,
                          )
                        ],
                      )
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: boldStyle,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.filter_alt_sharp,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.swap_vert,
                            color: Colors.grey,
                          )
                        ],
                      )
                    ],
                  ),
                ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.only(right: 5, left: 5, bottom: 0),
              childAspectRatio: (1 / 1.7),
              crossAxisCount: 3,
              children: List.generate(20, (index) {
                return BookCard();
              }),
            ),
          )
        ],
      ),
    );
  }
}
