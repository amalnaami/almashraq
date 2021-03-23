import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/ui/book/book_same_section.dart';
import 'package:maktabeh_app/ui/book/book_screen_bloc/book_screen_state.dart';
import 'package:maktabeh_app/ui/book/buy_books.dart';
import 'package:maktabeh_app/ui/book/quotes_screen.dart';
import 'package:maktabeh_app/ui/books_by_category/books_by_category.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/local_image.dart';
import 'package:maktabeh_app/ui/common_widget/rate_stars.dart';
import 'package:maktabeh_app/ui/mainScreens/moreBooksPage.dart';
import 'package:maktabeh_app/ui/review/review_screen.dart';
import 'package:maktabeh_app/injection.dart';

import 'book_screen_bloc/book_screen_bloc.dart';
import 'book_screen_bloc/book_screen_event.dart';

class BookScreen extends StatefulWidget {
  final Book singleBook;
  final Author author;
  final bookId;

  BookScreen({this.singleBook, this.bookId, this.author});

  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  final _bloc = sl<BookScreenBloc>();

  @override
  void initState() {
    super.initState();
    print(widget.singleBook);
    _bloc.add(GetIsLogin());
    _bloc.add(GetFavorite((b) => b..id = widget.bookId));
    isFav = false;
  }

  bool showAnswer1 = false;
  bool showAnswer2 = false;
  bool showAnswer3 = false;

  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, BookScreenState state) {
        print(
            '${widget.singleBook.getName(AppLocalizations.of(context).locale.languageCode)}  ${state.isFavorite}');
        error(state.error);
        print('IS FAVOI : ${state.isFavorite}');
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Padding(
                    padding: EdgeInsets.all(14.0),
                    child: buildLocalImage(
                      AppLocalizations.of(context).locale.toLanguageTag() ==
                              'ar'
                          ? 'assets/svg/arrow_back_grey.svg'
                          : 'assets/svg/arrow_forward.svg',
                      color: Colors.deepOrange,
                    ),
                  )),
              actions: [
                InkWell(
                  onTap: () async {
                    String _msg;
                    StringBuffer _sb = new StringBuffer();
                    setState(() {
                      _sb.write("كتاب اماريتا كتاب جميل حاول تشوفة");
                      _sb.write(
                          " https://books-library.online/files/books-library.online-1572336149-742.jpg \n");

                      _msg = _sb.toString();
                    });

                    if (1 == 1) {
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
                  child: Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Icon(
                        Icons.share,
                        color: seconderyColor,
                        // child: buildLocalImage(
                        //   isFav
                        //       ? 'assets/svg/fav_off.svg'
                        //       : 'assets/svg/fav_on.svg',
                        // ),
                      )),
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        if (!state.isLoading)
                          _bloc.add(ModifyFavorite((b) => b
                            ..isFavorite = state.isFavorite
                            ..id = widget.bookId));
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.all(14.0),
                      child: buildLocalImage(
                        !state.isFavorite
                            ? 'assets/svg/fav_off.svg'
                            : 'assets/svg/fav_on.svg',
                      ),
                    )),
              ],
            ),
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.blockSizeHorizontal * 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          widget.singleBook.image,
                          //  'assets/image/book_image.png',
                        ),
                        SizedBox(height: SizeConfig.blockSizeVertical),
                        Column(
                          children: [
                            Text(
                              widget.singleBook.getName(
                                          AppLocalizations.of(context)
                                              .locale
                                              .languageCode) !=
                                      null
                                  ? widget.singleBook.getName(
                                      AppLocalizations.of(context)
                                          .locale
                                          .languageCode)
                                  : 'No Name',
                              // 'الأوابد',
                              style: boldStyle.copyWith(fontSize: 18),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: SizeConfig.blockSizeVertical),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/icons/Profile.png',
                                    height: 12,
                                    color: primaryColor,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    widget.singleBook.editor != null
                                        ? widget.singleBook.editor
                                        : 'No Name',
                                    // 'عبدالوهاب عزام',
                                    style: lightStyle.copyWith(
                                        color: Color(0xFFABABAB), fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            rateStars(20, widget.singleBook.rate),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFE5E5E5),
                            ),
                            appButton(
                              context: context,
                              onTap: () {
                                if (state.isLogin == false)
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext ctx) {
                                        return alertDialog(ctx);
                                      });
                              },
                              text: AppLocalizations.of(context)
                                  .translate('read book'),
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFE5E5E5),
                            ),
                            bookRow(context,
                                show: showAnswer1,
                                icon: 'assets/svg/book.svg',
                                arrow: 'assets/svg/arrow_down.svg',
                                widget: Column(
                                  children: [
                                    Divider(
                                      thickness: 1,
                                      color: Color(0xFFE5E5E5),
                                    ),
                                    Container(
                                      color: Colors.white,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              RichText(
                                                text: TextSpan(
                                                    text: AppLocalizations.of(
                                                            context)
                                                        .translate('section:'),
                                                    style: boldStyle.copyWith(
                                                      color: primaryColor,
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                          text:
                                                              '${widget.singleBook.section?.getName(AppLocalizations.of(context).locale.languageCode)}',
                                                          style:
                                                              regStyle.copyWith(
                                                                  color: Colors
                                                                      .black))
                                                    ]),
                                              ),
                                              Spacer(),
                                              RichText(
                                                text: TextSpan(
                                                    text: AppLocalizations.of(
                                                            context)
                                                        .translate(
                                                            'page number:'),
                                                    style: boldStyle.copyWith(
                                                      color: primaryColor,
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                          text: widget
                                                              .singleBook
                                                              .pages_count,
                                                          style:
                                                              regStyle.copyWith(
                                                                  color: Colors
                                                                      .black))
                                                    ]),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: SizeConfig
                                                    .blockSizeVertical),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                      text: AppLocalizations.of(
                                                              context)
                                                          .translate(
                                                              'Release:'),
                                                      style: boldStyle.copyWith(
                                                        color: primaryColor,
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                            text: widget
                                                                .singleBook
                                                                .publish_year,
                                                            //AppLocalizations.of(context).translate('Arabic novels'),
                                                            style: regStyle
                                                                .copyWith(
                                                                    color: Colors
                                                                        .black))
                                                      ]),
                                                ),
                                                Spacer(),
                                                RichText(
                                                  text: TextSpan(
                                                      text: AppLocalizations.of(
                                                              context)
                                                          .translate('number:'),
                                                      style: boldStyle.copyWith(
                                                        color: primaryColor,
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                            text: widget
                                                                .singleBook
                                                                .isbn,
                                                            //AppLocalizations.of(context).translate('Arabic novels'),
                                                            style: regStyle
                                                                .copyWith(
                                                                    color: Colors
                                                                        .black))
                                                      ]),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            AppLocalizations.of(context)
                                                .translate('Definition'),
                                            style: boldStyle.copyWith(
                                                color: Colors.black),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            width: SizeConfig.screenWidth,
                                            child: Text(
                                              widget.singleBook.getDescription(
                                                  AppLocalizations.of(context)
                                                      .locale
                                                      .languageCode),
                                              // 'قبل أيام من اندلاع حرب السادس من أكتوبر لعام 1973 ميلادية، يتم تكليف أربعة من جنود وضباط من الصاعقة المصرية بنسف محطة الرصد والتقصي الإسرائيلية (عاين) والتي تقع في أعماق سيناء المحتلة. كانت تلك العملية غاية في الخطورة وقد يتوقف عليها نجاح أو فشل الضربة الجوية الأولى',
                                              style: lightStyle.copyWith(
                                                  fontSize: 12, height: 1.8),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ), onTab: () {
                              setState(() {
                                showAnswer1 = !showAnswer1;
                              });
                            },
                                text: AppLocalizations.of(context)
                                    .translate('about the book')),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFE5E5E5),
                            ),
                            bookRow(context,
                                show: showAnswer3,
                                icon: 'assets/svg/star.svg',
                                widget: Container(), onTab: () {
                              print(
                                  'widget.bookIdwidget.bookIdwidget.bookId ${widget.bookId}');
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ReviewScreen(
                                  isLogin: state.isLogin,
                                  bookid: widget.bookId,
                                ),
                              ));
                            },
                                text: AppLocalizations.of(context)
                                    .translate('reviews')),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFE5E5E5),
                            ),
                            bookRow(context,
                                show: showAnswer3,
                                icon: 'assets/svg/buy.svg',
                                widget: Container(), onTab: () {
                              if (state.isLogin == true)
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => BuyBooksScreen(linkData: widget.singleBook.links,),
                                ));
                            },
                                text: AppLocalizations.of(context)
                                    .translate('buy the book')),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFE5E5E5),
                            ),
                            bookRow(context,
                                show: showAnswer3,
                                icon: 'assets/svg/quote.svg',
                                widget: Container(),
                                onTab: () => Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => QuotesScreen(
                                        isLogin: state.isLogin,
                                        bookid: widget.bookId,
                                      ),
                                    )),
                                text: AppLocalizations.of(context)
                                    .translate('quotes')),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFE5E5E5),
                            ),
                            bookRow(context,
                                show: showAnswer2,
                                icon: 'assets/svg/person.svg',
                                arrow: 'assets/svg/arrow_down.svg',
                                widget: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Divider(
                                        thickness: 1,
                                        color: Color(0xFFE5E5E5),
                                      ),
                                      Text(
                                        AppLocalizations.of(context)
                                            .translate('Definition'),
                                        style: boldStyle.copyWith(
                                            color: Colors.black),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Text(
                                                widget.singleBook.author
                                                    .getBrief(
                                                        AppLocalizations.of(
                                                                context)
                                                            .locale
                                                            .languageCode),
                                                // 'عبد الوهاب عزام: رائد الدراسات الفارسية، الأديب والدبلوماسي والباحث والمفكر الذي قدَّم للميادين البحثية طائفةً متنوِّعةً من الأبحاث في الأدب والتاريخ والتصوف. وقد اتسم بعُمق الثقافة العربية والإسلامية والأدبية؛ فقد وقف على أدب ',
                                                style: regStyle.copyWith(
                                                    fontSize: 12, height: 1.8),
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.network(
                                              widget.singleBook.author.image,
                                              fit: BoxFit.fill,
                                              height: SizeConfig.screenHeight *
                                                  0.25,
                                              width: SizeConfig.screenHeight *
                                                  0.15,
                                            ),
                                          )
                                        ],
                                      ),
                                      //  Text('',
                                      // //   widget.singleBook.getDescription(AppLocalizations.of(context).locale.languageCode),
                                      //    // 'قبل أيام من اندلاع حرب السادس من أكتوبر لعام 1973 ميلادية، يتم تكليف أربعة من جنود وضباط من الصاعقة المصرية بنسف محطة الرصد والتقصي الإسرائيلية (عاين) والتي تقع في أعماق سيناء المحتلة. كانت تلك العملية غاية في الخطورة وقد يتوقف عليها نجاح أو فشل الضربة الجوية الأولى',
                                      //    style: regStyle.copyWith(fontSize: 12, height: 1.8),
                                      //  ),
                                    ],
                                  ),
                                ), onTab: () {
                              setState(() {
                                showAnswer2 = !showAnswer2;
                              });
                            },
                                text: AppLocalizations.of(context)
                                    .translate('about author')),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFE5E5E5),
                            ),
                            bookRow(context,
                                show: showAnswer3,
                                icon: 'assets/svg/book.svg',
                                widget: Container(), onTab: () async {
                              await Navigator.of(context)
                                  .push(MaterialPageRoute(
                                builder: (_) => MoreBookPage(
                                  authorId: widget.author.id,
                                  booksCount: widget.author.books_count,
                                  title: AppLocalizations.of(context)
                                      .translate('books for the same author'),
                                  bookNum: true,
                                ),
                              ));
                              _bloc.add(GetFavorite((b) => b..id = widget.bookId));
                            },
                                text: AppLocalizations.of(context)
                                    .translate('books for the same author')),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFE5E5E5),
                            ),
                            bookRow(context,
                                show: showAnswer3,
                                icon: 'assets/svg/book.svg',
                                widget: Container(), onTab: () async {
                              await Navigator.of(context)
                                  .push(MaterialPageRoute(
                                builder: (context) =>
                                    BooksByCategory(widget.singleBook.section),
                                //     Navigator.of(context).push(MaterialPageRoute(
                                //   builder: (context) => AboutWriterScreen(widget.author),
                              ));
                              _bloc.add(GetFavorite((b) => b..id = widget.bookId));

                                },
                                text: AppLocalizations.of(context)
                                    .translate('books for the same section')),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFE5E5E5),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
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
}

Widget bookRow(context,
    {bool show,
    Function onTab,
    String text,
    String icon,
    String arrow,
    Widget widget}) {
  Widget arr = buildLocalImage(
      arrow ??
          (AppLocalizations.of(context).locale.toLanguageTag() == 'en'
              ? 'assets/svg/arrow_back_grey.svg'
              : 'assets/svg/arrow_forward.svg'),
      color: Colors.grey);
  if (arrow == null || arrow != 'assets/svg/arrow_down.svg') {
    buildLocalImage(
        AppLocalizations.of(context).locale.toLanguageTag() == 'en'
            ? 'assets/svg/arrow_back_grey.svg'
            : 'assets/svg/arrow_forward.svg',
        color: Colors.grey);
  }
  print('WIDGET IS $arr');
  return InkWell(
    onTap: onTab,
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: SizeConfig.blockSizeHorizontal * 2,
                    right: SizeConfig.blockSizeHorizontal * 2),
                child: buildLocalImage(icon),
              ),
              Text(
                text,
                style: boldStyle,
              ),
              Spacer(),
              GestureDetector(
                child: Container(
                  child: Visibility(
                    visible: show,
                    child: buildLocalImage(
                      'assets/svg/arrow_up.svg',
                    ),
                    replacement: arr,
                  ),
                ),
                onTap: onTab,
              )
            ],
          ),
        ),
        Visibility(
          visible: show,
          child: widget,
        ),
      ],
    ),
  );
}

Widget alertDialog(BuildContext context) {
  return Dialog(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 4),
          child: buildLocalImage(
            'assets/svg/dialog.svg',
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical),
          child: Text(
            AppLocalizations.of(context)
                .translate('book is not available to read'),
            style: boldStyle.copyWith(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          AppLocalizations.of(context).translate(
              'Sign in now... all books will be available after signing in'),
          style: regStyle.copyWith(color: Color(0xFF9C9C9C)),
          textAlign: TextAlign.center,
        ),
        // SizedBox(height: 6),
        // Text(
        //   '.في تطبيق مكتبة المشرق الإلكترونية',
        //   style: regStyle.copyWith(color: Color(0xFF9C9C9C)),
        //   textAlign: TextAlign.center,
        // ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: SizeConfig.blockSizeVertical * 2,
              horizontal: SizeConfig.blockSizeHorizontal * 6),
          child: appButton(
            text: AppLocalizations.of(context).translate('Subscribe'),
            context: context,
            onTap: () {},
          ),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            AppLocalizations.of(context).translate('cancel'),
            style: regStyle.copyWith(
                color: Color(0xFF12416D), fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 20),
      ],
    ),
  );
}

Widget bookInfo(BuildContext context) {
  return Column(
    children: [
      Divider(
        thickness: 1,
        color: Color(0xFFE5E5E5),
      ),
      Container(
        color: Colors.white,
        height: SizeConfig.screenHeight * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RichText(
                  text: TextSpan(
                      text: AppLocalizations.of(context).translate('section:'),
                      style: boldStyle.copyWith(
                        color: primaryColor,
                      ),
                      children: [
                        TextSpan(
                            text: AppLocalizations.of(context)
                                .translate('Arabic novels'),
                            style: regStyle.copyWith(color: Colors.black))
                      ]),
                ),
                RichText(
                  text: TextSpan(
                      text: AppLocalizations.of(context)
                          .translate('page number:'),
                      style: boldStyle.copyWith(
                        color: primaryColor,
                      ),
                      children: [
                        TextSpan(
                            text: '120',
                            style: regStyle.copyWith(color: Colors.black))
                      ]),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RichText(
                    text: TextSpan(
                        text:
                            AppLocalizations.of(context).translate('Release:'),
                        style: boldStyle.copyWith(
                          color: primaryColor,
                        ),
                        children: [
                          TextSpan(
                              text: '2021-01-19',
                              //AppLocalizations.of(context).translate('Arabic novels'),
                              style: regStyle.copyWith(color: Colors.black))
                        ]),
                  ),
                  RichText(
                    text: TextSpan(
                        text: AppLocalizations.of(context).translate('number:'),
                        style: boldStyle.copyWith(
                          color: primaryColor,
                        ),
                        children: [
                          TextSpan(
                              text: '12345678',
                              //AppLocalizations.of(context).translate('Arabic novels'),
                              style: regStyle.copyWith(color: Colors.black))
                        ]),
                  ),
                ],
              ),
            ),
            Text(
              AppLocalizations.of(context).translate('Definition'),
              style: boldStyle.copyWith(color: Colors.black),
            ),
            Container(
              width: SizeConfig.screenWidth,
              child: Text(
                'قبل أيام من اندلاع حرب السادس من أكتوبر لعام 1973 ميلادية، يتم تكليف أربعة من جنود وضباط من الصاعقة المصرية بنسف محطة الرصد والتقصي الإسرائيلية (عاين) والتي تقع في أعماق سيناء المحتلة. كانت تلك العملية غاية في الخطورة وقد يتوقف عليها نجاح أو فشل الضربة الجوية الأولى',
                style: lightStyle.copyWith(fontSize: 12, height: 1.8),
              ),
            )
          ],
        ),
      ),
    ],
  );
}

Widget aboutWriter(BuildContext context) {
  return Container(
    height: SizeConfig.screenHeight * 0.5,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          thickness: 1,
          color: Color(0xFFE5E5E5),
        ),
        Text(
          AppLocalizations.of(context).translate('Definition'),
          style: boldStyle.copyWith(color: Colors.black),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                'عبد الوهاب عزام: رائد الدراسات الفارسية، الأديب والدبلوماسي والباحث والمفكر الذي قدَّم للميادين البحثية طائفةً متنوِّعةً من الأبحاث في الأدب والتاريخ والتصوف. وقد اتسم بعُمق الثقافة العربية والإسلامية والأدبية؛ فقد وقف على أدب ',
                style: regStyle.copyWith(fontSize: 12, height: 1.8),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/image/writer.png",
                fit: BoxFit.fill,
                height: SizeConfig.screenHeight * 0.25,
                width: SizeConfig.screenHeight * 0.15,
              ),
            )
          ],
        ),
        Text(
          'قبل أيام من اندلاع حرب السادس من أكتوبر لعام 1973 ميلادية، يتم تكليف أربعة من جنود وضباط من الصاعقة المصرية بنسف محطة الرصد والتقصي الإسرائيلية (عاين) والتي تقع في أعماق سيناء المحتلة. كانت تلك العملية غاية في الخطورة وقد يتوقف عليها نجاح أو فشل الضربة الجوية الأولى',
          style: regStyle.copyWith(fontSize: 12, height: 1.8),
        ),
      ],
    ),
  );
}
