import 'dart:convert';

import 'package:proschool/features/identificate/data/models/response/school_token_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IdentificateLocalDatasource {
  Future<bool> saveToken(SchoolTokenResponseModel schoolToken) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final res = await prefs.setString('school', jsonEncode(schoolToken));

    return res;
  }

  Future<String> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final schoolJson = prefs.getString('school') ?? '';
    String schoolData = schoolJson;
    print('GET TOKEN $schoolData');
    return schoolData;
  }

  Future<bool> removeToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove('school');
  }
}
