import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';

import 'package:maktabeh_app/ui/start_screen/start_screen.dart';

class GuideScreen extends StatefulWidget {
  @override
  _GuideScreenState createState() => _GuideScreenState();
}

class _GuideScreenState extends State<GuideScreen> {
  double pageIndex = 0;
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  var isLargeScreen = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    if (MediaQuery.of(context).size.height > 700) {
      isLargeScreen = true;
    } else {
      isLargeScreen = false;
    }
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: SizeConfig.screenHeight,
            child: Stack(
              children: [
                Image.asset(
                  'assets/image/welcome.png',
                  height: SizeConfig.screenHeight,
                  width: SizeConfig.screenWidth,
                  fit: BoxFit.fill,
                ),
                Column(
                  children: [
                    SizedBox(height: SizeConfig.blockSizeVertical * 5),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        'assets/image/logo_image.png',
                        height: SizeConfig.screenHeight * 0.1,
                      ),
                    ),
                    Container(
                      height: SizeConfig.screenHeight * 0.5,
                      child: PageView(
                        physics: NeverScrollableScrollPhysics(),
                        pageSnapping: true,
                        controller: _controller,
                        reverse: true,
                        allowImplicitScrolling: false,
                        onPageChanged: (int index) {
                          setState(() {
                            pageIndex++;
                          });
                        },
                        children: [
                          firstScreen(context),
                          secondScreen(context),
                          thirdScreen(context),
                          optionScreen(context),
                        ],
                      ),
                    ),
                    pageIndex != 3
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              DotsIndicator(
                                dotsCount: 3,
                                position: pageIndex,
                                decorator: DotsDecorator(
                                  shape: CircleBorder(
                                      side: BorderSide(
                                          color: seconderyColor, width: 1)),
                                  color: Colors.white, // Inactive color
                                  activeColor: seconderyColor,
                                ),
                              ),
                            ],
                          )
                        : Container()
                  ],
                ),
                Positioned(
                  height: MediaQuery.of(context).size.height * 0.18,
                  width: MediaQuery.of(context).size.width,
                  bottom: 0,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: SizeConfig.blockSizeVertical * 3),
                          child: appButton(
                              context: context,
                              buttonColor: Colors.white,
                              textColor: seconderyColor,
                              text: pageIndex == 0 ? AppLocalizations.of(context).translate('start') : AppLocalizations.of(context).translate('Continue'),
                              onTap: () {
                                _controller.nextPage(
                                    duration: Duration(microseconds: 2000),
                                    curve: Curves.easeInCirc);
                                print(pageIndex);
                                if (pageIndex == 3) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => StartScreen(),
                                  ));
                                }
                              }),
                        ),
                        pageIndex == 0 || pageIndex == 3
                            ? Container()
                            : InkWell(
                                child: Text(
                                  AppLocalizations.of(context).translate('skip'),
                                  style:
                                      boldStyle.copyWith(color: Colors.white),
                                ),
                              )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget firstScreen(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 10),
    child: Column(
      children: [
        Image.asset(
          'assets/image/third_image.png',
          height: SizeConfig.screenHeight * 0.28,
        ),
        Text(
          AppLocalizations.of(context).translate('quotes and reviews'),
          style: boldStyle.copyWith(fontSize: 14),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical),
          child: Text(
            AppLocalizations.of(context).translate('enjoy in almashreq library with in many books'),
            style: lightStyle.copyWith(fontSize: 12, color: Color(0xFFCBCBCB)),
          ),
        ),
        Text(
          AppLocalizations.of(context).translate('in various fields'),
          style: lightStyle.copyWith(fontSize: 12, color: Color(0xFFCBCBCB)),
        ),
      ],
    ),
  );
}

Widget secondScreen(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 10),
    child: Column(
      children: [
        Image.asset(
          'assets/image/second_image.png',
          height: SizeConfig.screenHeight * 0.28,
        ),
        Text(
          AppLocalizations.of(context).translate('special books'),
          style: boldStyle.copyWith(fontSize: 14),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical),
          child: Text(
            AppLocalizations.of(context).translate('enjoy in almashreq library with in many books'),
            style: lightStyle.copyWith(fontSize: 12, color: Color(0xFFCBCBCB)),
          ),
        ),
        Text(
          AppLocalizations.of(context).translate('in various fields'),
          style: lightStyle.copyWith(fontSize: 12, color: Color(0xFFCBCBCB)),
        ),
      ],
    ),
  );
}

Widget thirdScreen(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 10),
    child: Column(
      children: [
        Image.asset(
          'assets/image/first_image.png',
          height: SizeConfig.screenHeight * 0.28,
        ),
        Text(
          AppLocalizations.of(context).translate('lots of books'),
          style: boldStyle.copyWith(fontSize: 14),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical),
          child: Text(
            AppLocalizations.of(context).translate('enjoy in almashreq library with in many books'),

            style: lightStyle.copyWith(fontSize: 12, color: Color(0xFFCBCBCB)),
          ),
        ),
        Text(
          AppLocalizations.of(context).translate('in various fields'),

          style: lightStyle.copyWith(fontSize: 12, color: Color(0xFFCBCBCB)),
        ),
      ],
    ),
  );
}

Widget optionScreen(BuildContext context) {
  bool isSelected = false;
  List<String> list = [
    AppLocalizations.of(context).translate('islamic history'),
    AppLocalizations.of(context).translate('short stories'),
    AppLocalizations.of(context).translate('novel'),
    AppLocalizations.of(context).translate('poetry'),
    AppLocalizations.of(context).translate('translated plays'),
    AppLocalizations.of(context).translate('arabic history'),
    AppLocalizations.of(context).translate('islamic history'),
    AppLocalizations.of(context).translate('short stories'),
    // 'التاريخ الإسلامي',
    // 'قصص قصيرة',
    // 'روايات',
    // 'شعر',
    // 'مسرحيات مترجمة',
    // 'التاريخ العربي',
    // 'التاريخ الإسلامي',
    // 'قصص قصيرة',
    // 'التاريخ الإسلامي',
    // 'قصص قصيرة',
    // 'روايات',
    // 'شعر',
    // 'مسرحيات مترجمة',
    // 'التاريخ العربي',
    // 'التاريخ الإسلامي',
  ];
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 8),
        child: Text(
          AppLocalizations.of(context).translate('select what you want'),
          style: boldStyle.copyWith(fontSize: 18),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical),
        child: Text(
          AppLocalizations.of(context).translate('please select 5 section or less'),
          style: lightStyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: Color(0xFF9C9C9C)),
        ),
      ),
      Expanded(
        child: SingleChildScrollView(
          child: Wrap(
            runSpacing: 10,
            direction: Axis.horizontal, // default
            children: List.generate(list.length, (index) {
              return Container(
                margin: EdgeInsets.all(5),
                child: FilterChip(
                  backgroundColor: Color(0xFFE9E9E9),
                  padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: SizeConfig.blockSizeVertical * 2),
                  label: Text(
                    list[index],
                    style: regStyle.copyWith(
                      fontSize: 12,
                      color: isSelected ? Colors.black : Color(0xFF9C9C9C),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  selected: false,
                  onSelected: (bool selected) {
                    isSelected = !isSelected;
                  },
                  shape: RoundedRectangleBorder(
                    side: isSelected
                        ? BorderSide(
                            color: primaryColor,
                            width: 1.0,
                          )
                        : BorderSide(
                            color: Colors.white,
                            width: 0,
                          ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    ],
  );
}
