import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/injection.dart';
import 'package:maktabeh_app/model/author/author.dart';
import 'package:maktabeh_app/model/category/category.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/filter_drop_down.dart';
import 'package:built_collection/built_collection.dart';
import 'package:maktabeh_app/ui/common_widget/filter_textfield.dart';
import 'package:maktabeh_app/ui/guide/guide_screen.dart';
import 'package:maktabeh_app/ui/mainScreens/search_bloc/search_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/search_bloc/search_event.dart';
import 'package:maktabeh_app/ui/mainScreens/search_bloc/search_state.dart';
import 'package:maktabeh_app/ui/mainScreens/search_result_screen.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isSelected = false;
  List<String> list = [];
  final _bloc = sl<SearchBloc>();
  TextEditingController nameController;
  TextEditingController wordsController;
  List<int> sectionsId = [];
  String _authorName = '';

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    wordsController = TextEditingController();
    _bloc.add(GetAuthor());
    _bloc.add(GetCategories());
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, SearchState state) {
        return Scaffold(
          appBar: app_bar(
              AppLocalizations.of(context).translate('Search'), context),
          body: Stack(
            children: [
              ListView(
                padding: EdgeInsets.all(10),
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: AppLocalizations.of(context)
                          .translate('write your search word here'),
                      contentPadding: EdgeInsets.all(16),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0.1, color: Colors.grey[50]),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintStyle: regStyle.copyWith(color: Color(0xFFCBCBCB)),
                      prefixIcon: ImageIcon(
                        AssetImage(
                          "assets/icons/Search.png",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      top: 8.0,
                      end: 15,
                    ),
                    child: Text(
                      AppLocalizations.of(context).translate('search filter'),
                      style: boldStyle,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              AppLocalizations.of(context)
                                  .translate('author name'),
                              style: regStyle),
                          FilterDropDown(
                              callBack: (String value) => _authorName = value,
                              values: state.authors
                                  .map((author) => author.getName(
                                      AppLocalizations.of(context)
                                          .locale
                                          .languageCode))
                                  .toList(),
                              hint: AppLocalizations.of(context)
                                  .translate('author name'))
                        ],
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 0.5,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      top: 8.0,
                      end: 10,
                    ),
                    child: Text(
                      AppLocalizations.of(context).translate('key word'),
                      style: boldStyle,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: SizeConfig.screenHeight * 0.5,
                    child: categories(
                        context, state.categories, addOrRemove, canAdd),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 0.5,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context)
                              .translate('about the book'),
                          style: boldStyle,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        filterTextField(
                            controller: wordsController,
                            hint: AppLocalizations.of(context)
                                .translate('about the book'),
                            width: SizeConfig.screenWidth * 0.5)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 0.5,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: appButton(
                    buttonColor: primaryColor,
                    context: context,
                    onTap: () {
                      int authorId = -1;
                      if (_authorName.isNotEmpty) {
                        for (Author author in state.authors) {
                          if (author.getName(AppLocalizations.of(context)
                                  .locale
                                  .languageCode) ==
                              _authorName) {
                            authorId = author.id;
                            break;
                          }
                        }
                      }
                      String bookName = '';
                      String words = '';
                      if(wordsController.value != null && wordsController.value.text.isNotEmpty)
                        words = wordsController.value.text;
                      if(nameController.value != null && nameController.value.text.isNotEmpty)
                        bookName = nameController.value.text;
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => SearchResultScreen(
                            SearchData(
                                bookName: bookName,
                                authorId: authorId,
                                sectionsId: sectionsId,
                                words: words),
                          ),
                        ),
                      );
                    },
                    text: AppLocalizations.of(context).translate('Search'),
                  ),
                ),
              ),
              if(state.isLoading)
                Align(alignment: Alignment.center, child: loaderApp,)
            ],
          ),
        );
      },
    );
  }

  void addOrRemove(int id) {
    if (sectionsId.contains(id))
      sectionsId.remove(id);
    else
      sectionsId.add(id);
    print(sectionsId);
  }

  bool canAdd() => sectionsId.length < 5;
}

class SearchData extends Equatable {
  final String bookName;
  final String words;
  final List<int> sectionsId;
  final int authorId;

  const SearchData({
    this.bookName,
    this.words,
    this.sectionsId,
    this.authorId,
  });

  factory SearchData.empty() => SearchData(
        bookName: '',
        words: '',
        sectionsId: [],
        authorId: -1,
      );

  @override
  List<Object> get props => [bookName, words, sectionsId, authorId];
}
Widget categories(BuildContext context, BuiltList<Category> categories,
    Function(int) addOrRemove, Function canAdd) {
  return SingleChildScrollView(
    child: Wrap(
      runSpacing: 10,
      direction: Axis.horizontal, // default
      children: List.generate(categories.length, (index) {
        return Item(categories[index], addOrRemove, canAdd);
      }),
    ),
  );
}