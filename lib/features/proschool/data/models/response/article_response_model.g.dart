// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleResponseModel _$ArticleResponseModelFromJson(
        Map<String, dynamic> json) =>
    ArticleResponseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArticleResponseModelToJson(
        ArticleResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      idArticle: json['id_article'] as String?,
      idArticleCategory: json['id_article_category'] as String?,
      datetime: json['datetime'] == null
          ? null
          : DateTime.parse(json['datetime'] as String),
      image: json['image'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      keyword: json['keyword'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id_article': instance.idArticle,
      'id_article_category': instance.idArticleCategory,
      'datetime': instance.datetime?.toIso8601String(),
      'image': instance.image,
      'title': instance.title,
      'description': instance.description,
      'keyword': instance.keyword,
      'content': instance.content,
    };
