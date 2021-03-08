import 'package:flutter/material.dart';

import 'app/App.dart';
import 'injection.dart';

void main() async {
  await iniGetIt();
  runApp(App());
}
