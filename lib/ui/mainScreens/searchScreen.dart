import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/size_config.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/ui/common_widget/app_bar.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';

import 'package:maktabeh_app/ui/common_widget/filter_drop_down.dart';
import 'package:maktabeh_app/ui/common_widget/filter_textfield.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isSelected = false;
  List<String> list = [];

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    if(list.isEmpty) {
      list = [
        AppLocalizations.of(context).translate('islamic history'),
        AppLocalizations.of(context).translate('short stories'),
        AppLocalizations.of(context).translate('novel'),
        AppLocalizations.of(context).translate('poetry'),
        AppLocalizations.of(context).translate('translated plays'),
        AppLocalizations.of(context).translate('arabic history'),
      ];
    }
    SizeConfig.init(context);
    return Scaffold(
      appBar: app_bar(AppLocalizations.of(context).translate('Search'), context),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.all(10),
            children: [
              TextFormField(
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
                      AppLocalizations.of(context).translate('book name'),
                      style: boldStyle,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    filterDropDown(context,
                        hint: AppLocalizations.of(context)
                            .translate('author name'),
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
                  child: Wrap(
                children: List.generate(list.length, (index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    child: FilterChip(
                      backgroundColor: greyColor,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: SizeConfig.blockSizeVertical * 2),
                      label: Text(
                        list[index],
                        style: regStyle.copyWith(
                          fontSize: 12,
                          color:
                              isSelected ? Colors.black : Color(0xFF9C9C9C),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      selected: false,
                      onSelected: (bool selected) {
                        setState(() {
                          isSelected = !isSelected;
                        });
                      },
                      shape: RoundedRectangleBorder(
                        side: isSelected
                            ? BorderSide(
                                color: primaryColor,
                                width: 1.0,
                              )
                            : BorderSide(
                                color: Colors.white,
                                width: 0,
                              ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  );
                }),
              )),
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
                onTap: () {},
                text: AppLocalizations.of(context).translate('Search'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
