import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/common_widget/CategorisCard.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';
import 'package:maktabeh_app/ui/common_widget/local_image.dart';
import 'package:maktabeh_app/ui/mainScreens/categories_bloc/categories_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/categories_bloc/categories_event.dart';
import 'package:maktabeh_app/ui/mainScreens/categories_bloc/categories_state.dart';


class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final _bloc = sl<CategoriesBloc>();
  FilterData data;
  @override
  void initState() {
    super.initState();
    print('INI');
    _bloc.add(ClearFilter());
    _bloc.add(GetCategories());
    data = FilterData.empty();
  }

  @override
  void dispose() {
    _bloc.add(Clear());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, CategoriesState state) {
        error(state.error);
        print(state);
        return Scaffold(
          body: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context).translate('section'),
                          style: boldStyle,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () async {
                                FilterData newData = await showDialog(
                                    context: context,
                                    builder: (BuildContext ctx) {
                                      return CategoriesFilter(data);
                                    });
                                if(newData == null)
                                  return;
                                if(newData != null && newData != FilterData.empty() && newData != data) {
                                  data = newData;
                                  _bloc.add(AddFilter((b) => b..data = data));
                                } else {
                                  _bloc.add(ClearFilter());
                                }
                                _bloc.add(GetCategories());

                              },
                              child: buildLocalImage('assets/svg/filter.svg'),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.05,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: state.categories == null || state.categories.isEmpty
                        ? Container()
                        : GridView.count(
                            padding: EdgeInsets.only(
                              top: 10,
                              right: 10,
                              left: 10,
                              bottom: 70,
                            ),
                            crossAxisCount: 3,
                            children:
                                List.generate(state.categories.length, (index) {
                              return CategorisCard(
                                category: state.categories[index],
                              );
                            }),
                          ),
                  ),
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
