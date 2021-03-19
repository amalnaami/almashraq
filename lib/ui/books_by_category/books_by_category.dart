import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/ui/common_widget/BookCard.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';
import 'package:maktabeh_app/ui/common_widget/local_image.dart';

import 'books_by_category_bloc/books_by_category_bloc.dart';
import 'books_by_category_bloc/books_by_category_event.dart';
import 'books_by_category_bloc/books_by_category_state.dart';


class BooksByCategory extends StatefulWidget {
  final Category category;
  const BooksByCategory(this.category);
  @override
  _BooksByCategoryState createState() => _BooksByCategoryState();
}

class _BooksByCategoryState extends State<BooksByCategory> {
  final _bloc = sl<BooksByCategoryBloc>();
  FilterData filterData = FilterData.empty();
  ScrollController controller = ScrollController();
  String sortType = 'asc';
  @override
  void initState() {
    _bloc.add(GetNextPage((b) => b..categoryId = widget.category.id));
    controller.addListener(() {
      if (controller.position.atEdge) {
        if (controller.position.pixels ==
            controller.position.maxScrollExtent) {
          print('Geting next');
          _bloc.add(GetNextPage((b) => b..categoryId = widget.category.id));
        }
      }
    });
    filterData.sectionId = widget.category.id;
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
      builder: (BuildContext context, BooksByCategoryState state) {
        error(state.error);
        print('SIZE IS ${state.allBooks.length}');
        return SafeArea(
          child: Scaffold(
            appBar: app_bar(widget.category.getName(AppLocalizations.of(context).locale.languageCode), context),
            body: Stack(
              children: [
                SingleChildScrollView(
                    controller: controller,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 3,
                              left: SizeConfig.blockSizeVertical * 3,
                              right: SizeConfig.blockSizeVertical * 3),
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
                                AppLocalizations.of(context).locale.languageCode == 'en' ?
                                '${widget.category.getName(AppLocalizations.of(context).locale.languageCode)} ${AppLocalizations.of(context).translate('books')}' : '${AppLocalizations.of(context).translate('books')} ${widget.category.getName(AppLocalizations.of(context).locale.languageCode)}',
                                style: boldStyle.copyWith(color: Colors.black),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      FilterData data = await showDialog(
                                          context: context,
                                          builder: (BuildContext ctx) {
                                            return FilterDialog(data: filterData, category: false);
                                          });
                                      if(data == null)
                                        filterData = FilterData.empty();
                                      else filterData = data;
                                      _bloc.add(AddFilter((b) => b..data = data));
                                      _bloc.add(GetNextPage((b) => b..categoryId = widget.category.id));
                                    },
                                    child: buildLocalImage('assets/svg/filter.svg'),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                      onTap: () async {
                                        String data = await showDialog(
                                            context: context,
                                            builder: (BuildContext ctx) {
                                              return SortDialog(sortType == 'asc' ? 1 : 0);
                                            });
                                        if(data != null)
                                          sortType = data;
                                        _bloc.add(AddSort((b) => b..sortType = data..id = widget.category.id));
                                        _bloc.add(GetNextPage((b) => b..categoryId = widget.category.id));

                                      },
                                      child: buildLocalImage('assets/svg/sort.svg')),
                                ],
                              ),
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
                              return BookCard(book: state.allBooks[index],singleBookId: state.allBooks[index].id,);
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
