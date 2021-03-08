import 'dart:io';
import 'dart:typed_data';

import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/soshialBar.dart';

class QuoteCard extends StatelessWidget {
  final String title;

  const QuoteCard({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(8),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[300], blurRadius: 3, spreadRadius: 2),
              ],
              color: Colors.white,
            ),
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/image/4.jpg",
                      height: double.infinity,
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  flex: 8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "\"ما العمر الا لحظات\"",
                        style: regStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/svg/book.svg",
                                height: 15,
                              ),
                              // ImageIcon(
                              //   AssetImage("assets/icons/book.png"),
                              //   color: primaryColor,
                              //   size: 12,
                              // ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "text",
                                style: regStyle,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/svg/Broken-Profile.svg",
                                height: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "text",
                                style: regStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      SoshialBar(),
                      SizedBox(height: 4),
                      if (title == "الاقتباسات" || title == 'quotes')
                        Text(
                          AppLocalizations.of(context).translate('quotes for the same author'),
                          style: regStyle.copyWith(color: Colors.grey),
                        )
                    ],
                  ),
                )
              ],
            ),
          ),
          // Align(
          //   alignment: Alignment.topLeft,
          //   child: InkWell(
          //     onTap: () async {
          //       String _msg;
          //       StringBuffer _sb = new StringBuffer();
          //       // setState(() {
          //       _sb.write("شاهد اقتباس اليوم");
          //       _sb.write("ما العمر الا لحظات لطة حسين");
          //
          //       _msg = _sb.toString();
          //       // });
          //
          //       if (1 == 2) {
          //         var request = await HttpClient().getUrl(Uri.parse(
          //             "https://books-library.online/files/books-library.online-1572336149-742.jpg"));
          //         var response = await request.close();
          //         Uint8List bytes =
          //             await consolidateHttpClientResponseBytes(response);
          //         await Share.file(
          //             'ESYS AMLOG', 'amlog.jpg', bytes, 'image/jpg',
          //             text: _msg);
          //       } else {
          //         Share.text("title", _msg, 'text/plain');
          //       }
          //     },
          //     child: Padding(
          //         padding: EdgeInsets.all(14.0),
          //         child: Icon(
          //           Icons.share,
          //           color: seconderyColor,
          //           size: 20,
          //           // child: buildLocalImage(
          //           //   isFav
          //           //       ? 'assets/svg/fav_off.svg'
          //           //       : 'assets/svg/fav_on.svg',
          //           // ),
          //         )),
          //   ),
          // ),
        ],
      ),
    );
  }
}
