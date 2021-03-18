import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/model/book/book.dart';
import 'package:maktabeh_app/ui/book/all_books_screen_bloc/all_books_bloc.dart';
import 'package:maktabeh_app/ui/book/all_books_screen_bloc/all_books_event.dart';
import 'package:maktabeh_app/ui/common_widget/BookCard.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';
import 'package:maktabeh_app/ui/common_widget/local_image.dart';
import 'package:built_collection/built_collection.dart';

class BookListView extends StatefulWidget {
  final String title;
  final BuiltList<Book> books;
  const BookListView(this.title, this.books);
  @override
  _BookListViewState createState() => _BookListViewState();
}

class _BookListViewState extends State<BookListView>{
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return SafeArea(
          child: Scaffold(
            appBar: app_bar(widget.title, context),
            body: Stack(
              children: [
                SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 3,
                              left: SizeConfig.blockSizeVertical * 2,
                              right: SizeConfig.blockSizeVertical * 2),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 20,
                                width: 3,
                                color: Color(0xFF1A6C9E),
                                margin: const EdgeInsets.symmetric(horizontal: 5),
                              ),
                              Text(
                                widget.title,
                                style: boldStyle.copyWith(color: Colors.black),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext ctx) {
                                            return filterDialog(ctx);
                                          });
                                    },
                                    child: buildLocalImage('assets/svg/filter.svg'),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext ctx) {
                                              return sortDialog(ctx);
                                            });
                                      },
                                      child: buildLocalImage('assets/svg/sort.svg')),
                                ],
                              )
                            ],
                          ),
                        ),
                        GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 4),
                            itemCount: widget.books.length,
                            shrinkWrap: true,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 0.55,
                            ),
                            itemBuilder: (context, index) {
                              return BookCard(book: widget.books[index],);
                            }),
                      ],
                    )),
              ],
            ),
          ),
        );

  }
}
