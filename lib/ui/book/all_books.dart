import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/book/all_books_screen_bloc/all_books_bloc.dart';
import 'package:maktabeh_app/ui/book/all_books_screen_bloc/all_books_event.dart';
import 'package:maktabeh_app/ui/book/book_screen.dart';
import 'package:maktabeh_app/ui/common_widget/BookCard.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/local_image.dart';
import 'package:maktabeh_app/ui/common_widget/rate_stars.dart';

import 'all_books_screen_bloc/all_books_state.dart';

class AllBooksScreen extends StatefulWidget {
  @override
  _AllBooksScreenState createState() => _AllBooksScreenState();
}

class _AllBooksScreenState extends State<AllBooksScreen> {
  final _bloc = sl<AllBooksBloc>();
  ScrollController controller = ScrollController();
  @override
  void initState() {
    _bloc.add(GetNextPage());
    controller.addListener(() {
      if (controller.position.atEdge) {
        if (controller.position.pixels ==
            controller.position.maxScrollExtent) {
          print('Geting next');
          _bloc.add(GetNextPage());
        }
      }
    });
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    _bloc.close();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, AllBooksState state) {
        error(state.error);
        return SafeArea(
          child: Scaffold(
            appBar: app_bar(AppLocalizations.of(context).translate('all books'), context),
            body: Stack(
              children: [
                SingleChildScrollView(
                  controller: controller,
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
                                AppLocalizations.of(context).translate('all books'),
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
                            itemCount: state.allBooks.length,
                            shrinkWrap: true,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 0.55,
                            ),
                            itemBuilder: (context, index) {
                              return BookCard(book: state.allBooks[index],);
                            }),
                      ],
                    )),
                if(state.isLoading)
                  loaderApp,
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
