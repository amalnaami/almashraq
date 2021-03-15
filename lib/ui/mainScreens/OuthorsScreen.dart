import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';
import 'package:maktabeh_app/ui/common_widget/local_image.dart';
import 'package:maktabeh_app/ui/common_widget/outhorCard.dart';
import 'package:maktabeh_app/ui/mainScreens/author_bloc/author_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/author_bloc/author_event.dart';

import 'author_bloc/author_state.dart';

class OuthorScreen extends StatefulWidget {
  @override
  _OuthorScreenState createState() => _OuthorScreenState();
}

class _OuthorScreenState extends State<OuthorScreen> {
  final _bloc = sl<AuthorBloc>();

  @override
  void initState() {
    _bloc.add(GetIsLogin());
    _bloc.add(GetAuthors());
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
      builder: (BuildContext context, AuthorState state) {
        error(state.error);
        return Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context).translate('All Author'),
                          style: boldStyle,
                        ),
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
                              width: SizeConfig.screenWidth * 0.05,
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
                  Expanded(
                    child: state.authors == null || state.authors.isEmpty
                        ? Container()
                        : GridView.count(
                      padding: EdgeInsets.only(right: 5, left: 5, bottom: 100),
                      childAspectRatio: (1 / 1.8),
                      crossAxisCount: 3,
                      children: List.generate(state.authors.length, (index) {
                        return OuthorCard(author: state.authors[index]);
                      }),
                    ),
                  )
                ],
              ),
              if(state.isLoading)
                loaderApp,
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
