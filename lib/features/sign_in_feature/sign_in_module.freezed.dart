// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_module.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignIn value) signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignIn value)? signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignIn value)? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

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
    extends _$SignInEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SignInEvent.started()';
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
    required TResult Function(String email, String password) signIn,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? signIn,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? signIn,
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
    required TResult Function(_SignIn value) signIn,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignIn value)? signIn,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SignInEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInImpl implements _SignIn {
  const _$SignInImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.signIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      __$$SignInImplCopyWithImpl<_$SignInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) signIn,
  }) {
    return signIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? signIn,
  }) {
    return signIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignIn value) signIn,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignIn value)? signIn,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements SignInEvent {
  const factory _SignIn(
      {required final String email,
      required final String password}) = _$SignInImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInState {
  BlocStatesEnum get currentState => throw _privateConstructorUsedError;
  String? get requestError => throw _privateConstructorUsedError;
  Map<FieldTypesEnum, FieldErrorEnum> get validationError =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call(
      {BlocStatesEnum currentState,
      String? requestError,
      Map<FieldTypesEnum, FieldErrorEnum> validationError});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

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
abstract class _$$SignInStateImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$SignInStateImplCopyWith(
          _$SignInStateImpl value, $Res Function(_$SignInStateImpl) then) =
      __$$SignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatesEnum currentState,
      String? requestError,
      Map<FieldTypesEnum, FieldErrorEnum> validationError});
}

/// @nodoc
class __$$SignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateImpl>
    implements _$$SignInStateImplCopyWith<$Res> {
  __$$SignInStateImplCopyWithImpl(
      _$SignInStateImpl _value, $Res Function(_$SignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentState = null,
    Object? requestError = freezed,
    Object? validationError = null,
  }) {
    return _then(_$SignInStateImpl(
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

class _$SignInStateImpl implements _SignInState {
  const _$SignInStateImpl(
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
    return 'SignInState(currentState: $currentState, requestError: $requestError, validationError: $validationError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateImpl &&
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
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      __$$SignInStateImplCopyWithImpl<_$SignInStateImpl>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
          {final BlocStatesEnum currentState,
          final String? requestError,
          final Map<FieldTypesEnum, FieldErrorEnum> validationError}) =
      _$SignInStateImpl;

  @override
  BlocStatesEnum get currentState;
  @override
  String? get requestError;
  @override
  Map<FieldTypesEnum, FieldErrorEnum> get validationError;
  @override
  @JsonKey(ignore: true)
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RequestUserDto _$RequestUserDtoFromJson(Map<String, dynamic> json) {
  return _RequestUserDto.fromJson(json);
}

/// @nodoc
mixin _$RequestUserDto {
  @JsonKey(name: "grant_type")
  String get grantType => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: "client_id")
  String get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: "client_secret")
  String get clientSecret => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "grant_type") String grantType,
      String username,
      String password,
      @JsonKey(name: "client_id") String clientId,
      @JsonKey(name: "client_secret") String clientSecret});
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
    Object? grantType = null,
    Object? username = null,
    Object? password = null,
    Object? clientId = null,
    Object? clientSecret = null,
  }) {
    return _then(_value.copyWith(
      grantType: null == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RequestUserDtoImplCopyWith<$Res>
    implements $RequestUserDtoCopyWith<$Res> {
  factory _$$RequestUserDtoImplCopyWith(_$RequestUserDtoImpl value,
          $Res Function(_$RequestUserDtoImpl) then) =
      __$$RequestUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "grant_type") String grantType,
      String username,
      String password,
      @JsonKey(name: "client_id") String clientId,
      @JsonKey(name: "client_secret") String clientSecret});
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
    Object? grantType = null,
    Object? username = null,
    Object? password = null,
    Object? clientId = null,
    Object? clientSecret = null,
  }) {
    return _then(_$RequestUserDtoImpl(
      grantType: null == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
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
class _$RequestUserDtoImpl implements _RequestUserDto {
  const _$RequestUserDtoImpl(
      {@JsonKey(name: "grant_type") required this.grantType,
      required this.username,
      required this.password,
      @JsonKey(name: "client_id") required this.clientId,
      @JsonKey(name: "client_secret") required this.clientSecret});

  factory _$RequestUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestUserDtoImplFromJson(json);

  @override
  @JsonKey(name: "grant_type")
  final String grantType;
  @override
  final String username;
  @override
  final String password;
  @override
  @JsonKey(name: "client_id")
  final String clientId;
  @override
  @JsonKey(name: "client_secret")
  final String clientSecret;

  @override
  String toString() {
    return 'RequestUserDto(grantType: $grantType, username: $username, password: $password, clientId: $clientId, clientSecret: $clientSecret)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestUserDtoImpl &&
            (identical(other.grantType, grantType) ||
                other.grantType == grantType) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, grantType, username, password, clientId, clientSecret);

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
          {@JsonKey(name: "grant_type") required final String grantType,
          required final String username,
          required final String password,
          @JsonKey(name: "client_id") required final String clientId,
          @JsonKey(name: "client_secret") required final String clientSecret}) =
      _$RequestUserDtoImpl;

  factory _RequestUserDto.fromJson(Map<String, dynamic> json) =
      _$RequestUserDtoImpl.fromJson;

  @override
  @JsonKey(name: "grant_type")
  String get grantType;
  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(name: "client_id")
  String get clientId;
  @override
  @JsonKey(name: "client_secret")
  String get clientSecret;
  @override
  @JsonKey(ignore: true)
  _$$RequestUserDtoImplCopyWith<_$RequestUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
