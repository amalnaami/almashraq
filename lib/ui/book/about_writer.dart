import 'dart:io';
import 'dart:typed_data';

import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/local_image.dart';
import 'package:maktabeh_app/ui/mainScreens/moreBooksPage.dart';

class AboutWriterScreen extends StatefulWidget {
  final Author author;

  const AboutWriterScreen(this.author);

  @override
  _AboutWriterScreenState createState() => _AboutWriterScreenState();
}

class _AboutWriterScreenState extends State<AboutWriterScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: buildLocalImage(
                    AppLocalizations.of(context).locale.toLanguageTag() == 'ar'
                        ? 'assets/svg/arrow_back_white.svg'
                        : 'assets/svg/arrow_forward.svg',
                    color: Colors.deepOrange,
                  )),
            ),
          ),
          actions: [
            InkWell(
              onTap: () async {
                String _msg;
                StringBuffer _sb = new StringBuffer();
                // setState(() {
                _sb.write("${widget.author.getName(AppLocalizations.of(context).locale.languageCode)} \n");
                _sb.write("???????? ???????? ?????????? ?????????? \n");
                _sb.write(
                    "https://almashreqebookstore.com\n");

                _msg = _sb.toString();
                // });

                if (1 == 2) {
                  var request = await HttpClient().getUrl(Uri.parse(
                      "https://books-library.online/files/books-library.online-1572336149-742.jpg"));
                  var response = await request.close();
                  Uint8List bytes =
                      await consolidateHttpClientResponseBytes(response);
                  await Share.file(
                      'ESYS AMLOG', 'amlog.jpg', bytes, 'image/jpg',
                      text: _msg);
                } else {
                  Share.text("title", _msg, 'text/plain');
                }
              },
              child: Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.share,
                  color: seconderyColor,
                  size: 20,
                  // child: buildLocalImage(
                  //   isFav
                  //       ? 'assets/svg/fav_off.svg'
                  //       : 'assets/svg/fav_on.svg',
                  // ),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: SizeConfig.screenHeight * 0.48,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                          spreadRadius: 2,
                          color: Colors.grey[300],
                        )
                      ],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/image/flower.png',
                        width: double.infinity,
                        height: SizeConfig.screenHeight * 0.48,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        SizedBox(height: SizeConfig.screenHeight * 0.05),
                        Container(
                          height: SizeConfig.screenHeight * 0.25,
                          width: SizeConfig.screenWidth * 0.35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border:
                                  Border.all(color: Colors.white, width: 2)),
                          child: Center(
                              child: Hero(
                                tag: 'book-${widget.author.image}',
                                child: Image.network(
                            widget.author.image,
                            height: SizeConfig.screenHeight * 0.25,
                            width: SizeConfig.screenWidth * 0.35,
                            fit: BoxFit.fill,
                          ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: SizeConfig.blockSizeVertical * 2),
                          child: Text(
                            '${widget.author.getName(AppLocalizations.of(context).locale.languageCode)}',
                            style: boldStyle.copyWith(
                                fontSize: 18, color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 2,
                        ),
                        Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              spreadRadius: 2,
                              color: Colors.grey[300],
                            )
                          ], borderRadius: BorderRadius.circular(10)),
                          child: appButton(
                              text: AppLocalizations.of(context)
                                  .translate('see the authors books'),
                              onTap: () => push(
                                  context,
                                  MoreBookPage(
                                    title: AppLocalizations.of(context)
                                        .translate('books for the same author'),
                                    bookNum: true,
                                    authorId: widget.author.id,
                                    booksCount: widget.author.books_count,
                                  )),
                              context: context,
                              buttonColor: Colors.white,
                              textColor: primaryColor),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(SizeConfig.blockSizeVertical),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context).translate('about author'),
                      style: boldStyle.copyWith(color: Colors.black),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: SizeConfig.devicePixelRatio),
                      width: SizeConfig.screenWidth,
                      child: Text(
                        '${widget.author.getBrief(AppLocalizations.of(context).locale.languageCode)}',
                        style: regStyle.copyWith(fontSize: 12, height: 1.5),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
