import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/response/article_response_model.dart';

class ArticleDatasource {
  Future<Either<String, ArticleResponseModel>> getArticles() async {
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(Uri.parse('https://proschool.id/api/article'), headers: headers);

    var statusCode = response.statusCode;
    var data = jsonDecode(response.body);
    debugPrint('$statusCode $data');

    if (statusCode == 200) {
      return Right(ArticleResponseModel.fromJson(data));
    } else {
      return Left(data.toString());
    }
  }
}
