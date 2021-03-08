import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/book/book_screen.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/local_image.dart';
import 'package:maktabeh_app/ui/common_widget/rate_stars.dart';

class AllBooksScreen extends StatefulWidget {
  @override
  _AllBooksScreenState createState() => _AllBooksScreenState();
}

class _AllBooksScreenState extends State<AllBooksScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return SafeArea(
      child: Scaffold(
        appBar: app_bar('all books', context),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: SizeConfig.blockSizeVertical * 3,
                  left: SizeConfig.blockSizeVertical * 3,
                  right: SizeConfig.blockSizeVertical * 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context).translate('all books'),
                    style: boldStyle.copyWith(color: Colors.black),
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
                        width: 8,
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
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 4),
                itemCount: 9,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.55,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BookScreen(),
                    )),
                    child: Container(
                      width: SizeConfig.screenWidth * 0.2,
                      height: SizeConfig.screenWidth * 0.3,
                      margin: EdgeInsets.symmetric(
                          horizontal: SizeConfig.blockSizeHorizontal * 2),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              width: SizeConfig.screenWidth * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  "assets/image/2.jpg",
                                  height: SizeConfig.screenWidth * 0.15,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'الأوابد',
                                    style: regStyle.copyWith(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                      height: SizeConfig.devicePixelRatio),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/icons/Profile.png',
                                        height: 12,
                                        color: Color(0xFF28ABE3),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        'عبدالوهاب عزام',
                                        style: lightStyle.copyWith(
                                            color: Color(0xFF28ABE3),
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                      height: SizeConfig.devicePixelRatio),
                                  rateStars(15),
                                ],
                              ))
                        ],
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
