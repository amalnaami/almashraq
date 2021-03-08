import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/book/about_writer.dart';

class OuthorCard extends StatefulWidget {
  @override
  _OuthorCardState createState() => _OuthorCardState();
}

class _OuthorCardState extends State<OuthorCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => push(context, AboutWriterScreen()),
      child: Container(
        margin: EdgeInsets.all(5),
        height: double.infinity,
        width: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  "assets/image/1.jpg",
                  height: double.infinity,
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              AppLocalizations.of(context).translate('Taha husien'),
              style: regStyle,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              AppLocalizations.of(context).translate('Arabic history'),
              style: lightStyle.copyWith(color: Colors.blue, fontSize: 10),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SvgPicture.asset("assets/svg/book.svg"),
                Text(
                  " 10 ",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
