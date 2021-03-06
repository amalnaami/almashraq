import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/common_widget/BookCard.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';
import 'package:maktabeh_app/ui/common_widget/local_image.dart';
import 'package:maktabeh_app/ui/mainScreens/author_books_bloc/author_books_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/author_books_bloc/author_books_event.dart';

import 'author_books_bloc/author_books_state.dart';

class MoreBookPage extends StatefulWidget {
  final String title;
  final bool bookNum;
  final int authorId;
  final int booksCount;

  MoreBookPage(
      {Key key,
      @required this.title,
      this.bookNum,
      this.authorId,
      this.booksCount})
      : super(key: key);

  @override
  _MoreBookPageState createState() => _MoreBookPageState();
}

class _MoreBookPageState extends State<MoreBookPage> {
  final _bloc = sl<AuthorBooksBloc>();
  FilterData filterData = FilterData.empty();
  ScrollController controller = ScrollController();
  String sortType = 'asc';

  @override
  void initState() {
    _bloc.currentPage = 1;
    _bloc.lastPage = 2;
    _bloc.data = FilterData.empty();
    _bloc.add(GetAuthorBooks((b) => b..id = widget.authorId));
    controller.addListener(() {
      if (controller.position.atEdge) {
        if (controller.position.pixels == controller.position.maxScrollExtent) {
          print('Geting next');
          _bloc.add(GetAuthorBooks((b) => b..id = widget.authorId));
        }
      }
    });
    filterData.authorId = widget.authorId;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, AuthorBooksState state) {
        error(state.error);
        print(state == AuthorBooksState.init());
        return Scaffold(
          appBar: customAppBar(context, widget.title),
          body: Stack(
            children: [
              Column(
//                controller: controller,
                children: [
                  widget.bookNum == true
                      ? Padding(
                          padding: EdgeInsets.only(
                              bottom: SizeConfig.blockSizeVertical,
                              top: SizeConfig.blockSizeVertical * 3,
                              left: SizeConfig.blockSizeVertical * 3,
                              right: SizeConfig.blockSizeVertical * 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppLocalizations.of(context)
                                    .translate('books for the same author'),
                                style: boldStyle.copyWith(color: Colors.black),
                              ),
                              Row(
                                children: [
                                  buildLocalImage('assets/svg/book.svg'),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '${widget.booksCount}',
                                    style: regStyle,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      FilterData data = await showDialog(
                                          context: context,
                                          builder: (BuildContext ctx) {
                                            return FilterDialog(
                                                data: filterData,
                                                author: false);
                                          });
                                      if (data == null)
                                        filterData = FilterData.empty();
                                      else
                                        filterData = data;
                                      _bloc.add(
                                          AddFilter((b) => b..data = data));
                                      _bloc.add(GetAuthorBooks(
                                          (b) => b..id = widget.authorId));
                                    },
                                    child: buildLocalImage(
                                        'assets/svg/filter.svg'),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                      onTap: () async {
                                        String data = await showDialog(
                                            context: context,
                                            builder: (BuildContext ctx) {
                                              return SortDialog(
                                                  sortType == 'asc' ? 1 : 0);
                                            });
                                        if (data != null) sortType = data;
                                        _bloc.add(AddSort((b) => b
                                          ..sortType = data
                                          ..id = widget.authorId));
                                        _bloc.add(GetAuthorBooks(
                                            (b) => b..id = widget.authorId));
                                      },
                                      child: buildLocalImage(
                                          'assets/svg/sort.svg')),
                                ],
                              )
                            ],
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.title,
                                style: boldStyle,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.filter_alt_sharp,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.swap_vert,
                                    color: Colors.grey,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                  Expanded(
                    child: state.books == null
                        ? Container()
                        : GridView.builder(
                      controller: controller,
                           // physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.all(
                                SizeConfig.blockSizeHorizontal * 4),
                            itemCount: state.books.length,
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 0.55,
                            ),
                            itemBuilder: (context, index) {
                              return BookCard(
                                book: state.books[index],
                                singleBookId: state.books[index].id,
                              );
                            }),
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
