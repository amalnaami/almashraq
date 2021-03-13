import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/ui/books_by_category/books_by_category.dart';

class CategorisCard extends StatefulWidget {
  final Category category;

  const CategorisCard({Key key, this.category}) : super(key: key);
  @override
  _CategorisCardState createState() => _CategorisCardState();
}

class _CategorisCardState extends State<CategorisCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => push(context, BooksByCategory(widget.category)),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          height: MediaQuery.of(context).size.width / 3.1,
          width: MediaQuery.of(context).size.width / 3.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Stack(
              children: [
                if(widget.category.image != null)
                Image.network(
                  widget.category.image,
                  height: double.infinity,
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.4),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '${widget.category.getName(AppLocalizations.of(context).locale.languageCode)}',
                          style: regStyle.copyWith(
                            color: Colors.white,
                          ),
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

              ],
            ),
          ),
        ),
      ),
    );
  }
}
