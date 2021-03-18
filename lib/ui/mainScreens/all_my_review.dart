import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/app_localizations.dart';
import '../../core/config/navigatorHelper.dart';
import '../../core/loaderApp.dart';
import '../../core/style/baseColors.dart';
import '../../injection.dart';
import '../common_widget/customAppBar.dart';
import '../common_widget/rate_stars.dart';
import '../common_widget/soshialBar.dart';
import '../review/review_screen.dart';
import '../widgets/widgets.dart';
import 'SettingBloc/setting_bloc.dart';
import 'SettingBloc/setting_event.dart';
import 'SettingBloc/setting_state.dart';

class AllMyReview extends StatefulWidget {
  final bool isLogin;
AllMyReview({ this.isLogin});
  @override
  _AllMyReviewState createState() => _AllMyReviewState();
}

class _AllMyReviewState extends State<AllMyReview> {
  final _bloc = sl<SettingBloc>();
  @override
  void initState() {

    super.initState();
    _bloc.add(GetAppLanguage());
    _bloc.add(GetUserReview());


  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context, SettingState state){
      return
        Scaffold(
        appBar: customAppBar(context, AppLocalizations.of(context).translate("my reviews")),
        body: Stack(
          children: [
            ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: state.reviewUser.length,
              itemBuilder: (context, index) {
                return Card(

                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.38,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                               ClipRRect(
                                    borderRadius: BorderRadius.circular(150),
                                    child: Image.network(
                                      state.reviewUser[index].user_image!=null?state.reviewUser[index].user_name:'http://www.aristaphysicaltherapy.com/wp-content/uploads/2017/11/laksman.jpg',
                                    ),
                                  ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              state.reviewUser[index].user_name!=null?state.reviewUser[index].user_name:"No Name",
                                              style: boldStyle,
                                            ),
                                            Row(
                                              children: [
                                                rateStars(16, 5),
                                                SizedBox(width: 8),
                                                // Icon(
                                                //   Icons.share,
                                                //   size: 18,
                                                //   color: seconderyColor,
                                                // ),
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        ReadMoreText(
                                          state.reviewUser[index].review_text!=null?state.reviewUser[index].review_text:"No Name",
                                          trimLines: 1,
                                          textDirection:
                                          AppLocalizations.of(context).locale.languageCode == 'ar'
                                              ? TextDirection.ltr
                                              : TextDirection.rtl,
                                          style: regStyle.copyWith(color: Colors.black),
                                        ),
                                        // Text(
                                        //   "كتاب رائع جدا ولقد نال اعجابي وواو",
                                        //   style: regStyle,
                                        // ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SoshialBar(state.reviewUser[index].review_text),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 0),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(10),
                                              child: Image.network(
                                                state.reviewUser[index].book.image!=null?state.reviewUser[index].book.image:'http://www.aristaphysicaltherapy.com/wp-content/uploads/2017/11/laksman.jpg',
                                                height: double.infinity,
                                                fit: BoxFit.fill,
                                                width: double.infinity,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            // margin: EdgeInsets.symmetric(horizontal: 5),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children: [
                                                    ImageIcon(
                                                      AssetImage("assets/icons/book.png"),
                                                      color: primaryColor,
                                                      size: 15,
                                                    ),
                                                    Text(AppLocalizations.of(context).translate('book'),
                                                        style: regStyle.copyWith(fontSize: 10)),
                                                  ],
                                                ),
                                                Text(
                                                  state.reviewUser[index].getAuthorName(AppLocalizations.of(context).locale.languageCode)!=null? state.reviewUser[index].getAuthorName(AppLocalizations.of(context).locale.languageCode):"No Data",
                                                  style: boldStyle.copyWith(fontSize: 12),
                                                ),
                                                Row(
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children: [
                                                    ImageIcon(
                                                      AssetImage("assets/icons/Profile.png"),
                                                      color: primaryColor,
                                                      size: 15,
                                                    ),
                                                    Text(AppLocalizations.of(context).translate('author'),
                                                        style: regStyle.copyWith(fontSize: 10)),
                                                  ],
                                                ),
                                                Text(
                                                  state.reviewUser[index].getAuthorName(AppLocalizations.of(context).locale.languageCode)!=null? state.reviewUser[index].getAuthorName(AppLocalizations.of(context).locale.languageCode):"No Data",
                                                  style:  boldStyle.copyWith(fontSize: 12),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                Expanded(
                                  flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                        ),
                                        color: Color(0xff1a6c9e),
                                      ),
                                      padding: EdgeInsets.all(20),
                                      alignment: Alignment.center,
                                      child: InkWell(
                                        onTap: () {
                                          push(context, ReviewScreen(isLogin: true, bookid: state.reviewUser[index].book.id,));
                                        },
                                        child: Text(
                                          AppLocalizations.of(context).translate('watch reviews for the same book'),
                                          textAlign: TextAlign.center,
                                          style: regStyle.copyWith(color: Colors.white),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            if (state.isLoading) loaderApp,
          ],
        ));
        },
    );
  }}
