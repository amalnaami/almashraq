import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';

class FavPage extends StatefulWidget {
  @override
  _FavPageState createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, AppLocalizations.of(context).translate("favorite")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context).translate('favorite'),
                  style: boldStyle,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/svg/book.svg",
                      height: 12,
                    ),
                    SizedBox(width: 10),
                    Text("5"),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(5),
              crossAxisCount: 2,
              childAspectRatio: 1 / 0.6,
              children: List.generate(
                8,
                (index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 1,
                                color: Colors.grey[200],
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
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
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/svg/book.svg",
                                            height: 15,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            AppLocalizations.of(context).translate("book"),
                                            style: regStyle.copyWith(
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "لحظات",
                                        style: boldStyle,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          ImageIcon(
                                            AssetImage(
                                                "assets/icons/Profile.png"),
                                            color: primaryColor,
                                            size: 15,
                                          ),
                                          Text(AppLocalizations.of(context).translate('author'),
                                              style: regStyle.copyWith(
                                                  fontSize: 12)),
                                        ],
                                      ),
                                      Text(
                                        AppLocalizations.of(context).translate('Taha husien'),
                                        style: boldStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              "assets/svg/fav_on.svg",
                              width: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
