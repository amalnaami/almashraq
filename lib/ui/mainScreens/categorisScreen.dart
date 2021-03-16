import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/common_widget/CategorisCard.dart';
import 'package:maktabeh_app/ui/mainScreens/categories_bloc/categories_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/categories_bloc/categories_event.dart';

import 'categories_bloc/categories_state.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final _bloc = sl<CategoriesBloc>();

  @override
  void initState() {
    _bloc.add(GetCategories());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, CategoriesState state) {
        error(state.error);
        return Scaffold(
          body: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      AppLocalizations.of(context).translate('section'),
                      style: boldStyle,
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
