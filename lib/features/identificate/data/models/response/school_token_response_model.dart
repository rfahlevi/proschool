// To parse this JSON data, do
//
//     final schoolTokenResponseModel = schoolTokenResponseModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'school_token_response_model.g.dart';

SchoolTokenResponseModel schoolTokenResponseModelFromJson(String str) =>
    SchoolTokenResponseModel.fromJson(json.decode(str));

String schoolTokenResponseModelToJson(SchoolTokenResponseModel data) => json.encode(data.toJson());

@JsonSerializable()
class SchoolTokenResponseModel {
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "data")
  final School? data;

  SchoolTokenResponseModel({this.data, this.message});

  factory SchoolTokenResponseModel.fromJson(Map<String, dynamic> json) => _$SchoolTokenResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$SchoolTokenResponseModelToJson(this);
}

@JsonSerializable()
class School {
  @JsonKey(name: "id_sekolah")
  final String? idSekolah;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "domain_name")
  final String? domainName;
  @JsonKey(name: "is_publish")
  final String? isPublish;
  @JsonKey(name: "color_accent")
  final String? colorAccent;
  @JsonKey(name: "url")
  final String? url;
  @JsonKey(name: "code")
  final String? code;
  @JsonKey(name: "menu_top")
  final List<Menu>? menuTop;
  @JsonKey(name: "menu_bottom")
  final List<Menu>? menuBottom;
  @JsonKey(name: "cbt_masuk")
  final String? cbtMasuk;
  @JsonKey(name: "cbt_keluar")
  final String? cbtKeluar;
  @JsonKey(name: "logo_url")
  final String? logoUrl;

  School({
    this.idSekolah,
    this.name,
    this.domainName,
    this.isPublish,
    this.colorAccent,
    this.url,
    this.code,
    this.menuTop,
    this.menuBottom,
    this.cbtMasuk,
    this.cbtKeluar,
    this.logoUrl,
  });

  factory School.fromJson(Map<String, dynamic> json) => _$SchoolFromJson(json);

  Map<String, dynamic> toJson() => _$SchoolToJson(this);
}

@JsonSerializable()
class Menu {
  @JsonKey(name: "id_sekolah_menu")
  final String? idSekolahMenu;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "icon")
  final String? icon;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "url")
  final String? url;
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "status")
  final int? status;
  @JsonKey(name: "category")
  final String? category;

  Menu({
    this.idSekolahMenu,
    this.name,
    this.icon,
    this.description,
    this.url,
    this.type,
    this.status,
    this.category,
  });

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);

  Map<String, dynamic> toJson() => _$MenuToJson(this);
}
