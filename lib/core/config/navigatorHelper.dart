import 'package:flutter/material.dart';

push(BuildContext context, Widget widget) =>
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => widget,
    ));
