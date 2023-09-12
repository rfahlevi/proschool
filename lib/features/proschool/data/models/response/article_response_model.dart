// To parse this JSON data, do
//
//     final articleResponseModel = articleResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_response_model.g.dart';

ArticleResponseModel articleResponseModelFromJson(String str) => ArticleResponseModel.fromJson(json.decode(str));

String articleResponseModelToJson(ArticleResponseModel data) => json.encode(data.toJson());

@JsonSerializable()
class ArticleResponseModel {
  @JsonKey(name: "data")
  final List<Datum>? data;

  ArticleResponseModel({
    this.data,
  });

  factory ArticleResponseModel.fromJson(Map<String, dynamic> json) => _$ArticleResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleResponseModelToJson(this);
}

@JsonSerializable()
class Datum {
  @JsonKey(name: "id_article")
  final String? idArticle;
  @JsonKey(name: "id_article_category")
  final String? idArticleCategory;
  @JsonKey(name: "datetime")
  final DateTime? datetime;
  @JsonKey(name: "image")
  final String? image;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "keyword")
  final String? keyword;
  @JsonKey(name: "content")
  final String? content;

  Datum({
    this.idArticle,
    this.idArticleCategory,
    this.datetime,
    this.image,
    this.title,
    this.description,
    this.keyword,
    this.content,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
