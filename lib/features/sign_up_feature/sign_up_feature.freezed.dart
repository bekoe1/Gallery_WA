// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_feature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestUserDto _$RequestUserDtoFromJson(Map<String, dynamic> json) {
  return _RequestUserDto.fromJson(json);
}

/// @nodoc
mixin _$RequestUserDto {
  String get email => throw _privateConstructorUsedError;
  DateTime get birthday => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestUserDtoCopyWith<RequestUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestUserDtoCopyWith<$Res> {
  factory $RequestUserDtoCopyWith(
          RequestUserDto value, $Res Function(RequestUserDto) then) =
      _$RequestUserDtoCopyWithImpl<$Res, RequestUserDto>;
  @useResult
  $Res call(
      {String email,
      DateTime birthday,
      String displayName,
      String? phone,
      String password});
}

/// @nodoc
class _$RequestUserDtoCopyWithImpl<$Res, $Val extends RequestUserDto>
    implements $RequestUserDtoCopyWith<$Res> {
  _$RequestUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? birthday = null,
    Object? displayName = null,
    Object? phone = freezed,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestUserDtoImplCopyWith<$Res>
    implements $RequestUserDtoCopyWith<$Res> {
  factory _$$RequestUserDtoImplCopyWith(_$RequestUserDtoImpl value,
          $Res Function(_$RequestUserDtoImpl) then) =
      __$$RequestUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      DateTime birthday,
      String displayName,
      String? phone,
      String password});
}

/// @nodoc
class __$$RequestUserDtoImplCopyWithImpl<$Res>
    extends _$RequestUserDtoCopyWithImpl<$Res, _$RequestUserDtoImpl>
    implements _$$RequestUserDtoImplCopyWith<$Res> {
  __$$RequestUserDtoImplCopyWithImpl(
      _$RequestUserDtoImpl _value, $Res Function(_$RequestUserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? birthday = null,
    Object? displayName = null,
    Object? phone = freezed,
    Object? password = null,
  }) {
    return _then(_$RequestUserDtoImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestUserDtoImpl implements _RequestUserDto {
  const _$RequestUserDtoImpl(
      {required this.email,
      required this.birthday,
      required this.displayName,
      this.phone,
      required this.password});

  factory _$RequestUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestUserDtoImplFromJson(json);

  @override
  final String email;
  @override
  final DateTime birthday;
  @override
  final String displayName;
  @override
  final String? phone;
  @override
  final String password;

  @override
  String toString() {
    return 'RequestUserDto(email: $email, birthday: $birthday, displayName: $displayName, phone: $phone, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestUserDtoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, birthday, displayName, phone, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestUserDtoImplCopyWith<_$RequestUserDtoImpl> get copyWith =>
      __$$RequestUserDtoImplCopyWithImpl<_$RequestUserDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestUserDtoImplToJson(
      this,
    );
  }
}

abstract class _RequestUserDto implements RequestUserDto {
  const factory _RequestUserDto(
      {required final String email,
      required final DateTime birthday,
      required final String displayName,
      final String? phone,
      required final String password}) = _$RequestUserDtoImpl;

  factory _RequestUserDto.fromJson(Map<String, dynamic> json) =
      _$RequestUserDtoImpl.fromJson;

  @override
  String get email;
  @override
  DateTime get birthday;
  @override
  String get displayName;
  @override
  String? get phone;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$RequestUserDtoImplCopyWith<_$RequestUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TokenDto {
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TokenDtoCopyWith<TokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDtoCopyWith<$Res> {
  factory $TokenDtoCopyWith(TokenDto value, $Res Function(TokenDto) then) =
      _$TokenDtoCopyWithImpl<$Res, TokenDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'access_token') String accessToken});
}

/// @nodoc
class _$TokenDtoCopyWithImpl<$Res, $Val extends TokenDto>
    implements $TokenDtoCopyWith<$Res> {
  _$TokenDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenDtoImplCopyWith<$Res>
    implements $TokenDtoCopyWith<$Res> {
  factory _$$TokenDtoImplCopyWith(
          _$TokenDtoImpl value, $Res Function(_$TokenDtoImpl) then) =
      __$$TokenDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'access_token') String accessToken});
}

/// @nodoc
class __$$TokenDtoImplCopyWithImpl<$Res>
    extends _$TokenDtoCopyWithImpl<$Res, _$TokenDtoImpl>
    implements _$$TokenDtoImplCopyWith<$Res> {
  __$$TokenDtoImplCopyWithImpl(
      _$TokenDtoImpl _value, $Res Function(_$TokenDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? accessToken = null,
  }) {
    return _then(_$TokenDtoImpl(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TokenDtoImpl implements _TokenDto {
  const _$TokenDtoImpl(
      {@JsonKey(name: 'refresh_token') required this.refreshToken,
      @JsonKey(name: 'access_token') required this.accessToken});

  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;
  @override
  @JsonKey(name: 'access_token')
  final String accessToken;

  @override
  String toString() {
    return 'TokenDto(refreshToken: $refreshToken, accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenDtoImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refreshToken, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenDtoImplCopyWith<_$TokenDtoImpl> get copyWith =>
      __$$TokenDtoImplCopyWithImpl<_$TokenDtoImpl>(this, _$identity);
}

abstract class _TokenDto implements TokenDto {
  const factory _TokenDto(
          {@JsonKey(name: 'refresh_token') required final String refreshToken,
          @JsonKey(name: 'access_token') required final String accessToken}) =
      _$TokenDtoImpl;

  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$TokenDtoImplCopyWith<_$TokenDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserDto {
  String get email => throw _privateConstructorUsedError;
  String get userProfilePhoto => throw _privateConstructorUsedError;
  DateTime get birthday => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  List<String> get roles => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res, UserDto>;
  @useResult
  $Res call(
      {String email,
      String userProfilePhoto,
      DateTime birthday,
      String displayName,
      List<String> roles,
      String phone,
      String password});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res, $Val extends UserDto>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? userProfilePhoto = null,
    Object? birthday = null,
    Object? displayName = null,
    Object? roles = null,
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userProfilePhoto: null == userProfilePhoto
          ? _value.userProfilePhoto
          : userProfilePhoto // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDtoImplCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$UserDtoImplCopyWith(
          _$UserDtoImpl value, $Res Function(_$UserDtoImpl) then) =
      __$$UserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String userProfilePhoto,
      DateTime birthday,
      String displayName,
      List<String> roles,
      String phone,
      String password});
}

/// @nodoc
class __$$UserDtoImplCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$UserDtoImpl>
    implements _$$UserDtoImplCopyWith<$Res> {
  __$$UserDtoImplCopyWithImpl(
      _$UserDtoImpl _value, $Res Function(_$UserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? userProfilePhoto = null,
    Object? birthday = null,
    Object? displayName = null,
    Object? roles = null,
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(_$UserDtoImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userProfilePhoto: null == userProfilePhoto
          ? _value.userProfilePhoto
          : userProfilePhoto // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserDtoImpl implements _UserDto {
  const _$UserDtoImpl(
      {required this.email,
      required this.userProfilePhoto,
      required this.birthday,
      required this.displayName,
      required final List<String> roles,
      required this.phone,
      required this.password})
      : _roles = roles;

  @override
  final String email;
  @override
  final String userProfilePhoto;
  @override
  final DateTime birthday;
  @override
  final String displayName;
  final List<String> _roles;
  @override
  List<String> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  final String phone;
  @override
  final String password;

  @override
  String toString() {
    return 'UserDto(email: $email, userProfilePhoto: $userProfilePhoto, birthday: $birthday, displayName: $displayName, roles: $roles, phone: $phone, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDtoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.userProfilePhoto, userProfilePhoto) ||
                other.userProfilePhoto == userProfilePhoto) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      userProfilePhoto,
      birthday,
      displayName,
      const DeepCollectionEquality().hash(_roles),
      phone,
      password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      __$$UserDtoImplCopyWithImpl<_$UserDtoImpl>(this, _$identity);
}

abstract class _UserDto implements UserDto {
  const factory _UserDto(
      {required final String email,
      required final String userProfilePhoto,
      required final DateTime birthday,
      required final String displayName,
      required final List<String> roles,
      required final String phone,
      required final String password}) = _$UserDtoImpl;

  @override
  String get email;
  @override
  String get userProfilePhoto;
  @override
  DateTime get birthday;
  @override
  String get displayName;
  @override
  List<String> get roles;
  @override
  String get phone;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
