import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/ui/books_by_category/books_by_category.dart';
import 'package:page_transition/page_transition.dart';

class CategorisCard extends StatefulWidget {
  final Category category;

  const CategorisCard({Key key, this.category}) : super(key: key);

  @override
  _CategorisCardState createState() => _CategorisCardState();
}

class _CategorisCardState extends State<CategorisCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: InkWell(
       // onTap: () => push(context, BooksByCategory(widget.category)),
        onTap: (){
          Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.bottomToTop,
                child:   BooksByCategory(widget.category),
                inheritTheme: true,
                ctx: context),
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            height: MediaQuery.of(context).size.width / 3.1,
            width: MediaQuery.of(context).size.width / 3.1,

            decoration: widget.category.image == null ? BoxDecoration() : BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  widget.category.image,
                ),
                fit: BoxFit.fill,
              )
            ),
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                color: Colors.black.withOpacity(0.4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '${widget.category.getName(AppLocalizations.of(context).locale.languageCode)}',
                      style: regStyle.copyWith(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/svg/roup.svg",
                          height: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "${widget.category.books_count}",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
