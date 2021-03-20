import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';

import 'app/App.dart';
import 'core/config/firebase_notifications.dart';
import 'injection.dart';

void main() async {
  await iniGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  Admob.initialize();
  runApp(App());
}
