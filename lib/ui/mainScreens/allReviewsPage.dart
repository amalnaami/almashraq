import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';
import 'package:maktabeh_app/ui/common_widget/reviewCard.dart';
import 'package:maktabeh_app/ui/mainScreens/all_review_bloc/all_review_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/all_review_bloc/all_review_event.dart';

import 'all_review_bloc/all_review_state.dart';

class AllReviewsPage extends StatefulWidget {
  @override
  _AllReviewsPageState createState() => _AllReviewsPageState();
}

class _AllReviewsPageState extends State<AllReviewsPage> {
  final _bloc = sl<AllReviewBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(GetReviews());
    _bloc.add(GetIsLogin());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, AllReviewState state) {
        error(state.error);
        return Scaffold(
          appBar: customAppBar(
              context, AppLocalizations.of(context).translate("reviews")),
          body: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      AppLocalizations.of(context).translate('All reviews'),
                      style: boldStyle,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.reviews.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: ReviewCard(
                            review: state.reviews[index],
                            isLogin: state.isLogin,
                          ),
                        );
                      },
                    ),
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
