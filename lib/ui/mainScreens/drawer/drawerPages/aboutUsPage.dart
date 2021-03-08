import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';
import 'package:maktabeh_app/ui/common_widget/customAppBar.dart';

class AboutusPage extends StatefulWidget {
  @override
  _AboutusPageState createState() => _AboutusPageState();
}

class _AboutusPageState extends State<AboutusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, AppLocalizations.of(context).translate("about almashreq")),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            height: 170,
            width: 170,
            child: Image.asset("assets/image/lib_image.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "هذا النص تجريبي يمكن استبدالة من لوحة التحكم هذا النص تجريبي يمكن استبدالة من لوحة التحكم هذا النص تجريبي يمكن استبدالة من لوحة التحكم هذا النص تجريبي يمكن استبدالة من لوحة التحكم هذا النص تجريبي يمكن استبدالة من لوحة التحكم هذا النص تجريبي يمكن استبدالة من لوحة التحكم هذا النص تجريبي يمكن استبدالة من لوحة التحكم هذا النص تجريبي يمكن استبدالة من لوحة التحكم هذا النص تجريبي يمكن استبدالة من لوحة التحكم هذا النص تجريبي يمكن استبدالة من لوحة التحكم هذا النص تجريبي يمكن استبدالة من لوحة التحكم ",
              maxLines: 10,
            ),
          ),
        ],
      ),
    );
  }
}
