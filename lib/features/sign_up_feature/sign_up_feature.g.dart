// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestUserDtoImpl _$$RequestUserDtoImplFromJson(Map<String, dynamic> json) =>
    _$RequestUserDtoImpl(
      email: json['email'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      displayName: json['displayName'] as String,
      phone: json['phone'] as String?,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$RequestUserDtoImplToJson(
        _$RequestUserDtoImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'birthday': instance.birthday.toIso8601String(),
      'displayName': instance.displayName,
      'phone': instance.phone,
      'password': instance.password,
    };
