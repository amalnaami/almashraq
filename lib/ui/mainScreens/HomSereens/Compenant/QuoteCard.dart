import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/model/quote/quote.dart';
import 'package:maktabeh_app/ui/common_widget/soshialBar.dart';
import 'package:maktabeh_app/ui/widgets/widgets.dart';

class QuoteCard extends StatefulWidget {
  final String title;
  final Quote quote;
  final Book singleBook;
  final String image;

  const QuoteCard({Key key, this.title, this.quote,this.singleBook,this.image}) : super(key: key);

  @override
  _QuoteCardState createState() => _QuoteCardState();
}

class _QuoteCardState extends State<QuoteCard> {
  @override
  Widget build(BuildContext context) {
    print('quote is ${widget.quote}');
    return widget.quote == null
        ? Container()
        : Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            margin: EdgeInsets.all(10),
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      widget.image,
                    // widget.singleBook.image,
                     // widget.quote.user_name== null
                     //      ? 'https://th.bing.com/th/id/OIP.xo-BCC1ZKFpLL65D93eHcgHaGe?pid=ImgDet&rs=1'
                     //      : widget.quote.user_name,
                      height: MediaQuery.of(context).size.height * 0.15,
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.height * 0.15,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    //flex: 8,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            //width: MediaQuery.of(context).size.width * .45,
                            child: ReadMoreText(
                              "\"${widget.quote.quotation_text}\"",
                              trimLines: 1,
                              textDirection: AppLocalizations.of(context)
                                          .locale
                                          .languageCode ==
                                      'ar'
                                  ? TextDirection.ltr
                                  : TextDirection.rtl,
                              style: regStyle.copyWith(color: Colors.black,),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ImageIcon(
                              AssetImage("assets/icons/book.png"),
                              color: primaryColor,
                              size: 12,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Expanded(
                              child: Text(
                                "${widget.quote.getBookName(AppLocalizations.of(context).locale.languageCode)}",
                                style: regStyle.copyWith(fontSize: 12),
                              ),
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            SvgPicture.asset(
                              "assets/svg/Broken-Profile.svg",
                              height: 15,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Expanded(
                              child: Text(
                                "${widget.quote.getAuthorName(AppLocalizations.of(context).locale.languageCode)}",
                                style: regStyle.copyWith(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        SoshialBar(widget.quote.quotation_text),
                        // SizedBox(height: 4),
                        // if (title == "????????????????????" || title == 'quotes')
                        //   Text(
                        //     AppLocalizations.of(context)
                        //         .translate('quotes for the same author'),
                        //     style: regStyle.copyWith(color: Colors.grey),
                        //   )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
  }
}
