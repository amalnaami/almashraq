import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/model/review_quote_user_model/link_data.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';
import 'package:built_collection/built_collection.dart';

class BuyBooksScreen extends StatefulWidget {
  BuiltList<LinkData> linkData;
  BuyBooksScreen({this.linkData});
  @override
  _BuyBooksScreenState createState() => _BuyBooksScreenState();
}

class _BuyBooksScreenState extends State<BuyBooksScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return SafeArea(
      child: Scaffold(
        appBar: app_bar(AppLocalizations.of(context).translate('buy the book'), context),
        body: SingleChildScrollView(
            child: Column(
          children: [
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 4),
                itemCount: widget.linkData.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(8),
                      // margin: EdgeInsets.all(12),
                      width: SizeConfig.screenWidth * 0.3,
                      height: SizeConfig.screenWidth * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Color(0xFFCBCBCB),
                          width: 1,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          "${widget.linkData[index].image}",
                          //'assets/image/2.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }),
          ],
        )),
      ),
    );
  }
}
