// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_token_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchoolTokenResponseModel _$SchoolTokenResponseModelFromJson(
        Map<String, dynamic> json) =>
    SchoolTokenResponseModel(
      data: json['data'] == null
          ? null
          : School.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$SchoolTokenResponseModelToJson(
        SchoolTokenResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

School _$SchoolFromJson(Map<String, dynamic> json) => School(
      idSekolah: json['id_sekolah'] as String?,
      name: json['name'] as String?,
      domainName: json['domain_name'] as String?,
      isPublish: json['is_publish'] as String?,
      colorAccent: json['color_accent'] as String?,
      url: json['url'] as String?,
      code: json['code'] as String?,
      menuTop: (json['menu_top'] as List<dynamic>?)
          ?.map((e) => Menu.fromJson(e as Map<String, dynamic>))
          .toList(),
      menuBottom: (json['menu_bottom'] as List<dynamic>?)
          ?.map((e) => Menu.fromJson(e as Map<String, dynamic>))
          .toList(),
      cbtMasuk: json['cbt_masuk'] as String?,
      cbtKeluar: json['cbt_keluar'] as String?,
      logoUrl: json['logo_url'] as String?,
    );

Map<String, dynamic> _$SchoolToJson(School instance) => <String, dynamic>{
      'id_sekolah': instance.idSekolah,
      'name': instance.name,
      'domain_name': instance.domainName,
      'is_publish': instance.isPublish,
      'color_accent': instance.colorAccent,
      'url': instance.url,
      'code': instance.code,
      'menu_top': instance.menuTop,
      'menu_bottom': instance.menuBottom,
      'cbt_masuk': instance.cbtMasuk,
      'cbt_keluar': instance.cbtKeluar,
      'logo_url': instance.logoUrl,
    };

Menu _$MenuFromJson(Map<String, dynamic> json) => Menu(
      idSekolahMenu: json['id_sekolah_menu'] as String?,
      name: json['name'] as String?,
      icon: json['icon'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      type: json['type'] as String?,
      status: json['status'] as int?,
      category: json['category'] as String?,
    );

Map<String, dynamic> _$MenuToJson(Menu instance) => <String, dynamic>{
      'id_sekolah_menu': instance.idSekolahMenu,
      'name': instance.name,
      'icon': instance.icon,
      'description': instance.description,
      'url': instance.url,
      'type': instance.type,
      'status': instance.status,
      'category': instance.category,
    };
