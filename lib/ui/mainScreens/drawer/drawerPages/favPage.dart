import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/ui/book/book_screen.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/favorite_bloc/favorite_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/favorite_bloc/favorite_event.dart';
import 'package:maktabeh_app/ui/mainScreens/drawer/favorite_bloc/favorite_state.dart';

class FavPage extends StatefulWidget {
  @override
  _FavPageState createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  final _bloc = sl<FavoriteBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(GetFavorites());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, FavoriteState state) {
        error(state.error);
        print(state.books);
        return Scaffold(
          appBar: customAppBar(
              context, AppLocalizations.of(context).translate("favorite")),
          body: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context).translate('favorite'),
                          style: boldStyle,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/svg/book.svg",
                              height: 12,
                            ),
                            SizedBox(width: 10),
                            Text(state.books.length.toString()),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      padding: EdgeInsets.all(5),
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 0.6,
                      children: List.generate(
                        state.books.length,
                        (index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(
                                      builder: (_) => BookScreen(
                                            singleBook: state.books[index],
                                            bookId: state.books[index].id,
                                          )));

                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 1,
                                          color: Colors.grey[200],
                                          spreadRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 3,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.network(
                                                state.books[index].image,
                                                height: double.infinity,
                                                fit: BoxFit.fill,
                                                width: double.infinity,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 4,
                                          child: Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    SvgPicture.asset(
                                                      "assets/svg/book.svg",
                                                      height: 15,
                                                    ),
                                                    SizedBox(width: 5),
                                                    Text(
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate("book"),
                                                      style: regStyle.copyWith(
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  state.books[index].getName(
                                                      AppLocalizations.of(
                                                              context)
                                                          .locale
                                                          .languageCode),
                                                  style: boldStyle,
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    ImageIcon(
                                                      AssetImage(
                                                          "assets/icons/Profile.png"),
                                                      color: primaryColor,
                                                      size: 15,
                                                    ),
                                                    Text(
                                                        AppLocalizations.of(
                                                                context)
                                                            .translate(
                                                                'author'),
                                                        style:
                                                            regStyle.copyWith(
                                                                fontSize: 12)),
                                                  ],
                                                ),
                                                Text(
                                                  state.books[index].author
                                                      .getName(
                                                          AppLocalizations.of(
                                                                  context)
                                                              .locale
                                                              .languageCode),
                                                  style: boldStyle,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => _bloc.add(RemoveFavorite((b) => b..id = state.books[index].id)),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(0.0),
                                        child: SvgPicture.asset(
                                          "assets/svg/fav_on.svg",
                                          width: 22,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
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
          // timeInSecForIosWeb: 1,
          backgroundColor: primaryColor,
          textColor: Colors.white,
          fontSize: 16.0);
      _bloc.add(ClearState());
    }
  }
}
