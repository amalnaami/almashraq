import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/auth/SignUpScreen/sign_up_screen.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/local_image.dart';
import 'package:maktabeh_app/ui/common_widget/rate_stars.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/home_bloc/home_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/home_bloc/home_event.dart';
import 'package:maktabeh_app/ui/mainScreens/HomSereens/home_bloc/home_state.dart';
import 'package:maktabeh_app/ui/review/add_review_screen.dart';
import 'package:maktabeh_app/ui/widgets/widgets.dart';

import '../../injection.dart';

class ReviewScreen extends StatefulWidget {
  bool isLogin;
  int bookid;


  ReviewScreen({this.isLogin, this.bookid});

  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  final _bloc = sl<HomeBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(GetReviewByBookId((b) => b..bookId = widget.bookid));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, HomeState state) {
        error(state.error);
        return SafeArea(
          child: Scaffold(
            appBar: app_bar(
                AppLocalizations.of(context).translate('reviews'), context),
            body: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal * 4),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: SizeConfig.blockSizeVertical * 2),
                                child: appButton(
                                  context: context,
                                  onTap: () {
                                    // state.allReview=
                                widget.isLogin?    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => AddReviewScreen(
                                          bookid: widget.bookid,
                                          isLogin: widget.isLogin),
                                    )):
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext ctx) {
                                        return alertDialog(ctx);
                                      });
                                  },
                                  text: AppLocalizations.of(context)
                                      .translate('add review'),
                                ),
                              ),
                        Divider(
                          thickness: 1,
                          color: Color(0xFFE5E5E5),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: SizeConfig.blockSizeVertical * 2),
                          child: Text(
                            AppLocalizations.of(context)
                                .translate('All reviews'),
                            style: boldStyle.copyWith(color: Colors.black),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          color: Color(0xFFE5E5E5),
                        ),
                        (state.allReview.length != 0)
                            ? ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: state.allReview.length,
                                itemBuilder: (context, index) {
                                  return reviewCard(
                                      context,
                                      state.allReview[index].user_name != null
                                          ? state.allReview[index].user_name
                                          : "No Name",
                                      state.allReview[index].review_text != null
                                          ? state.allReview[index].review_text
                                          : "No Review",
                                      int.parse(state.allReview[index].rating),
                                      state.allReview[index].user_image != null
                                          ? state.allReview[index].user_image
                                          : "https://th.bing.com/th/id/OIP.xo-BCC1ZKFpLL65D93eHcgHaGe?pid=ImgDet&rs=1");
                                })
                            : Center(
                                child: Text('No Review'),
                              )
                      ],
                    ),
                  ),
                  if (state.isLoading) loaderApp,
                ],
              ),
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
          // timeInSecForIosWeb: 1,
          backgroundColor: primaryColor,
          textColor: Colors.white,
          fontSize: 16.0);
      _bloc.add(ClearState());
    }
  }
}

Widget reviewCard(
    BuildContext context, String name, String review, int rate, String image) {
  return Card(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
      Radius.circular(12),
    )),
    child: Container(
      width: SizeConfig.screenWidth,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(12),
      //   boxShadow: [
      //     BoxShadow(color: Colors.grey[300], blurRadius: 3, spreadRadius: 2),
      //   ],
      //   color: Colors.white,
      // ),
      color: Colors.white,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(SizeConfig.devicePixelRatio * 4),
            height: SizeConfig.screenWidth * 0.2,
            width: SizeConfig.screenWidth * 0.2,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(image),
                )),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: SizeConfig.screenWidth * 0.6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          name,
                          style: boldStyle.copyWith(
                              fontSize: 12, color: Colors.black),
                        ),
                      ),
                      Spacer(),
                      rateStars(16, rate),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 2,
                ),
                Container(
                  width: SizeConfig.screenWidth * 0.5,
                  child:  Text(
                    review,
                    //  'كتاب جداً رائع لقد انهيته في مدة قصيرة ونال أعجابي الشديد',
                    style: lightStyle.copyWith(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
                .translate('You cant add review'),
            style: boldStyle.copyWith(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          AppLocalizations.of(context).translate(
              'Sign in now...'),
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
            text: AppLocalizations.of(context).translate('Register'),
            context: context,
            onTap: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(
                  builder: (context) => SignupScreen()
              ));
            },
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
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