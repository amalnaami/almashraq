import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/app_localizations.dart';
import '../../core/loaderApp.dart';
import '../../core/style/baseColors.dart';
import '../../injection.dart';
import '../common_widget/customAppBar.dart';
import '../common_widget/soshialBar.dart';
import '../widgets/widgets.dart';
import 'SettingBloc/setting_bloc.dart';
import 'SettingBloc/setting_event.dart';
import 'SettingBloc/setting_state.dart';

class AllMyQuote extends StatefulWidget {
  @override
  _AllMyQuoteState createState() => _AllMyQuoteState();
}

class _AllMyQuoteState extends State<AllMyQuote> {
  final _bloc = sl<SettingBloc>();
  @override
  void initState() {

    super.initState();
    _bloc.add(GetAppLanguage());
    _bloc.add(GetUserQuote());
    _bloc.add(GetUserReview());
    _bloc.add(GetProfileData());

    _bloc.add(GetIsLogin());

  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context, SettingState state){
      return Scaffold(
      appBar:customAppBar(context, AppLocalizations.of(context).translate('my quotes')),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(AppLocalizations.of(context).translate('my quotes'), style: boldStyle),
                ),
                (state.quoteUser!=null&&state.quoteUser.length!=0)?   Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    itemCount: state.quoteUser.length,
                    itemBuilder: (context, index) {
                      return  Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 5,
                        margin: EdgeInsets.all(8),
                        child: Container(
                          //height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(color: Colors.grey[300], blurRadius: 3, spreadRadius: 2),
                            ],
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                   state.quoteUser[index].book.image!=null?  state.quoteUser[index].book.image:'http://www.aristaphysicaltherapy.com/wp-content/uploads/2017/11/laksman.jpg',
                                    height: MediaQuery.of(context).size.height * 0.15,
                                    fit: BoxFit.fill,
                                    width: MediaQuery.of(context).size.height * 0.15,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ReadMoreText(
                                     state.quoteUser[index].quotation_text!=null?state.quoteUser[index].quotation_text:"No Data",
                                      trimLines: 1,
                                      textDirection:
                                      AppLocalizations.of(context).locale.languageCode == 'ar'
                                          ? TextDirection.ltr
                                          : TextDirection.rtl,
                                      style: regStyle.copyWith(color: Colors.black),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        ImageIcon(
                                          AssetImage("assets/icons/book.png"),
                                          color: primaryColor,
                                          size: 12,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: Text(
                                            state.quoteUser[index].getBookName(AppLocalizations.of(context).locale.languageCode)!=null?state.quoteUser[index].getBookName(AppLocalizations.of(context).locale.languageCode):"No Data",
                                         //   "${quote.getBookName(AppLocalizations.of(context).locale.languageCode)}",
                                            style: regStyle.copyWith(fontSize: 12),
                                          ),
                                        ),
                                        SvgPicture.asset(
                                          "assets/svg/Broken-Profile.svg",
                                          height: 15,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: Text(
                                            state.quoteUser[index].getAuthorName(AppLocalizations.of(context).locale.languageCode)!=null?state.quoteUser[index].getAuthorName(AppLocalizations.of(context).locale.languageCode):"No Data",
                                        //    "${quote.getAuthorName(AppLocalizations.of(context).locale.languageCode)}",
                                            style: regStyle.copyWith(fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),

                                    SoshialBar(state.quoteUser[index].quotation_text),
                                    // if (title == "الاقتباسات" || title == 'quotes')
                                    //   Text(
                                    //     AppLocalizations.of(context)
                                    //         .translate('quotes for the same author'),
                                    //     style: regStyle.copyWith(color: Colors.grey),
                                    //   )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ):Container(),
              ],
            ),
          ),
          if (state.isLoading) loaderApp,

        ],
      ),
    );
        },
    );
  }
}
