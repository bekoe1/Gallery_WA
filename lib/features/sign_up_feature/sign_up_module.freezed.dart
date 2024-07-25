// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_module.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String username,
            String birthday, String confirmedPas)
        signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password, String username,
            String birthday, String confirmedPas)?
        signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String username,
            String birthday, String confirmedPas)?
        signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUp value) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUp value)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SignUpEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String username,
            String birthday, String confirmedPas)
        signUp,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password, String username,
            String birthday, String confirmedPas)?
        signUp,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String username,
            String birthday, String confirmedPas)?
        signUp,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUp value) signUp,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUp value)? signUp,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SignUpEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SignUpImplCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
          _$SignUpImpl value, $Res Function(_$SignUpImpl) then) =
      __$$SignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email,
      String password,
      String username,
      String birthday,
      String confirmedPas});
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
      _$SignUpImpl _value, $Res Function(_$SignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? username = null,
    Object? birthday = null,
    Object? confirmedPas = null,
  }) {
    return _then(_$SignUpImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      confirmedPas: null == confirmedPas
          ? _value.confirmedPas
          : confirmedPas // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpImpl implements _SignUp {
  const _$SignUpImpl(
      {required this.email,
      required this.password,
      required this.username,
      required this.birthday,
      required this.confirmedPas});

  @override
  final String email;
  @override
  final String password;
  @override
  final String username;
  @override
  final String birthday;
  @override
  final String confirmedPas;

  @override
  String toString() {
    return 'SignUpEvent.signUp(email: $email, password: $password, username: $username, birthday: $birthday, confirmedPas: $confirmedPas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.confirmedPas, confirmedPas) ||
                other.confirmedPas == confirmedPas));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, username, birthday, confirmedPas);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      __$$SignUpImplCopyWithImpl<_$SignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String username,
            String birthday, String confirmedPas)
        signUp,
  }) {
    return signUp(email, password, username, birthday, confirmedPas);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password, String username,
            String birthday, String confirmedPas)?
        signUp,
  }) {
    return signUp?.call(email, password, username, birthday, confirmedPas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String username,
            String birthday, String confirmedPas)?
        signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(email, password, username, birthday, confirmedPas);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUp value) signUp,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignUp value)? signUp,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements SignUpEvent {
  const factory _SignUp(
      {required final String email,
      required final String password,
      required final String username,
      required final String birthday,
      required final String confirmedPas}) = _$SignUpImpl;

  String get email;
  String get password;
  String get username;
  String get birthday;
  String get confirmedPas;
  @JsonKey(ignore: true)
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpState {
  BlocStatesEnum get currentState => throw _privateConstructorUsedError;
  String? get requestError => throw _privateConstructorUsedError;
  Map<FieldTypesEnum, FieldErrorEnum> get validationError =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {BlocStatesEnum currentState,
      String? requestError,
      Map<FieldTypesEnum, FieldErrorEnum> validationError});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentState = null,
    Object? requestError = freezed,
    Object? validationError = null,
  }) {
    return _then(_value.copyWith(
      currentState: null == currentState
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as BlocStatesEnum,
      requestError: freezed == requestError
          ? _value.requestError
          : requestError // ignore: cast_nullable_to_non_nullable
              as String?,
      validationError: null == validationError
          ? _value.validationError
          : validationError // ignore: cast_nullable_to_non_nullable
              as Map<FieldTypesEnum, FieldErrorEnum>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpStateImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
          _$SignUpStateImpl value, $Res Function(_$SignUpStateImpl) then) =
      __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatesEnum currentState,
      String? requestError,
      Map<FieldTypesEnum, FieldErrorEnum> validationError});
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
      _$SignUpStateImpl _value, $Res Function(_$SignUpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentState = null,
    Object? requestError = freezed,
    Object? validationError = null,
  }) {
    return _then(_$SignUpStateImpl(
      currentState: null == currentState
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as BlocStatesEnum,
      requestError: freezed == requestError
          ? _value.requestError
          : requestError // ignore: cast_nullable_to_non_nullable
              as String?,
      validationError: null == validationError
          ? _value._validationError
          : validationError // ignore: cast_nullable_to_non_nullable
              as Map<FieldTypesEnum, FieldErrorEnum>,
    ));
  }
}

/// @nodoc

class _$SignUpStateImpl implements _SignUpState {
  const _$SignUpStateImpl(
      {this.currentState = BlocStatesEnum.initial,
      this.requestError = null,
      final Map<FieldTypesEnum, FieldErrorEnum> validationError = const {}})
      : _validationError = validationError;

  @override
  @JsonKey()
  final BlocStatesEnum currentState;
  @override
  @JsonKey()
  final String? requestError;
  final Map<FieldTypesEnum, FieldErrorEnum> _validationError;
  @override
  @JsonKey()
  Map<FieldTypesEnum, FieldErrorEnum> get validationError {
    if (_validationError is EqualUnmodifiableMapView) return _validationError;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_validationError);
  }

  @override
  String toString() {
    return 'SignUpState(currentState: $currentState, requestError: $requestError, validationError: $validationError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
            (identical(other.currentState, currentState) ||
                other.currentState == currentState) &&
            (identical(other.requestError, requestError) ||
                other.requestError == requestError) &&
            const DeepCollectionEquality()
                .equals(other._validationError, _validationError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentState, requestError,
      const DeepCollectionEquality().hash(_validationError));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
          {final BlocStatesEnum currentState,
          final String? requestError,
          final Map<FieldTypesEnum, FieldErrorEnum> validationError}) =
      _$SignUpStateImpl;

  @override
  BlocStatesEnum get currentState;
  @override
  String? get requestError;
  @override
  Map<FieldTypesEnum, FieldErrorEnum> get validationError;
  @override
  @JsonKey(ignore: true)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RequestUserSignUpDto _$RequestUserSignUpDtoFromJson(Map<String, dynamic> json) {
  return _RequestUserDto.fromJson(json);
}

/// @nodoc
mixin _$RequestUserSignUpDto {
  String get email => throw _privateConstructorUsedError;
  DateTime get birthday => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestUserSignUpDtoCopyWith<RequestUserSignUpDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestUserSignUpDtoCopyWith<$Res> {
  factory $RequestUserSignUpDtoCopyWith(RequestUserSignUpDto value,
          $Res Function(RequestUserSignUpDto) then) =
      _$RequestUserSignUpDtoCopyWithImpl<$Res, RequestUserSignUpDto>;
  @useResult
  $Res call(
      {String email,
      DateTime birthday,
      String displayName,
      String phone,
      String password});
}

/// @nodoc
class _$RequestUserSignUpDtoCopyWithImpl<$Res,
        $Val extends RequestUserSignUpDto>
    implements $RequestUserSignUpDtoCopyWith<$Res> {
  _$RequestUserSignUpDtoCopyWithImpl(this._value, this._then);

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
    Object? phone = null,
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
abstract class _$$RequestUserDtoImplCopyWith<$Res>
    implements $RequestUserSignUpDtoCopyWith<$Res> {
  factory _$$RequestUserDtoImplCopyWith(_$RequestUserDtoImpl value,
          $Res Function(_$RequestUserDtoImpl) then) =
      __$$RequestUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      DateTime birthday,
      String displayName,
      String phone,
      String password});
}

/// @nodoc
class __$$RequestUserDtoImplCopyWithImpl<$Res>
    extends _$RequestUserSignUpDtoCopyWithImpl<$Res, _$RequestUserDtoImpl>
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
    Object? phone = null,
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
@JsonSerializable()
class _$RequestUserDtoImpl implements _RequestUserDto {
  const _$RequestUserDtoImpl(
      {required this.email,
      required this.birthday,
      required this.displayName,
      required this.phone,
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
  final String phone;
  @override
  final String password;

  @override
  String toString() {
    return 'RequestUserSignUpDto(email: $email, birthday: $birthday, displayName: $displayName, phone: $phone, password: $password)';
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

abstract class _RequestUserDto implements RequestUserSignUpDto {
  const factory _RequestUserDto(
      {required final String email,
      required final DateTime birthday,
      required final String displayName,
      required final String phone,
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
  String get phone;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$RequestUserDtoImplCopyWith<_$RequestUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RequestRefreshTokenDto _$RequestRefreshTokenDtoFromJson(
    Map<String, dynamic> json) {
  return _RequestRefreshTokenDto.fromJson(json);
}

/// @nodoc
mixin _$RequestRefreshTokenDto {
  String get grantType => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  String get clientId => throw _privateConstructorUsedError;
  String get clientSecret => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestRefreshTokenDtoCopyWith<RequestRefreshTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestRefreshTokenDtoCopyWith<$Res> {
  factory $RequestRefreshTokenDtoCopyWith(RequestRefreshTokenDto value,
          $Res Function(RequestRefreshTokenDto) then) =
      _$RequestRefreshTokenDtoCopyWithImpl<$Res, RequestRefreshTokenDto>;
  @useResult
  $Res call(
      {String grantType,
      String refreshToken,
      String clientId,
      String clientSecret});
}

/// @nodoc
class _$RequestRefreshTokenDtoCopyWithImpl<$Res,
        $Val extends RequestRefreshTokenDto>
    implements $RequestRefreshTokenDtoCopyWith<$Res> {
  _$RequestRefreshTokenDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grantType = null,
    Object? refreshToken = null,
    Object? clientId = null,
    Object? clientSecret = null,
  }) {
    return _then(_value.copyWith(
      grantType: null == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestRefreshTokenDtoImplCopyWith<$Res>
    implements $RequestRefreshTokenDtoCopyWith<$Res> {
  factory _$$RequestRefreshTokenDtoImplCopyWith(
          _$RequestRefreshTokenDtoImpl value,
          $Res Function(_$RequestRefreshTokenDtoImpl) then) =
      __$$RequestRefreshTokenDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String grantType,
      String refreshToken,
      String clientId,
      String clientSecret});
}

/// @nodoc
class __$$RequestRefreshTokenDtoImplCopyWithImpl<$Res>
    extends _$RequestRefreshTokenDtoCopyWithImpl<$Res,
        _$RequestRefreshTokenDtoImpl>
    implements _$$RequestRefreshTokenDtoImplCopyWith<$Res> {
  __$$RequestRefreshTokenDtoImplCopyWithImpl(
      _$RequestRefreshTokenDtoImpl _value,
      $Res Function(_$RequestRefreshTokenDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grantType = null,
    Object? refreshToken = null,
    Object? clientId = null,
    Object? clientSecret = null,
  }) {
    return _then(_$RequestRefreshTokenDtoImpl(
      grantType: null == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestRefreshTokenDtoImpl implements _RequestRefreshTokenDto {
  const _$RequestRefreshTokenDtoImpl(
      {required this.grantType,
      required this.refreshToken,
      required this.clientId,
      required this.clientSecret});

  factory _$RequestRefreshTokenDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestRefreshTokenDtoImplFromJson(json);

  @override
  final String grantType;
  @override
  final String refreshToken;
  @override
  final String clientId;
  @override
  final String clientSecret;

  @override
  String toString() {
    return 'RequestRefreshTokenDto(grantType: $grantType, refreshToken: $refreshToken, clientId: $clientId, clientSecret: $clientSecret)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestRefreshTokenDtoImpl &&
            (identical(other.grantType, grantType) ||
                other.grantType == grantType) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, grantType, refreshToken, clientId, clientSecret);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestRefreshTokenDtoImplCopyWith<_$RequestRefreshTokenDtoImpl>
      get copyWith => __$$RequestRefreshTokenDtoImplCopyWithImpl<
          _$RequestRefreshTokenDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestRefreshTokenDtoImplToJson(
      this,
    );
  }
}

abstract class _RequestRefreshTokenDto implements RequestRefreshTokenDto {
  const factory _RequestRefreshTokenDto(
      {required final String grantType,
      required final String refreshToken,
      required final String clientId,
      required final String clientSecret}) = _$RequestRefreshTokenDtoImpl;

  factory _RequestRefreshTokenDto.fromJson(Map<String, dynamic> json) =
      _$RequestRefreshTokenDtoImpl.fromJson;

  @override
  String get grantType;
  @override
  String get refreshToken;
  @override
  String get clientId;
  @override
  String get clientSecret;
  @override
  @JsonKey(ignore: true)
  _$$RequestRefreshTokenDtoImplCopyWith<_$RequestRefreshTokenDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpUserDto {
  String get email => throw _privateConstructorUsedError;
  String get userProfilePhoto => throw _privateConstructorUsedError;
  DateTime get birthday => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  List<String> get roles => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpUserDtoCopyWith<SignUpUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpUserDtoCopyWith<$Res> {
  factory $SignUpUserDtoCopyWith(
          SignUpUserDto value, $Res Function(SignUpUserDto) then) =
      _$SignUpUserDtoCopyWithImpl<$Res, SignUpUserDto>;
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
class _$SignUpUserDtoCopyWithImpl<$Res, $Val extends SignUpUserDto>
    implements $SignUpUserDtoCopyWith<$Res> {
  _$SignUpUserDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$SignUpUserDtoImplCopyWith<$Res>
    implements $SignUpUserDtoCopyWith<$Res> {
  factory _$$SignUpUserDtoImplCopyWith(
          _$SignUpUserDtoImpl value, $Res Function(_$SignUpUserDtoImpl) then) =
      __$$SignUpUserDtoImplCopyWithImpl<$Res>;
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
class __$$SignUpUserDtoImplCopyWithImpl<$Res>
    extends _$SignUpUserDtoCopyWithImpl<$Res, _$SignUpUserDtoImpl>
    implements _$$SignUpUserDtoImplCopyWith<$Res> {
  __$$SignUpUserDtoImplCopyWithImpl(
      _$SignUpUserDtoImpl _value, $Res Function(_$SignUpUserDtoImpl) _then)
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
    return _then(_$SignUpUserDtoImpl(
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

class _$SignUpUserDtoImpl implements _SignUpUserDto {
  const _$SignUpUserDtoImpl(
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
    return 'SignUpUserDto(email: $email, userProfilePhoto: $userProfilePhoto, birthday: $birthday, displayName: $displayName, roles: $roles, phone: $phone, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpUserDtoImpl &&
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
  _$$SignUpUserDtoImplCopyWith<_$SignUpUserDtoImpl> get copyWith =>
      __$$SignUpUserDtoImplCopyWithImpl<_$SignUpUserDtoImpl>(this, _$identity);
}

abstract class _SignUpUserDto implements SignUpUserDto {
  const factory _SignUpUserDto(
      {required final String email,
      required final String userProfilePhoto,
      required final DateTime birthday,
      required final String displayName,
      required final List<String> roles,
      required final String phone,
      required final String password}) = _$SignUpUserDtoImpl;

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
  _$$SignUpUserDtoImplCopyWith<_$SignUpUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TokenDto _$TokenDtoFromJson(Map<String, dynamic> json) {
  return _TokenDto.fromJson(json);
}

/// @nodoc
mixin _$TokenDto {
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
@JsonSerializable()
class _$TokenDtoImpl implements _TokenDto {
  const _$TokenDtoImpl(
      {@JsonKey(name: 'refresh_token') required this.refreshToken,
      @JsonKey(name: 'access_token') required this.accessToken});

  factory _$TokenDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenDtoImplFromJson(json);

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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenDtoImplCopyWith<_$TokenDtoImpl> get copyWith =>
      __$$TokenDtoImplCopyWithImpl<_$TokenDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenDtoImplToJson(
      this,
    );
  }
}

abstract class _TokenDto implements TokenDto {
  const factory _TokenDto(
          {@JsonKey(name: 'refresh_token') required final String refreshToken,
          @JsonKey(name: 'access_token') required final String accessToken}) =
      _$TokenDtoImpl;

  factory _TokenDto.fromJson(Map<String, dynamic> json) =
      _$TokenDtoImpl.fromJson;

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
