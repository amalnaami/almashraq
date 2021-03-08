import 'dart:io';

import 'package:maktabeh_app/data/http_helper/ihttpe_helper.dart';
import 'package:maktabeh_app/data/prefs_helper/iprefs_helper.dart';

import 'irepository.dart';

class Repository implements IRepository {
  IPrefsHelper _iprefHelper;

  Repository(this._iprefHelper);

  @override
  Future<int> getAppLanguage() async {
    return await _iprefHelper.getAppLanguage();
  }

  @override
  Future<void> setAppLanguage(int value) async {
    await _iprefHelper.setAppLanguage(value);
  }
}
