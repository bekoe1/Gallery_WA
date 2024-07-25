// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestUserDtoImpl _$$RequestUserDtoImplFromJson(Map<String, dynamic> json) =>
    _$RequestUserDtoImpl(
      email: json['email'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      displayName: json['displayName'] as String,
      phone: json['phone'] as String,
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

_$RequestRefreshTokenDtoImpl _$$RequestRefreshTokenDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestRefreshTokenDtoImpl(
      grantType: json['grantType'] as String,
      refreshToken: json['refreshToken'] as String,
      clientId: json['clientId'] as String,
      clientSecret: json['clientSecret'] as String,
    );

Map<String, dynamic> _$$RequestRefreshTokenDtoImplToJson(
        _$RequestRefreshTokenDtoImpl instance) =>
    <String, dynamic>{
      'grantType': instance.grantType,
      'refreshToken': instance.refreshToken,
      'clientId': instance.clientId,
      'clientSecret': instance.clientSecret,
    };

_$TokenDtoImpl _$$TokenDtoImplFromJson(Map<String, dynamic> json) =>
    _$TokenDtoImpl(
      refreshToken: json['refresh_token'] as String,
      accessToken: json['access_token'] as String,
    );

Map<String, dynamic> _$$TokenDtoImplToJson(_$TokenDtoImpl instance) =>
    <String, dynamic>{
      'refresh_token': instance.refreshToken,
      'access_token': instance.accessToken,
    };
