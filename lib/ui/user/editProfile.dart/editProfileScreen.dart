import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/core/config/navigatorHelper.dart';
import 'package:maktabeh_app/core/loaderApp.dart';
import 'package:maktabeh_app/core/style/baseColors.dart';
import 'package:maktabeh_app/model/user/profile_model.dart';
import 'package:maktabeh_app/ui/auth/compnent/CustomField2.dart';
import 'package:image_picker/image_picker.dart';
import 'package:maktabeh_app/ui/common_widget/CustomAlert.dart';
import 'package:maktabeh_app/ui/common_widget/app_button.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';
import 'package:maktabeh_app/ui/mainScreens/SettingBloc/setting_bloc.dart';
import 'package:maktabeh_app/ui/mainScreens/SettingBloc/setting_event.dart';
import 'package:maktabeh_app/ui/mainScreens/SettingBloc/setting_state.dart';
import 'package:maktabeh_app/ui/start_screen/start_screen.dart';
import 'package:maktabeh_app/ui/user/editProfile.dart/editPassScreen.dart';

import '../../../injection.dart';
import 'package:maktabeh_app/model/user/user_data.dart';
import 'package:maktabeh_app/model/user/user.dart';
import 'package:maktabeh_app/ui/mainScreens/main_screen.dart';

class EfitProfileScreen extends StatefulWidget {
  final User userData;
  final ProfileModel profileModel;

  EfitProfileScreen({this.userData, this.profileModel});

  @override
  _EfitProfileScreenState createState() => _EfitProfileScreenState();
}

class _EfitProfileScreenState extends State<EfitProfileScreen> {
  final _bloc = sl<SettingBloc>();
  var _nameController = TextEditingController();
  var _nameuserController = TextEditingController();
  var _emailController = TextEditingController();
  var _teleController = TextEditingController();
  var _genderController = TextEditingController();

  File _image;
  String dropdownCountry;
  String genderType = '0';
  String genderValueType = null;

  @override
  void initState() {
    super.initState();
    _bloc.add(GetAppLanguage());
    _bloc.add(GetProfileData());
    _bloc.add(GetCountry());
  }

  @override
  Widget build(BuildContext context) {
    final sizeAware = MediaQuery.of(context).size;

    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, SettingState state) {
        error(state.error);
        if (state.successedit) {
          print('successeditsuccessedit ${state.successedit}');
          // error(AppLocalizations.of(context).translate('success change'));
          WidgetsBinding.instance.addPostFrameCallback((_) =>
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => MainPage())));
        }
        // if (state.success) {
        //   WidgetsBinding.instance.addPostFrameCallback((_) =>
        //       Navigator.of(context).pop());
        // }
//           if (state.success) {
// print('successeditsuccesseditsuccessedit${state.successedit}');
//             WidgetsBinding.instance.addPostFrameCallback((_) => Navigator.of(context).pop());
//                 Navigator.of(context).pushReplacement(
//                     MaterialPageRoute(builder: (context) => MainPage()));
//           error(AppLocalizations.of(context).translate('adding successfully'));
//
//           }
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: customAppBar(
              context, AppLocalizations.of(context).translate('edit profile')),
          body: (widget.userData == null)
              ? Container()
              : Stack(
                  children: [
                    ListView(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                      children: [
                        Center(
                          child: Container(
                            height: 130,
                            width: 130,
                            child: Stack(
                              children: [
                                // ClipRRect(
                                //   borderRadius: BorderRadius.circular(1000),
                                //   child:  _image!=null?
                                //   FileImage(_image)
                                //       :
                                //   Image.network(
                                //     widget.userData.image, fit: BoxFit.cover),
                                //      // 'https://th.bing.com/th/id/OIP.BJLPreahM4_L0rTTUQAasQAAAA?pid=ImgDet&w=350&h=350&rs=1'),
                                //   // Image.asset(
                                //   //   "assets/image/3.jpg",
                                //   //   fit: BoxFit.fill,
                                //   //   height: double.infinity,
                                //   //   width: double.infinity,
                                //   // ),
                                // ),
                                Container(
                                  width: sizeAware.width * 0.3,
                                  height: sizeAware.width * 0.3,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 1), // changes position of shadow
                                      ),
                                    ],
                                    border: Border.all(
                                        color: Colors.grey[200],
                                        width: sizeAware.width * 0.008),
                                    image: DecorationImage(
                                        image: _image != null
                                            ? FileImage(_image)
                                            : NetworkImage(
                                                widget.userData.image != null
                                                    ? widget.userData.image
                                                    : "https://th.bing.com/th/id/OIP.BJLPreahM4_L0rTTUQAasQAAAA?pid=ImgDet&w=350&h=350&rs=1",
                                              ),
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(60)),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    getImage();
                                  },
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: CircleAvatar(
                                      child: SvgPicture.asset(
                                        "assets/icons/Plus.svg",
                                        height: 18,
                                        width: 18,
                                      ),
                                      radius: 18,
                                      backgroundColor: primaryColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            onChanged: (v) {
                              _bloc.add(ChangeUserName((b) => b..value = v));
                            },
                            // controller: _nameuserController,
                            maxLines: 1,
                            initialValue: widget.profileModel.data.username,
                            decoration: InputDecoration(
                              fillColor: Color(0xFFFBFBFB),
                              filled: true,
                              hintStyle:
                                  regStyle.copyWith(color: Color(0xFFC4C4C4)),
                              //labelText: widget.profileModel.data.username,
                              hintText: AppLocalizations.of(context)
                                  .translate('user name'),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                  "assets/svg/Profile.svg",
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20.0, horizontal: 10),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            onChanged: (v) {
                              _bloc.add(ChangeTele((b) => b..value = v));
                            },

                            // validator: (v) {
                            //   if (v.isEmpty) {
                            //     return AppLocalizations.of(context)
                            //         .translate("name can not be empty");
                            //   }
                            //   return null;
                            // }    ,
                            // controller: _teleController,
                            maxLines: 1,
                            initialValue:
                                widget.profileModel.data.mobile ?? 'No Mobile',
                            decoration: InputDecoration(
                              fillColor: Color(0xFFFBFBFB),
                              filled: true,
                              hintStyle:
                                  regStyle.copyWith(color: Color(0xFFC4C4C4)),
                              //   labelText: widget.profileModel.data.mobile ?? 'No Mobile',
                              hintText: AppLocalizations.of(context)
                                  .translate('phone number (optional)'),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                  "assets/svg/mobile.svg",
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20.0, horizontal: 10),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            onChanged: (v) {
                              _bloc.add(ChangeEmail((b) => b..value = v));
                            },
                            // validator: (v) {
                            //   if (v.isEmpty) {
                            //     return AppLocalizations.of(context)
                            //         .translate("email can not be empty");
                            //   }
                            //   return null;
                            // }    ,
                            //   controller: _emailController,
                            maxLines: 1,
                            initialValue:
                                widget.profileModel.data.email ?? 'No email',
                            decoration: InputDecoration(
                              fillColor: Color(0xFFFBFBFB),
                              filled: true,
                              hintStyle:
                                  regStyle.copyWith(color: Color(0xFFC4C4C4)),
                              hintText: AppLocalizations.of(context)
                                  .translate('email'),
                              //labelText: widget.profileModel.data.email ?? 'No email',
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                  "assets/svg/email.svg",
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20.0, horizontal: 10),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),
                        // CustomFeild2(
                        //   controller: _nameController,
                        //   hintText: AppLocalizations.of(context).translate('user name'),
                        //   iconPath: "assets/svg/Profile.svg",
                        // ),
                        // CustomFeild2(
                        //   controller: _emailController,
                        //   hintText: AppLocalizations.of(context).translate('email'),
                        //   iconPath: "assets/svg/email.svg",
                        // ),

                        // CustomFeild2(
                        //   controller: _teleController,
                        //   hintText: AppLocalizations.of(context).translate('phone number (optional)'),
                        //   iconPath: "assets/svg/mobile.svg",
                        // ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey[50],
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          margin: EdgeInsets.only(top: 15, bottom: 20),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: SvgPicture.asset(
                                  "assets/svg/User.svg",
                                  width: 32,
                                ),
                              ),
                              Expanded(
                                child: DropdownButton<String>(
                                  underline: Container(),
                                  value: genderValueType,
                                  isExpanded: true,
                                  hint: Container(
                                    child: Text(
                                      widget.profileModel.data.gender ??
                                          'No gender',
                                      style: regStyle.copyWith(
                                          color: Color(0xFFC4C4C4),
                                          fontSize: 17),
                                    ),
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.grey[300],
                                    size: 32,
                                  ),
                                  style: TextStyle(color: Colors.deepPurple),
                                  onChanged: (String newValue) {
                                    _bloc.add(ChangeGender(
                                        (b) => b..value = newValue));

                                    setState(() {
                                      if (newValue == 'Male') {
                                        genderValueType = newValue;
                                        genderType = 'male';
                                      } else if (newValue == 'Female') {
                                        genderValueType = newValue;
                                        genderType = 'female';
                                      }
                                    });
                                  },
                                  items: <String>['Female', 'Male']
                                      .map<DropdownMenuItem<String>>((value) {
                                    return DropdownMenuItem<String>(
                                        value: value,
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              right: 2, left: 12),
                                          child: Text(
                                            value,
                                            style: regStyle.copyWith(
                                                color: Color(0xFFC4C4C4),
                                                fontSize: 17),
                                          ),
                                        ));
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        (state.country == null)
                            ? Container()
                            : Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.grey[50],
                                ),
                                padding: EdgeInsets.symmetric(vertical: 10),
                                margin: EdgeInsets.only(top: 15, bottom: 20),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: SvgPicture.asset(
                                        "assets/svg/Location.svg",
                                        width: 32,
                                      ),
                                    ),
                                    Expanded(
                                      child: DropdownButton<String>(
                                        underline: Container(),
                                        value: dropdownCountry,
                                        isExpanded: true,
                                        hint: Container(
                                          child: Text(
                                            widget.profileModel.data.country ??
                                                'No country',
                                            style: regStyle.copyWith(
                                                color: Color(0xFFC4C4C4),
                                                fontSize: 17),
                                          ),
                                        ),
                                        icon: Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Colors.grey[300],
                                          size: 32,
                                        ),
                                        style:
                                            TextStyle(color: Colors.deepPurple),
                                        onChanged: (String newValue) {
                                          _bloc.add(ChangeCountry(
                                              (b) => b..value = newValue));

                                          print('selectedValue  $newValue');
                                          setState(() {
                                            dropdownCountry = newValue;
                                          });
                                        },
                                        items: state.country
                                            .map<DropdownMenuItem<String>>(
                                                (value) {
                                          return DropdownMenuItem<String>(
                                              value: value.id.toString(),
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                    right: 2, left: 12),
                                                child: Text(
                                                  value.getName(
                                                      AppLocalizations.of(
                                                              context)
                                                          .locale
                                                          .languageCode),
                                                  style: regStyle.copyWith(
                                                      color: Color(0xFFC4C4C4),
                                                      fontSize: 17),
                                                ),
                                              ));
                                        }).toList(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                        // OptionalFeild(
                        //   title: AppLocalizations.of(context).translate('gender'),
                        //   onTap: () {},
                        //   iconPath: "assets/icons/Iconly-Broken-2 User.png",
                        // ),
                        // OptionalFeild(
                        //   title: AppLocalizations.of(context).translate('country'),
                        //   onTap: () {},
                        //   iconPath: "assets/icons/Iconly-Broken-Location.png",
                        // ),
                        SizedBox(
                          height: 20,
                        ),
                        appButton(
                            buttonColor: primaryColor,
                            context: context,
                            text: AppLocalizations.of(context)
                                .translate('save changes'),
                            textColor: Colors.white,
                            onTap: () {
                              if (state.user == null ||
                                  state.user.user==null) {
                                error('plz all check data');
                                return;
                              }else if (state.user.user.mobile == null ||
                                  state.user.user.mobile.isEmpty) {
                                error('mobile can not be empty');
                                return;
                              }else
                              if (state.user.user.username == null ||
                                  state.user.user.username.isEmpty) {
                                error(AppLocalizations.of(context)
                                    .translate('username can not be empty'));
                                return;
                              } else if (state.user.user.country == null ||
                                  state.user.user.country.isEmpty) {
                                error(AppLocalizations.of(context)
                                    .translate('country can not be empty'));
                                return;
                              } else if (genderType == null ||
                                  genderType == '0' ||
                                  genderType.isEmpty) {
                                print('genderTypegenderType $genderType');
                                error(AppLocalizations.of(context)
                                    .translate('gender can not be empty'));
                                return;
                              }
                              if (state.user.user.email == null ||
                                  state.user.user.email.isEmpty) {
                                error(AppLocalizations.of(context)
                                    .translate('email can not be empty'));
                                return;
                              }
                              // else
                              //  {
                              //    _bloc.add(TryEdit((b) => b
                              //      ..username = _nameuserController.value.text!=null?_nameuserController.value.text:widget.profileModel.data.username
                              //      ..email = _emailController.value.text!=null?_emailController.value.text:widget.profileModel.data.email
                              //      ..tele = _teleController.value.text!=null?_teleController.value.text:widget.profileModel.data.mobile
                              //      ..gender = genderType.toString()!=null?genderType.toString():widget.profileModel.data.gender
                              //      ..country_code = dropdownCountry.toString()!=null?dropdownCountry.toString():widget.profileModel.data.country
                              //      ..image =_image));
                              _bloc.add(TryEdit((b) => b
                                ..username = state.user.user.username
                                ..email = state.user.user.email
                                ..image = _image
                                ..tele = state.user.user.mobile
                                ..gender = genderType.toString()
                                ..country_code = state.user.user.country));
                              // Navigator.of(context).pushReplacement(
                              //     MaterialPageRoute(builder: (context) => StartScreen()));
                              print(
                                  'state.user.user.usernamestate.user.user.username${state.user.user.username}');
                              print(
                                  'state.user.user.usernamestate.user.user.username${state.user.user.mobile}');
                              print(
                                  'state.user.user.usernamestate.user.user.username${state.user.user.gender}');
                              print(
                                  'state.user.user.usernamestate.user.user.username${state.user.user.country}');
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => MainPage()));

                              error(AppLocalizations.of(context)
                                  .translate('adding successfully'));

                              // Navigator.of(context).pushReplacement(
                              //          MaterialPageRoute(builder: (context) => MainPage()));
                              //error(AppLocalizations.of(context).translate('adding successfully'));

                              // Navigator.of(context).pushReplacement(
                              //   MaterialPageRoute(builder: (context) => MainPage()));
                              // CustomAlert().submitChangeData(
                              //   context: context,
                              //   onSubmite: () {
                              //     _bloc.add(TryEdit((b) => b
                              //     ..name=widget.userData.name
                              //       ..username = _nameController.value.text
                              //       ..email = _emailController.value.text
                              //       ..tele = _teleController.value.text
                              //       ..gender = genderType.toString()
                              //       ..country_code = dropdownCountry.toString()
                              //       ..image =_image));
                              //   },
                              //   title: AppLocalizations.of(context).translate('To save the changes, please type the password'),
                              //   textBtn: AppLocalizations.of(context).translate('save changes'),
                              //   hintText: AppLocalizations.of(context).translate('password'),
                              // );
                            }),
                        SizedBox(
                          height: 35,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(color: Color(0xFFE5E5E5)),
                              bottom: BorderSide(color: Color(0xFFE5E5E5)),
                            ),
                          ),
                          child: ListTile(
                            onTap: () => push(context, EditPassScreen()),
                            title: Text(
                              AppLocalizations.of(context)
                                  .translate('Change password'),
                              style: regStyle,
                            ),
                            trailing: SvgPicture.asset(
                              AppLocalizations.of(context)
                                          .locale
                                          .toLanguageTag() ==
                                      'ar'
                                  ? 'assets/svg/arrow_back_white.svg'
                                  : 'assets/svg/arrow_forward.svg',
                              color: Colors.white,
                              height: 15,
                            ),
                            leading: ImageIcon(
                              AssetImage("assets/icons/Lock.png"),
                            ),
                          ),
                        )
                      ],
                    ),
                    if (state.isLoading) loaderApp,
                  ],
                ),
        );
      },
    );
  }

  Future getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        // _bloc.add(ChangeFname((b) =>
        // b
        //   ..value=v
        // ));
      }
    });
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
