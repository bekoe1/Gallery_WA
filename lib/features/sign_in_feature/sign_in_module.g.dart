// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestUserDtoImpl _$$RequestUserDtoImplFromJson(Map<String, dynamic> json) =>
    _$RequestUserDtoImpl(
      grantType: json['grant_type'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      clientId: json['client_id'] as String,
      clientSecret: json['client_secret'] as String,
    );

Map<String, dynamic> _$$RequestUserDtoImplToJson(
        _$RequestUserDtoImpl instance) =>
    <String, dynamic>{
      'grant_type': instance.grantType,
      'username': instance.username,
      'password': instance.password,
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
    };
