import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:proschool/features/identificate/data/datasources/local_school_datasource.dart';
import 'package:proschool/features/identificate/data/models/response/school_token_response_model.dart';
import 'package:http/http.dart' as http;

class SchoolDatasource {
  Future<Either<String, SchoolTokenResponseModel>> identificateSchool(String schoolToken) async {
    var headers = {
      'Content-Type': 'application/json',
    };

    var response = await http.get(
      Uri.parse('https://proschool.id/api/sekolah/code?code=$schoolToken'),
      headers: headers,
    );

    var statusCode = response.statusCode;
    var data = jsonDecode(response.body);
    debugPrint('$statusCode $data');

    if (statusCode == 200) {
      IdentificateLocalDatasource().saveToken(SchoolTokenResponseModel.fromJson(data));
      return Right(SchoolTokenResponseModel.fromJson(data));
    } else {
      return Left(data['message']);
    }
  }
}
