import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/guide/category_bloc/category_bloc.dart';
import 'package:maktabeh_app/ui/guide/category_bloc/category_event.dart';
import 'package:maktabeh_app/ui/guide/category_bloc/category_state.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/HomeScreen.dart';
import 'package:maktabeh_app/ui/mainScreens/main_screen.dart';

import 'package:maktabeh_app/ui/start_screen/start_screen.dart';

import 'package:maktabeh_app/ui/mainScreens/main_screen.dart';


class GuideScreen extends StatefulWidget {
  @override
  _GuideScreenState createState() => _GuideScreenState();
}

class _GuideScreenState extends State<GuideScreen> {
  double pageIndex = 0;
  PageController _controller = PageController(
    initialPage: 0,
  );
  final _bloc = sl<CategoryBloc>();
  List<int> selectedCategories = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _bloc.close();
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
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, CategoryState state) {
        error(state.error);
        if (state.successAdding) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                MainPageProvider()), (Route<dynamic> route) => false);
          });
          _bloc.add(ClearState());
        }
        return Scaffold(
          body: Stack(
            children: [
              Column(
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
                                  thirdScreen(context),
                                  secondScreen(context),
                                  firstScreen(context),

                                ],
                              ),
                            ),
                           Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      DotsIndicator(
                                        dotsCount: 3,
                                        position: pageIndex,
                                        decorator: DotsDecorator(
                                          shape: CircleBorder(
                                              side: BorderSide(
                                                  color: seconderyColor,
                                                  width: 1)),
                                          color: Colors.white, // Inactive color
                                          activeColor: seconderyColor,
                                        ),
                                      ),
                                    ],
                                  )

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
                                      text: pageIndex==2
                                          ? AppLocalizations.of(context)
                                              .translate('start')
                                          : AppLocalizations.of(context)
                                              .translate('Continue'),
                                      onTap: () {
                                        _controller.nextPage(
                                            duration:
                                                Duration(microseconds: 2000),
                                            curve: Curves.easeInCirc);
                                        print(pageIndex);
                                        if (pageIndex == 2){
                                          push(context, StartScreen());
                                        }
                                        //   if (pageIndex == 3) {
                                        //   if (selectedCategories.isEmpty) {
                                        //     Fluttertoast.showToast(
                                        //         msg: AppLocalizations.of(
                                        //                 context)
                                        //             .translate(
                                        //                 'choose at least one category'),
                                        //         toastLength: Toast.LENGTH_SHORT,
                                        //         gravity: ToastGravity.BOTTOM,
                                        //         // timeInSecForIosWeb: 1,
                                        //         backgroundColor: primaryColor,
                                        //         textColor: Colors.white,
                                        //         fontSize: 16.0);
                                        //     return;
                                        //   }
                                        //   _bloc.add(InsertCategories((b) => b..selectedCategories = selectedCategories));
                                        // }
                                      }),
                                ),
                                InkWell(
                                onTap:() {
                                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                                      MainPageProvider()), (Route<dynamic> route) => false);
                                }                    ,
                                  child: Text(
                                          AppLocalizations.of(context)
                                              .translate('skip'),
                                          style: boldStyle.copyWith(
                                              color: Colors.white),
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
              if (state.isLoading) loaderApp
            ],
          ),
        );
      },
    );
  }

  // void addOrRemove(int id) {
  //   if (selectedCategories.contains(id))
  //     selectedCategories.remove(id);
  //   else
  //     selectedCategories.add(id);
  //   print(selectedCategories);
  // }
  //
  // bool canAdd() => selectedCategories.length < 5;

  void error(String errorCode) {
    print('CALLING TOAST $errorCode');
    if (errorCode.isNotEmpty) {
      Fluttertoast.showToast(
          msg: (errorCode),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          // timeInSecForIosWeb: 1,
          backgroundColor: primaryColor,
          textColor: Colors.white,
          fontSize: 16.0);
      _bloc.add(ClearState());
    }
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
            AppLocalizations.of(context)
                .translate('enjoy in almashreq library with in many books'),
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
            AppLocalizations.of(context)
                .translate('enjoy in almashreq library with in many books'),
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
            AppLocalizations.of(context)
                .translate('enjoy in almashreq library with in many books'),
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

Widget optionScreen(BuildContext context, BuiltList<Category> categories,
    Function(int) addOrRemove, Function canAdd) {
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
          AppLocalizations.of(context)
              .translate('please select 5 section or less'),
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
            children: List.generate(categories.length, (index) {
              return Item(categories[index], addOrRemove, canAdd);
            }),
          ),
        ),
      ),
    ],
  );
}

class Item extends StatefulWidget {
  final Category category;
  final Function(int) callback;
  final Function canAdd;

  Item(this.category, this.callback, this.canAdd);

  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 1,
      onTap: () {
        if (!isSelected && widget.canAdd.call()) {
          setState(() {
            isSelected = !isSelected;
            widget.callback.call(widget.category.id);
          });
        } else if (isSelected) {
          setState(() {
            isSelected = !isSelected;
            widget.callback.call(widget.category.id);
          });
        } else {
          error(AppLocalizations.of(context)
              .translate('can not add more than 5'));
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFE9E9E9),
          border: Border.all(
              color: isSelected ? primaryColor : Colors.white,
              width: isSelected ? 1 : 0),
          borderRadius: BorderRadius.circular(50),
        ),
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.symmetric(
            horizontal: 20, vertical: SizeConfig.blockSizeVertical * 2),
        child: Text(
          widget.category
              .getName(AppLocalizations.of(context).locale.languageCode),
          style: regStyle.copyWith(
            fontSize: 12,
            color: isSelected ? Colors.black : Color(0xFF9C9C9C),
          ),
          textAlign: TextAlign.center,
        ),
        // FilterChip(
        //   backgroundColor: Color(0xFFE9E9E9),
        //   padding: EdgeInsets.symmetric(
        //       horizontal: 20,
        //       vertical: SizeConfig.blockSizeVertical * 2),
        //   label:
        //   Text(
        //     widget.category.getName(AppLocalizations.of(context).locale.languageCode),
        //     style: regStyle.copyWith(
        //       fontSize: 12,
        //       color: isSelected ? Colors.black : Color(0xFF9C9C9C),
        //     ),
        //     textAlign: TextAlign.center,
        //   ),
        //   selected: isSelected,
        //   onSelected: (bool selected) {
        //     setState(() {
        //     isSelected = selected;
        //     });
        //   },
        //   shape:
        //   RoundedRectangleBorder(
        //     side: isSelected
        //         ? BorderSide(
        //       color: primaryColor,
        //       width: 1.0,
        //     )
        //         : BorderSide(
        //       color: Colors.white,
        //       width: 0,
        //     ),
        //     borderRadius: BorderRadius.circular(30.0),
        //   ),
        // ),
      ),
    );
  }

  void error(String errorCode) {
    if (errorCode.isNotEmpty) {
      Fluttertoast.showToast(
          msg: (errorCode),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          // timeInSecForIosWeb: 1,
          backgroundColor: primaryColor,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }
}




class SectionGuideScreen extends StatefulWidget {

  @override
  _SectionGuideScreenState createState() => _SectionGuideScreenState();
}

class _SectionGuideScreenState extends State<SectionGuideScreen> {

  final _bloc = sl<CategoryBloc>();
  List<int> selectedCategories = [];

  @override
  void initState() {
    super.initState();
    _bloc.add(GetCategories());
  }

  @override
  void dispose() {
    _bloc.close();
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
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, CategoryState state) {
        error(state.error);
        if (state.successAdding) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                MainPageProvider()), (Route<dynamic> route) => false);
          });
          _bloc.add(ClearState());
        }
        return Scaffold(
          body: Stack(
            children: [
              Column(
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
                              child:  optionScreen(context, state.categories,
                                  addOrRemove, canAdd),
                            ),

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
                                      text:  AppLocalizations.of(context)
                                          .translate('Continue'),
                                      onTap: () {
                                          if (selectedCategories.isEmpty) {
                                            Fluttertoast.showToast(
                                                msg: AppLocalizations.of(
                                                    context)
                                                    .translate(
                                                    'choose at least one category'),
                                                toastLength: Toast.LENGTH_SHORT,
                                                gravity: ToastGravity.BOTTOM,
                                                // timeInSecForIosWeb: 1,
                                                backgroundColor: primaryColor,
                                                textColor: Colors.white,
                                                fontSize: 16.0);
                                            return;


                                        }
                                          _bloc.add(InsertCategories((b) => b..selectedCategories = selectedCategories));

                                      }),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              if (state.isLoading) loaderApp
            ],
          ),
        );
      },
    );
  }

  void addOrRemove(int id) {
    if (selectedCategories.contains(id))
      selectedCategories.remove(id);
    else
      selectedCategories.add(id);
    print(selectedCategories);
  }

  bool canAdd() => selectedCategories.length < 5;

  void error(String errorCode) {
    print('CALLING TOAST $errorCode');
    if (errorCode.isNotEmpty) {
      Fluttertoast.showToast(
          msg: (errorCode),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          // timeInSecForIosWeb: 1,
          backgroundColor: primaryColor,
          textColor: Colors.white,
          fontSize: 16.0);
      _bloc.add(ClearState());
    }
  }
}

