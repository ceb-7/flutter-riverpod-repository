// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_ui_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeUiStates {
  List<UserModel> get users => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeUiStatesCopyWith<HomeUiStates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUiStatesCopyWith<$Res> {
  factory $HomeUiStatesCopyWith(
          HomeUiStates value, $Res Function(HomeUiStates) then) =
      _$HomeUiStatesCopyWithImpl<$Res, HomeUiStates>;
  @useResult
  $Res call({List<UserModel> users, bool isLoading, String error});
}

/// @nodoc
class _$HomeUiStatesCopyWithImpl<$Res, $Val extends HomeUiStates>
    implements $HomeUiStatesCopyWith<$Res> {
  _$HomeUiStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? isLoading = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeUiStatesCopyWith<$Res>
    implements $HomeUiStatesCopyWith<$Res> {
  factory _$$_HomeUiStatesCopyWith(
          _$_HomeUiStates value, $Res Function(_$_HomeUiStates) then) =
      __$$_HomeUiStatesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserModel> users, bool isLoading, String error});
}

/// @nodoc
class __$$_HomeUiStatesCopyWithImpl<$Res>
    extends _$HomeUiStatesCopyWithImpl<$Res, _$_HomeUiStates>
    implements _$$_HomeUiStatesCopyWith<$Res> {
  __$$_HomeUiStatesCopyWithImpl(
      _$_HomeUiStates _value, $Res Function(_$_HomeUiStates) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? isLoading = null,
    Object? error = null,
  }) {
    return _then(_$_HomeUiStates(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeUiStates implements _HomeUiStates {
  const _$_HomeUiStates(
      {required final List<UserModel> users,
      required this.isLoading,
      required this.error})
      : _users = users;

  final List<UserModel> _users;
  @override
  List<UserModel> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final bool isLoading;
  @override
  final String error;

  @override
  String toString() {
    return 'HomeUiStates(users: $users, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeUiStates &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_users), isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeUiStatesCopyWith<_$_HomeUiStates> get copyWith =>
      __$$_HomeUiStatesCopyWithImpl<_$_HomeUiStates>(this, _$identity);
}

abstract class _HomeUiStates implements HomeUiStates {
  const factory _HomeUiStates(
      {required final List<UserModel> users,
      required final bool isLoading,
      required final String error}) = _$_HomeUiStates;

  @override
  List<UserModel> get users;
  @override
  bool get isLoading;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_HomeUiStatesCopyWith<_$_HomeUiStates> get copyWith =>
      throw _privateConstructorUsedError;
}
