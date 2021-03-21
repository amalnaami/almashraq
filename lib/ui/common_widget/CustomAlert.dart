import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/filter_bloc/filter_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/filter_bloc/filter_event.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/filter_bloc/filter_state.dart';
import 'package:built_collection/built_collection.dart';
import '../../injection.dart';
import 'filter_drop_down.dart';
import 'filter_textfield.dart';
import 'local_image.dart';

class CustomAlert {
  submitChangeData(
      {BuildContext context,
      Function onSubmite,
      Function onCancel,
      String hintText,
      String textBtn,
      String title}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: lightStyle.copyWith(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                textAlign: TextAlign.center,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: regStyle.copyWith(color: Color(0xFFD4D4D4)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xFFD4D4D4)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xFFD4D4D4)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              appButton(
                buttonColor: primaryColor,
                context: context,
                text: textBtn,
                onTap: onSubmite,
              ),
              SizedBox(
                height: 8,
              ),
              onCancel != null
                  ? appButton(
                      buttonColor: Color(0x00000000),
                      context: context,
                      text: AppLocalizations.of(context).translate('cancel'),
                      onTap: onCancel ?? () => Navigator.pop(context),
                      textColor: seconderyColor,
                    )
                  : SizedBox(),
            ],
          ),
        );
      },
    );
  }

  options({
    BuildContext context,
    Function onSubmite,
    String textBtn,
    List<Widget> children,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: children,
              ),
              SizedBox(
                height: 15,
              ),
              appButton(
                buttonColor: primaryColor,
                context: context,
                text: textBtn,
                onTap: onSubmite,
              ),
            ],
          ),
        );
      },
    );
  }

  successfulProcess({
    BuildContext context,
    String title,
    String content,
    String btnText,
    Function action,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Container(
            width: MediaQuery.of(context).size.width - 50,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/Shape 2 copy 3.svg",
                        height: 60,
                        width: 60,
                      ),
                      Center(
                        child: SvgPicture.asset(
                          "assets/icons/Shape 5 copy 2.svg",
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  title,
                  style: boldStyle.copyWith(color: Colors.green),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    content,
                    textAlign: TextAlign.center,
                    style: lightStyle.copyWith(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                appButton(
                  buttonColor: primaryColor,
                  context: context,
                  onTap: action,
                  text: btnText,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  errorProcess({
    BuildContext context,
    String title,
    String content,
    String btnText,
    Function action,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Container(
            width: MediaQuery.of(context).size.width - 50,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Image.asset(
                    "assets/icons/right-and-wrong-check-marks.png",
                    height: 60,
                    width: 60,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  title,
                  style: boldStyle.copyWith(color: Colors.red),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    content,
                    textAlign: TextAlign.center,
                    style: lightStyle.copyWith(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                appButton(
                  buttonColor: primaryColor,
                  context: context,
                  onTap: action,
                  text: btnText,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class FilterData extends Equatable {
  final String bookName;
  final String authorName;
  final String sectionName;

  // ignore: non_constant_identifier_names
  final String ISIN;
  final String releaseDate;
  int authorId;
  int sectionId;

  FilterData(
      {this.bookName,
      this.authorId,
      this.sectionId,
      this.releaseDate,
      // ignore: non_constant_identifier_names
      this.ISIN,
      this.authorName,
      this.sectionName});

  factory FilterData.empty() => FilterData(
        bookName: '',
        authorId: -1,
        sectionId: -1,
        releaseDate: '',
        ISIN: '',
        authorName: '',
        sectionName: ''
      );

  @override
  List<Object> get props =>
      [bookName, authorId, sectionId, releaseDate, ISIN, authorName, sectionName];
}

class FilterDialog extends StatefulWidget {
  final FilterData data;
  final bool category;
  final bool author;
  const FilterDialog({this.data, this.category = true, this.author = true});

  @override
  _FilterDialogState createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  TextEditingController bookName = TextEditingController();

  // ignore: non_constant_identifier_names
  TextEditingController ISIN = TextEditingController();
  TextEditingController releaseDate = TextEditingController();
  String _authorName = '';
  String categoryName = '';
  final _bloc = sl<FilterBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(GetSections());
    _bloc.add(GetAuthors());
    if (widget.data != null && widget.data != FilterData.empty()) {
      if (widget.data.bookName.isNotEmpty) {
        bookName.text = widget.data.bookName;
      }
      if (widget.data.ISIN.isNotEmpty) {
        ISIN.text = widget.data.ISIN;
      }
      if (widget.data.releaseDate.isNotEmpty) {
        releaseDate.text = widget.data.releaseDate;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, FilterState state) {
        error(state.error);
        return Dialog(
          insetPadding: EdgeInsets.all(10),
          child: Container(
            height: (widget.category & widget.author) ? SizeConfig.screenHeight * 0.7 : SizeConfig.screenHeight * 0.6,
            width: SizeConfig.screenWidth * 0.9,
            child: Stack(
              children: [
                ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.blockSizeHorizontal * 3),
                      child: Column(
                        children: [
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(child: Container()),
                              Text(
                                AppLocalizations.of(context)
                                    .translate('filter'),
                                style: boldStyle.copyWith(
                                    color: Colors.black, fontSize: 18),
                              ),
                              Expanded(child: Container()),
                              //Spacer(),
                              InkWell(
                                onTap: () => Navigator.of(context).pop(FilterData.empty()),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('cancel'),
                                  style: regStyle.copyWith(
                                      color: Color(0xFF28ABE3),
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  AppLocalizations.of(context)
                                      .translate('book name'),
                                  style: regStyle),
                              filterTextField(
                                  controller: bookName,
                                  hint: AppLocalizations.of(context)
                                      .translate('book name'))
                            ],
                          ),
                          Divider(
                            color: Color(0xFFE5E5E5),
                            thickness: 1.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  AppLocalizations.of(context)
                                      .translate('ISIN'),
                                  style: regStyle),
                              filterTextField(
                                  controller: ISIN,
                                  hint: AppLocalizations.of(context)
                                      .translate('ISIN'))
                            ],
                          ),
                          Divider(
                            color: Color(0xFFE5E5E5),
                            thickness: 1.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  AppLocalizations.of(context)
                                      .translate('release date'),
                                  style: regStyle),
                              filterTextField(
                                controller: releaseDate,
                                hint: '2020',
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: buildLocalImage(
                                    'assets/svg/calendar.svg',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          widget.author ?Divider(
                            color: Color(0xFFE5E5E5),
                            thickness: 1.0,
                          ) : Container(),
                          widget.author ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  AppLocalizations.of(context)
                                      .translate('author name'),
                                  style: regStyle),
                              FilterDropDown(
                                  value: getAuthorNameFromId(context,
                                      widget.data.authorId, state.authors),
                                  callBack: (String value) =>
                                      _authorName = value,
                                  values: state.authors
                                      .map((author) => author.getName(
                                          AppLocalizations.of(context)
                                              .locale
                                              .languageCode))
                                      .toList(),
                                  hint: AppLocalizations.of(context)
                                      .translate('author name'))
                            ],
                          ) : Container(),
                          Divider(
                            color: Color(0xFFE5E5E5),
                            thickness: 1.0,
                          ),
                          widget.category ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  AppLocalizations.of(context)
                                      .translate('section'),
                                  style: regStyle),
                              FilterDropDown(
                                  value: getCategoryNameFromId(context,
                                      widget.data.sectionId, state.categories),
                                  callBack: (String value) =>
                                      categoryName = value,
                                  values: state.categories
                                      .map((category) => category.getName(
                                          AppLocalizations.of(context)
                                              .locale
                                              .languageCode))
                                      .toList(),
                                  hint: AppLocalizations.of(context)
                                      .translate('section'))
                            ],
                          ) : Container(),
                          Padding(
                            padding: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 4,
                                right: SizeConfig.blockSizeHorizontal,
                                left: SizeConfig.blockSizeHorizontal),
                            child: appButton(
                              buttonColor: primaryColor,
                              context: context,
                              text: AppLocalizations.of(context)
                                  .translate('apply'),
                              onTap: () {
                                int authorId = widget.data.authorId;
                                if (_authorName != null &&
                                    _authorName.isNotEmpty) {
                                  for (Author author in state.authors) {
                                    if (author.getName(
                                            AppLocalizations.of(context)
                                                .locale
                                                .languageCode) ==
                                        _authorName) {
                                      authorId = author.id;
                                      break;
                                    }
                                  }
                                }
                                int categoryId = widget.data.sectionId;
                                if (categoryName != null &&
                                    categoryName.isNotEmpty) {
                                  for (Category category in state.categories) {
                                    if (category.getName(
                                            AppLocalizations.of(context)
                                                .locale
                                                .languageCode) ==
                                        categoryName) {
                                      categoryId = category.id;
                                      break;
                                    }
                                  }
                                }
                                print(FilterData(
                                    bookName: bookName.value.text,
                                    releaseDate: releaseDate.value.text,
                                    ISIN: ISIN.value.text,
                                    authorId: authorId,
                                    sectionId: categoryId));
                                Navigator.of(context).pop(FilterData(
                                    bookName: bookName.value.text,
                                    releaseDate: releaseDate.value.text,
                                    ISIN: ISIN.value.text,
                                    authorId: authorId,
                                    sectionId: categoryId));
                              },
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
          ),
        );
      },
    );
  }

  void error(String errorCode) {
    if (errorCode.isNotEmpty) {
      Fluttertoast.showToast(
          msg: (errorCode),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: primaryColor,
          textColor: Colors.white,
          fontSize: 16.0);
      _bloc.add(ClearState());
    }
  }

  String getAuthorNameFromId(
      BuildContext context, int id, BuiltList<Author> authors) {
    if (id == null || authors == null || authors.isEmpty) return null;
    for (Author author in authors) {
      if (author.id == id)
        return author.getName(AppLocalizations.of(context).locale.languageCode);
    }
    return null;
  }

  String getCategoryNameFromId(
      BuildContext context, int id, BuiltList<Category> sections) {
    if (id == null || sections == null || sections.isEmpty) return null;
    for (Category category in sections)
      if (category.id == id)
        return category
            .getName(AppLocalizations.of(context).locale.languageCode);
    return null;
  }
}

class CategoriesFilter extends StatefulWidget {
  final FilterData data;

  const CategoriesFilter(this.data);

  @override
  _CategoriesFilterState createState() => _CategoriesFilterState();
}

class _CategoriesFilterState extends State<CategoriesFilter> {
  String categoryName;
  TextEditingController controller;
  final _bloc = sl<FilterBloc>();

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    if(widget.data.sectionName != null && widget.data.sectionName.isNotEmpty)
      controller.text = widget.data.sectionName;
    //_bloc.add(GetSections());
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, FilterState state) {
        error(state.error);
        return Dialog(
          insetPadding: EdgeInsets.all(10),
          child: Container(
            height: SizeConfig.screenHeight * 0.3,
            width: SizeConfig.screenWidth * 0.9,
            child: Stack(
              children: [
                ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.blockSizeHorizontal * 3),
                      child: Column(
                        children: [
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(child: Container()),
                              Text(
                                AppLocalizations.of(context)
                                    .translate('filter'),
                                style: boldStyle.copyWith(
                                    color: Colors.black, fontSize: 18),
                              ),
                              Expanded(child: Container()),
                              //Spacer(),
                              InkWell(
                                onTap: () => Navigator.of(context).pop(FilterData.empty()),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('cancel'),
                                  style: regStyle.copyWith(
                                      color: Color(0xFF28ABE3),
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  AppLocalizations.of(context)
                                      .translate('section'),
                                  style: regStyle),
                              filterTextField(
                                  controller: controller,
                                  hint: AppLocalizations.of(context)
                                      .translate('section'))
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 4,
                                right: SizeConfig.blockSizeHorizontal,
                                left: SizeConfig.blockSizeHorizontal),
                            child: appButton(
                              buttonColor: primaryColor,
                              context: context,
                              text: AppLocalizations.of(context)
                                  .translate('apply'),
                              onTap: () {
                                // int categoryId = widget.data.sectionId;
                                // if (categoryName != null &&
                                //     categoryName.isNotEmpty) {
                                //   for (Category category in state.categories) {
                                //     if (category.getName(
                                //             AppLocalizations.of(context)
                                //                 .locale
                                //                 .languageCode) ==
                                //         categoryName) {
                                //       categoryId = category.id;
                                //       break;
                                //     }
                                //   }
                                // }
                                print(FilterData(sectionName: controller.value.text));
                                Navigator.of(context)
                                    .pop(FilterData(sectionName: controller.value.text));
                              },
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
          ),
        );
      },
    );
  }

  void error(String errorCode) {
    if (errorCode.isNotEmpty) {
      Fluttertoast.showToast(
          msg: (errorCode),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: primaryColor,
          textColor: Colors.white,
          fontSize: 16.0);
      _bloc.add(ClearState());
    }
  }

  String getCategoryNameFromId(
      BuildContext context, int id, BuiltList<Category> sections) {
    if (id == null || sections == null || sections.isEmpty) return null;
    for (Category category in sections)
      if (category.id == id)
        return category
            .getName(AppLocalizations.of(context).locale.languageCode);
    return null;
  }
}

class AuthorFilter extends StatefulWidget {
  final FilterData data;

  const AuthorFilter(this.data);

  @override
  _AuthorFilterState createState() => _AuthorFilterState();
}

class _AuthorFilterState extends State<AuthorFilter> {
  TextEditingController authorName = TextEditingController();
  String categoryName;
  final _bloc = sl<FilterBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(GetSections());
    if (widget.data != null && widget.data != FilterData.empty()) {
      if (widget.data.authorName.isNotEmpty) {
        authorName.text = widget.data.authorName;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, FilterState state) {
        error(state.error);
        return Dialog(
          insetPadding: EdgeInsets.all(10),
          child: Container(
            height: SizeConfig.screenHeight * 0.42,
            width: SizeConfig.screenWidth * 0.9,
            child: Stack(
              children: [
                ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.blockSizeHorizontal * 3),
                      child: Column(
                        children: [
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(child: Container()),
                              Text(
                                AppLocalizations.of(context)
                                    .translate('filter'),
                                style: boldStyle.copyWith(
                                    color: Colors.black, fontSize: 18),
                              ),
                              Expanded(child: Container()),
                              //Spacer(),
                              InkWell(
                                onTap: () => Navigator.of(context).pop(FilterData.empty()),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('cancel'),
                                  style: regStyle.copyWith(
                                      color: Color(0xFF28ABE3),
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  AppLocalizations.of(context)
                                      .translate('author name'),
                                  style: regStyle),
                              filterTextField(
                                  controller: authorName,
                                  hint: AppLocalizations.of(context)
                                      .translate('author name'))
                            ],
                          ),
                          Divider(
                            color: Color(0xFFE5E5E5),
                            thickness: 1.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  AppLocalizations.of(context)
                                      .translate('section'),
                                  style: regStyle),
                              FilterDropDown(
                                  value: getCategoryNameFromId(context,
                                      widget.data.sectionId, state.categories),
                                  callBack: (String value) =>
                                      categoryName = value,
                                  values: state.categories
                                      .map((category) => category.getName(
                                          AppLocalizations.of(context)
                                              .locale
                                              .languageCode))
                                      .toList(),
                                  hint: AppLocalizations.of(context)
                                      .translate('section'))
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 4,
                                right: SizeConfig.blockSizeHorizontal,
                                left: SizeConfig.blockSizeHorizontal),
                            child: appButton(
                              buttonColor: primaryColor,
                              context: context,
                              text: AppLocalizations.of(context)
                                  .translate('apply'),
                              onTap: () {
                                int categoryId = widget.data.sectionId;
                                if (categoryName != null &&
                                    categoryName.isNotEmpty) {
                                  for (Category category in state.categories) {
                                    if (category.getName(
                                            AppLocalizations.of(context)
                                                .locale
                                                .languageCode) ==
                                        categoryName) {
                                      categoryId = category.id;
                                      break;
                                    }
                                  }
                                }
                                print(FilterData(
                                    authorName: authorName.value.text,
                                    sectionId: categoryId));
                                Navigator.of(context).pop(FilterData(
                                    authorName: authorName.value.text,
                                    sectionId: categoryId));
                              },
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
          ),
        );
      },
    );
  }

  void error(String errorCode) {
    if (errorCode.isNotEmpty) {
      Fluttertoast.showToast(
          msg: (errorCode),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: primaryColor,
          textColor: Colors.white,
          fontSize: 16.0);
      _bloc.add(ClearState());
    }
  }

  String getAuthorNameFromId(
      BuildContext context, int id, BuiltList<Author> authors) {
    if (id == null || authors == null || authors.isEmpty) return null;
    for (Author author in authors) {
      if (author.id == id)
        return author.getName(AppLocalizations.of(context).locale.languageCode);
    }
    return null;
  }

  String getCategoryNameFromId(
      BuildContext context, int id, BuiltList<Category> sections) {
    if (id == null || sections == null || sections.isEmpty) return null;
    for (Category category in sections)
      if (category.id == id)
        return category
            .getName(AppLocalizations.of(context).locale.languageCode);
    return null;
  }
}

// Widget filterDialog(BuildContext context, BuiltList<Category> categories,
//     BuiltList<Author> authors) {
//   TextEditingController bookName = TextEditingController();
//   TextEditingController ISIN = TextEditingController();
//   TextEditingController releaseDate = TextEditingController();
//   String _authorName = '';
//   String categoryName = '';
//   return Dialog(
//     insetPadding: EdgeInsets.all(10),
//     child: Container(
//       height: SizeConfig.screenHeight * 0.7,
//       width: SizeConfig.screenWidth * 0.9,
//       child: Stack(
//         children: [
//           ListView(
//             children: [
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                     horizontal: SizeConfig.blockSizeHorizontal * 3),
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: SizeConfig.blockSizeVertical * 2,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Expanded(child: Container()),
//                         Text(
//                           AppLocalizations.of(context).translate('filter'),
//                           style:
//                               boldStyle.copyWith(color: Colors.black, fontSize: 18),
//                         ),
//                         Expanded(child: Container()),
//                         //Spacer(),
//                         Text(
//                           AppLocalizations.of(context).translate('cancel'),
//                           style: regStyle.copyWith(
//                               color: Color(0xFF28ABE3),
//                               fontWeight: FontWeight.w400),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: SizeConfig.blockSizeVertical * 2,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(AppLocalizations.of(context).translate('book name'),
//                             style: regStyle),
//                         filterTextField(
//                             controller: bookName,
//                             hint:
//                                 AppLocalizations.of(context).translate('book name'))
//                       ],
//                     ),
//                     Divider(
//                       color: Color(0xFFE5E5E5),
//                       thickness: 1.0,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(AppLocalizations.of(context).translate('ISIN'),
//                             style: regStyle),
//                         filterTextField(
//                             controller: ISIN,
//                             hint: AppLocalizations.of(context).translate('ISIN'))
//                       ],
//                     ),
//                     Divider(
//                       color: Color(0xFFE5E5E5),
//                       thickness: 1.0,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(AppLocalizations.of(context).translate('release date'),
//                             style: regStyle),
//                         filterTextField(
//                           controller: releaseDate,
//                           hint: '2020',
//                           suffixIcon: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: buildLocalImage(
//                               'assets/svg/calendar.svg',
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Divider(
//                       color: Color(0xFFE5E5E5),
//                       thickness: 1.0,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(AppLocalizations.of(context).translate('author name'),
//                             style: regStyle),
//                         FilterDropDown(
//                             callBack: (String value) => _authorName = value,
//                             values: authors
//                                 .map((author) => author.getName(
//                                     AppLocalizations.of(context)
//                                         .locale
//                                         .languageCode))
//                                 .toList(),
//                             hint: AppLocalizations.of(context)
//                                 .translate('author name'))
//                       ],
//                     ),
//                     Divider(
//                       color: Color(0xFFE5E5E5),
//                       thickness: 1.0,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(AppLocalizations.of(context).translate('section'),
//                             style: regStyle),
//                         FilterDropDown(
//                             callBack: (String value) => categoryName = value,
//                             values: categories
//                                 .map((category) => category.getName(
//                                     AppLocalizations.of(context)
//                                         .locale
//                                         .languageCode))
//                                 .toList(),
//                             hint: AppLocalizations.of(context).translate('section'))
//                       ],
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(
//                           top: SizeConfig.blockSizeVertical * 4,
//                           right: SizeConfig.blockSizeHorizontal,
//                           left: SizeConfig.blockSizeHorizontal),
//                       child: appButton(
//                         buttonColor: primaryColor,
//                         context: context,
//                         text: AppLocalizations.of(context).translate('apply'),
//                         onTap: () {
//                           int authorId = -1;
//                           if (_authorName != null && _authorName.isNotEmpty) {
//                             for (Author author in authors) {
//                               if (author.getName(AppLocalizations.of(context)
//                                       .locale
//                                       .languageCode) ==
//                                   _authorName) {
//                                 authorId = author.id;
//                                 break;
//                               }
//                             }
//                           }
//                           int categoryId = -1;
//                           if (categoryName != null && categoryName.isNotEmpty) {
//                             for (Category category in categories) {
//                               if (category.getName(AppLocalizations.of(context)
//                                       .locale
//                                       .languageCode) ==
//                                   categoryName) {
//                                 categoryId = category.id;
//                                 break;
//                               }
//                             }
//                           }
//                           print(FilterData(
//                               bookName: bookName.value.text,
//                               releaseDate: releaseDate.value.text,
//                               ISIN: ISIN.value.text,
//                               authorId: authorId,
//                               sectionId: categoryId));
//                           Navigator.of(context).pop(FilterData(
//                               bookName: bookName.value.text,
//                               releaseDate: releaseDate.value.text,
//                               ISIN: ISIN.value.text,
//                               authorId: authorId,
//                               sectionId: categoryId));
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//           loaderApp
//         ],
//       ),
//     ),
//   );
// }
class SortDialog extends StatefulWidget {
  final int initValue;

  const SortDialog(this.initValue);

  @override
  _SortDialogState createState() => _SortDialogState();
}

class _SortDialogState extends State<SortDialog> {
  int radioValue = 1;

  @override
  void initState() {
    super.initState();
    radioValue = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.all(10),
      child: Container(
        height: SizeConfig.screenHeight * 0.4,
        width: SizeConfig.screenWidth,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal * 3),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(),
                      Text(
                        AppLocalizations.of(context).translate('order'),
                        style: boldStyle.copyWith(
                            color: Colors.black, fontSize: 18),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          AppLocalizations.of(context).translate("cancel"),
                          style: regStyle.copyWith(
                              color: Color(0xFFCBCBCB),
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        onChanged: (_) {
                          setState(() {
                            radioValue = _;
                          });
                        },
                        value: 0,
                        activeColor: primaryColor,
                        groupValue: radioValue,
                      ),
                      Text(
                        AppLocalizations.of(context)
                            .translate('Descending Order'),
                        style: regStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Divider(
                    color: Color(0xFFE5E5E5),
                    thickness: 1.0,
                  ),
                  Row(
                    children: [
                      Radio(
                        onChanged: (_) {
                          setState(() {
                            radioValue = _;
                          });
                        },
                        value: 1,
                        activeColor: primaryColor,
                        groupValue: radioValue,
                      ),
                      Text(
                        AppLocalizations.of(context)
                            .translate('Ascending order'),
                        style: regStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: SizeConfig.blockSizeVertical * 3,
                        right: SizeConfig.blockSizeHorizontal,
                        left: SizeConfig.blockSizeHorizontal),
                    child: appButton(
                      buttonColor: primaryColor,
                      context: context,
                      text: AppLocalizations.of(context).translate('apply'),
                      onTap: () {
                        Navigator.of(context)
                            .pop(radioValue == 0 ? 'desc' : 'asc');
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Widget sortDialog(BuildContext context) {
//   return Dialog(
//     insetPadding: EdgeInsets.all(10),
//     child: Container(
//       height: SizeConfig.screenHeight * 0.4,
//       width: SizeConfig.screenWidth,
//       child: Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(
//                 horizontal: SizeConfig.blockSizeHorizontal * 3),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Spacer(),
//                     Text(
//                       AppLocalizations.of(context).translate('order'),
//                       style: boldStyle.copyWith(
//                           color: Colors.black, fontSize: 18),
//                     ),
//                     Spacer(),
//                     Text(
//                       AppLocalizations.of(context).translate("cancel"),
//                       style: regStyle.copyWith(
//                           color: Color(0xFFCBCBCB),
//                           fontWeight: FontWeight.w400),
//                     )
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Radio(
//                       onChanged: (_) {},
//                       value: true,
//                       activeColor: primaryColor,
//                       groupValue: 1,
//                     ),
//                     Text(
//                       AppLocalizations.of(context)
//                           .translate('Descending Order'),
//                       style: regStyle.copyWith(
//                           fontSize: 12, fontWeight: FontWeight.w500),
//                     ),
//                   ],
//                 ),
//                 Divider(
//                   color: Color(0xFFE5E5E5),
//                   thickness: 1.0,
//                 ),
//                 Row(
//                   children: [
//                     Radio(
//                       onChanged: (_) {},
//                       value: false,
//                       activeColor: primaryColor,
//                       groupValue: 0,
//                     ),
//                     Text(
//                       AppLocalizations.of(context).translate('Ascending order'),
//                       style: regStyle.copyWith(
//                           fontSize: 12, fontWeight: FontWeight.w500),
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(
//                       top: SizeConfig.blockSizeVertical * 3,
//                       right: SizeConfig.blockSizeHorizontal,
//                       left: SizeConfig.blockSizeHorizontal),
//                   child: appButton(
//                     buttonColor: primaryColor,
//                     context: context,
//                     text: AppLocalizations.of(context).translate('apply'),
//                     onTap: () {},
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     ),
//   );
// }
