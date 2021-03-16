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
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';
import 'package:maktabeh_app/ui/common_widget/local_image.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/home_bloc/home_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/home_bloc/home_event.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/home_bloc/home_state.dart';


class BookSameSection extends StatefulWidget {

  final int bookId;
  final int sectionId;

  BookSameSection(
      {Key key,this.bookId, this.sectionId})
      : super(key: key);

  @override
  _BookSameSectionState createState() => _BookSameSectionState();
}

class _BookSameSectionState extends State<BookSameSection> {
  final _bloc = sl<HomeBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(GetSectionByBook((b) => b..bookId = widget.bookId
    ..sectionId=widget.sectionId));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, HomeState state) {
        error(state.error);
        return Scaffold(
          appBar: customAppBar(context,AppLocalizations.of(context)
              .translate('books for the same section')),
          body: Stack(
            children: [
              Column(
                children: [
                  // widget.bookNum == true
                  //     ?
              // Padding(
              //       padding: EdgeInsets.only(
              //           bottom: SizeConfig.blockSizeVertical,
              //           top: SizeConfig.blockSizeVertical * 3,
              //           left: SizeConfig.blockSizeVertical * 3,
              //           right: SizeConfig.blockSizeVertical * 3),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Text(
              //             AppLocalizations.of(context).translate(
              //                 'books for the same section'),
              //             style: boldStyle.copyWith(color: Colors.black),
              //           ),
              //           Row(
              //             children: [
              //               buildLocalImage('assets/svg/book.svg'),
              //               SizedBox(
              //                 width: 4,
              //               ),
              //               Text(
              //                 '${widget.booksCount}',
              //                 style: regStyle,
              //               )
              //             ],
              //           )
              //         ],
              //       ),
              //     )
                      Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                        AppLocalizations.of(context)
                        .translate('books for the same section'),
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
                    child: (state.sectionBook == null ||state.sectionBook.books==null||state.sectionBook.books.data==null|| state.sectionBook.books.data.length==0)
                        ? Container()
                        : GridView.count(
                      padding: EdgeInsets.only(right: 5, left: 5, bottom: 0),
                      childAspectRatio: (1 / 1.7),
                      crossAxisCount: 3,
                      children: List.generate(state.sectionBook.books.data.length, (index) {
                        return BookCard(book: state.sectionBook.books.data[index], singleBookId: state.sectionBook.books.data[index].id,);
                      }),
                    ),
                  )
                ],
              ),
              if(state.isLoading)
                loaderApp
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
