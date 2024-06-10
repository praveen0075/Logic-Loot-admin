// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCustomer,
    required TResult Function(int userId, BuildContext context)
        toggleUserBlkAndUnblk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCustomer,
    TResult? Function(int userId, BuildContext context)? toggleUserBlkAndUnblk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCustomer,
    TResult Function(int userId, BuildContext context)? toggleUserBlkAndUnblk,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCustomer value) getAllCustomer,
    required TResult Function(_ToggleUserBlkAndUnblk value)
        toggleUserBlkAndUnblk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCustomer value)? getAllCustomer,
    TResult? Function(_ToggleUserBlkAndUnblk value)? toggleUserBlkAndUnblk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCustomer value)? getAllCustomer,
    TResult Function(_ToggleUserBlkAndUnblk value)? toggleUserBlkAndUnblk,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerEventCopyWith<$Res> {
  factory $CustomerEventCopyWith(
          CustomerEvent value, $Res Function(CustomerEvent) then) =
      _$CustomerEventCopyWithImpl<$Res, CustomerEvent>;
}

/// @nodoc
class _$CustomerEventCopyWithImpl<$Res, $Val extends CustomerEvent>
    implements $CustomerEventCopyWith<$Res> {
  _$CustomerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllCustomerImplCopyWith<$Res> {
  factory _$$GetAllCustomerImplCopyWith(_$GetAllCustomerImpl value,
          $Res Function(_$GetAllCustomerImpl) then) =
      __$$GetAllCustomerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllCustomerImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$GetAllCustomerImpl>
    implements _$$GetAllCustomerImplCopyWith<$Res> {
  __$$GetAllCustomerImplCopyWithImpl(
      _$GetAllCustomerImpl _value, $Res Function(_$GetAllCustomerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllCustomerImpl implements _GetAllCustomer {
  const _$GetAllCustomerImpl();

  @override
  String toString() {
    return 'CustomerEvent.getAllCustomer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllCustomerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCustomer,
    required TResult Function(int userId, BuildContext context)
        toggleUserBlkAndUnblk,
  }) {
    return getAllCustomer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCustomer,
    TResult? Function(int userId, BuildContext context)? toggleUserBlkAndUnblk,
  }) {
    return getAllCustomer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCustomer,
    TResult Function(int userId, BuildContext context)? toggleUserBlkAndUnblk,
    required TResult orElse(),
  }) {
    if (getAllCustomer != null) {
      return getAllCustomer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCustomer value) getAllCustomer,
    required TResult Function(_ToggleUserBlkAndUnblk value)
        toggleUserBlkAndUnblk,
  }) {
    return getAllCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCustomer value)? getAllCustomer,
    TResult? Function(_ToggleUserBlkAndUnblk value)? toggleUserBlkAndUnblk,
  }) {
    return getAllCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCustomer value)? getAllCustomer,
    TResult Function(_ToggleUserBlkAndUnblk value)? toggleUserBlkAndUnblk,
    required TResult orElse(),
  }) {
    if (getAllCustomer != null) {
      return getAllCustomer(this);
    }
    return orElse();
  }
}

abstract class _GetAllCustomer implements CustomerEvent {
  const factory _GetAllCustomer() = _$GetAllCustomerImpl;
}

/// @nodoc
abstract class _$$ToggleUserBlkAndUnblkImplCopyWith<$Res> {
  factory _$$ToggleUserBlkAndUnblkImplCopyWith(
          _$ToggleUserBlkAndUnblkImpl value,
          $Res Function(_$ToggleUserBlkAndUnblkImpl) then) =
      __$$ToggleUserBlkAndUnblkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId, BuildContext context});
}

/// @nodoc
class __$$ToggleUserBlkAndUnblkImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$ToggleUserBlkAndUnblkImpl>
    implements _$$ToggleUserBlkAndUnblkImplCopyWith<$Res> {
  __$$ToggleUserBlkAndUnblkImplCopyWithImpl(_$ToggleUserBlkAndUnblkImpl _value,
      $Res Function(_$ToggleUserBlkAndUnblkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? context = null,
  }) {
    return _then(_$ToggleUserBlkAndUnblkImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ToggleUserBlkAndUnblkImpl implements _ToggleUserBlkAndUnblk {
  const _$ToggleUserBlkAndUnblkImpl(this.userId, this.context);

  @override
  final int userId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CustomerEvent.toggleUserBlkAndUnblk(userId: $userId, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleUserBlkAndUnblkImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleUserBlkAndUnblkImplCopyWith<_$ToggleUserBlkAndUnblkImpl>
      get copyWith => __$$ToggleUserBlkAndUnblkImplCopyWithImpl<
          _$ToggleUserBlkAndUnblkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCustomer,
    required TResult Function(int userId, BuildContext context)
        toggleUserBlkAndUnblk,
  }) {
    return toggleUserBlkAndUnblk(userId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCustomer,
    TResult? Function(int userId, BuildContext context)? toggleUserBlkAndUnblk,
  }) {
    return toggleUserBlkAndUnblk?.call(userId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCustomer,
    TResult Function(int userId, BuildContext context)? toggleUserBlkAndUnblk,
    required TResult orElse(),
  }) {
    if (toggleUserBlkAndUnblk != null) {
      return toggleUserBlkAndUnblk(userId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCustomer value) getAllCustomer,
    required TResult Function(_ToggleUserBlkAndUnblk value)
        toggleUserBlkAndUnblk,
  }) {
    return toggleUserBlkAndUnblk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCustomer value)? getAllCustomer,
    TResult? Function(_ToggleUserBlkAndUnblk value)? toggleUserBlkAndUnblk,
  }) {
    return toggleUserBlkAndUnblk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCustomer value)? getAllCustomer,
    TResult Function(_ToggleUserBlkAndUnblk value)? toggleUserBlkAndUnblk,
    required TResult orElse(),
  }) {
    if (toggleUserBlkAndUnblk != null) {
      return toggleUserBlkAndUnblk(this);
    }
    return orElse();
  }
}

abstract class _ToggleUserBlkAndUnblk implements CustomerEvent {
  const factory _ToggleUserBlkAndUnblk(
          final int userId, final BuildContext context) =
      _$ToggleUserBlkAndUnblkImpl;

  int get userId;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$ToggleUserBlkAndUnblkImplCopyWith<_$ToggleUserBlkAndUnblkImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) success,
    required TResult Function(String errmsg) errorst,
    required TResult Function() toggleLoading,
    required TResult Function() toggleSuccess,
    required TResult Function(String errormsg) toggleError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? success,
    TResult? Function(String errmsg)? errorst,
    TResult? Function()? toggleLoading,
    TResult? Function()? toggleSuccess,
    TResult? Function(String errormsg)? toggleError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? success,
    TResult Function(String errmsg)? errorst,
    TResult Function()? toggleLoading,
    TResult Function()? toggleSuccess,
    TResult Function(String errormsg)? toggleError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(ErrorSt value) errorst,
    required TResult Function(ToggleLoading value) toggleLoading,
    required TResult Function(ToggleSuccess value) toggleSuccess,
    required TResult Function(ToggleError value) toggleError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(ErrorSt value)? errorst,
    TResult? Function(ToggleLoading value)? toggleLoading,
    TResult? Function(ToggleSuccess value)? toggleSuccess,
    TResult? Function(ToggleError value)? toggleError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(ErrorSt value)? errorst,
    TResult Function(ToggleLoading value)? toggleLoading,
    TResult Function(ToggleSuccess value)? toggleSuccess,
    TResult Function(ToggleError value)? toggleError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerStateCopyWith<$Res> {
  factory $CustomerStateCopyWith(
          CustomerState value, $Res Function(CustomerState) then) =
      _$CustomerStateCopyWithImpl<$Res, CustomerState>;
}

/// @nodoc
class _$CustomerStateCopyWithImpl<$Res, $Val extends CustomerState>
    implements $CustomerStateCopyWith<$Res> {
  _$CustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CustomerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) success,
    required TResult Function(String errmsg) errorst,
    required TResult Function() toggleLoading,
    required TResult Function() toggleSuccess,
    required TResult Function(String errormsg) toggleError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? success,
    TResult? Function(String errmsg)? errorst,
    TResult? Function()? toggleLoading,
    TResult? Function()? toggleSuccess,
    TResult? Function(String errormsg)? toggleError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? success,
    TResult Function(String errmsg)? errorst,
    TResult Function()? toggleLoading,
    TResult Function()? toggleSuccess,
    TResult Function(String errormsg)? toggleError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(ErrorSt value) errorst,
    required TResult Function(ToggleLoading value) toggleLoading,
    required TResult Function(ToggleSuccess value) toggleSuccess,
    required TResult Function(ToggleError value) toggleError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(ErrorSt value)? errorst,
    TResult? Function(ToggleLoading value)? toggleLoading,
    TResult? Function(ToggleSuccess value)? toggleSuccess,
    TResult? Function(ToggleError value)? toggleError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(ErrorSt value)? errorst,
    TResult Function(ToggleLoading value)? toggleLoading,
    TResult Function(ToggleSuccess value)? toggleSuccess,
    TResult Function(ToggleError value)? toggleError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CustomerState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CustomerState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) success,
    required TResult Function(String errmsg) errorst,
    required TResult Function() toggleLoading,
    required TResult Function() toggleSuccess,
    required TResult Function(String errormsg) toggleError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? success,
    TResult? Function(String errmsg)? errorst,
    TResult? Function()? toggleLoading,
    TResult? Function()? toggleSuccess,
    TResult? Function(String errormsg)? toggleError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? success,
    TResult Function(String errmsg)? errorst,
    TResult Function()? toggleLoading,
    TResult Function()? toggleSuccess,
    TResult Function(String errormsg)? toggleError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(ErrorSt value) errorst,
    required TResult Function(ToggleLoading value) toggleLoading,
    required TResult Function(ToggleSuccess value) toggleSuccess,
    required TResult Function(ToggleError value) toggleError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(ErrorSt value)? errorst,
    TResult? Function(ToggleLoading value)? toggleLoading,
    TResult? Function(ToggleSuccess value)? toggleSuccess,
    TResult? Function(ToggleError value)? toggleError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(ErrorSt value)? errorst,
    TResult Function(ToggleLoading value)? toggleLoading,
    TResult Function(ToggleSuccess value)? toggleSuccess,
    TResult Function(ToggleError value)? toggleError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CustomerState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<User> users});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$SuccessImpl(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl(final List<User> users) : _users = users;

  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'CustomerState.success(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) success,
    required TResult Function(String errmsg) errorst,
    required TResult Function() toggleLoading,
    required TResult Function() toggleSuccess,
    required TResult Function(String errormsg) toggleError,
  }) {
    return success(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? success,
    TResult? Function(String errmsg)? errorst,
    TResult? Function()? toggleLoading,
    TResult? Function()? toggleSuccess,
    TResult? Function(String errormsg)? toggleError,
  }) {
    return success?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? success,
    TResult Function(String errmsg)? errorst,
    TResult Function()? toggleLoading,
    TResult Function()? toggleSuccess,
    TResult Function(String errormsg)? toggleError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(ErrorSt value) errorst,
    required TResult Function(ToggleLoading value) toggleLoading,
    required TResult Function(ToggleSuccess value) toggleSuccess,
    required TResult Function(ToggleError value) toggleError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(ErrorSt value)? errorst,
    TResult? Function(ToggleLoading value)? toggleLoading,
    TResult? Function(ToggleSuccess value)? toggleSuccess,
    TResult? Function(ToggleError value)? toggleError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(ErrorSt value)? errorst,
    TResult Function(ToggleLoading value)? toggleLoading,
    TResult Function(ToggleSuccess value)? toggleSuccess,
    TResult Function(ToggleError value)? toggleError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements CustomerState {
  const factory Success(final List<User> users) = _$SuccessImpl;

  List<User> get users;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStImplCopyWith<$Res> {
  factory _$$ErrorStImplCopyWith(
          _$ErrorStImpl value, $Res Function(_$ErrorStImpl) then) =
      __$$ErrorStImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errmsg});
}

/// @nodoc
class __$$ErrorStImplCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$ErrorStImpl>
    implements _$$ErrorStImplCopyWith<$Res> {
  __$$ErrorStImplCopyWithImpl(
      _$ErrorStImpl _value, $Res Function(_$ErrorStImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errmsg = null,
  }) {
    return _then(_$ErrorStImpl(
      null == errmsg
          ? _value.errmsg
          : errmsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStImpl implements ErrorSt {
  const _$ErrorStImpl(this.errmsg);

  @override
  final String errmsg;

  @override
  String toString() {
    return 'CustomerState.errorst(errmsg: $errmsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStImpl &&
            (identical(other.errmsg, errmsg) || other.errmsg == errmsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errmsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStImplCopyWith<_$ErrorStImpl> get copyWith =>
      __$$ErrorStImplCopyWithImpl<_$ErrorStImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) success,
    required TResult Function(String errmsg) errorst,
    required TResult Function() toggleLoading,
    required TResult Function() toggleSuccess,
    required TResult Function(String errormsg) toggleError,
  }) {
    return errorst(errmsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? success,
    TResult? Function(String errmsg)? errorst,
    TResult? Function()? toggleLoading,
    TResult? Function()? toggleSuccess,
    TResult? Function(String errormsg)? toggleError,
  }) {
    return errorst?.call(errmsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? success,
    TResult Function(String errmsg)? errorst,
    TResult Function()? toggleLoading,
    TResult Function()? toggleSuccess,
    TResult Function(String errormsg)? toggleError,
    required TResult orElse(),
  }) {
    if (errorst != null) {
      return errorst(errmsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(ErrorSt value) errorst,
    required TResult Function(ToggleLoading value) toggleLoading,
    required TResult Function(ToggleSuccess value) toggleSuccess,
    required TResult Function(ToggleError value) toggleError,
  }) {
    return errorst(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(ErrorSt value)? errorst,
    TResult? Function(ToggleLoading value)? toggleLoading,
    TResult? Function(ToggleSuccess value)? toggleSuccess,
    TResult? Function(ToggleError value)? toggleError,
  }) {
    return errorst?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(ErrorSt value)? errorst,
    TResult Function(ToggleLoading value)? toggleLoading,
    TResult Function(ToggleSuccess value)? toggleSuccess,
    TResult Function(ToggleError value)? toggleError,
    required TResult orElse(),
  }) {
    if (errorst != null) {
      return errorst(this);
    }
    return orElse();
  }
}

abstract class ErrorSt implements CustomerState {
  const factory ErrorSt(final String errmsg) = _$ErrorStImpl;

  String get errmsg;
  @JsonKey(ignore: true)
  _$$ErrorStImplCopyWith<_$ErrorStImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleLoadingImplCopyWith<$Res> {
  factory _$$ToggleLoadingImplCopyWith(
          _$ToggleLoadingImpl value, $Res Function(_$ToggleLoadingImpl) then) =
      __$$ToggleLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleLoadingImplCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$ToggleLoadingImpl>
    implements _$$ToggleLoadingImplCopyWith<$Res> {
  __$$ToggleLoadingImplCopyWithImpl(
      _$ToggleLoadingImpl _value, $Res Function(_$ToggleLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleLoadingImpl implements ToggleLoading {
  const _$ToggleLoadingImpl();

  @override
  String toString() {
    return 'CustomerState.toggleLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) success,
    required TResult Function(String errmsg) errorst,
    required TResult Function() toggleLoading,
    required TResult Function() toggleSuccess,
    required TResult Function(String errormsg) toggleError,
  }) {
    return toggleLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? success,
    TResult? Function(String errmsg)? errorst,
    TResult? Function()? toggleLoading,
    TResult? Function()? toggleSuccess,
    TResult? Function(String errormsg)? toggleError,
  }) {
    return toggleLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? success,
    TResult Function(String errmsg)? errorst,
    TResult Function()? toggleLoading,
    TResult Function()? toggleSuccess,
    TResult Function(String errormsg)? toggleError,
    required TResult orElse(),
  }) {
    if (toggleLoading != null) {
      return toggleLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(ErrorSt value) errorst,
    required TResult Function(ToggleLoading value) toggleLoading,
    required TResult Function(ToggleSuccess value) toggleSuccess,
    required TResult Function(ToggleError value) toggleError,
  }) {
    return toggleLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(ErrorSt value)? errorst,
    TResult? Function(ToggleLoading value)? toggleLoading,
    TResult? Function(ToggleSuccess value)? toggleSuccess,
    TResult? Function(ToggleError value)? toggleError,
  }) {
    return toggleLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(ErrorSt value)? errorst,
    TResult Function(ToggleLoading value)? toggleLoading,
    TResult Function(ToggleSuccess value)? toggleSuccess,
    TResult Function(ToggleError value)? toggleError,
    required TResult orElse(),
  }) {
    if (toggleLoading != null) {
      return toggleLoading(this);
    }
    return orElse();
  }
}

abstract class ToggleLoading implements CustomerState {
  const factory ToggleLoading() = _$ToggleLoadingImpl;
}

/// @nodoc
abstract class _$$ToggleSuccessImplCopyWith<$Res> {
  factory _$$ToggleSuccessImplCopyWith(
          _$ToggleSuccessImpl value, $Res Function(_$ToggleSuccessImpl) then) =
      __$$ToggleSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleSuccessImplCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$ToggleSuccessImpl>
    implements _$$ToggleSuccessImplCopyWith<$Res> {
  __$$ToggleSuccessImplCopyWithImpl(
      _$ToggleSuccessImpl _value, $Res Function(_$ToggleSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleSuccessImpl implements ToggleSuccess {
  const _$ToggleSuccessImpl();

  @override
  String toString() {
    return 'CustomerState.toggleSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) success,
    required TResult Function(String errmsg) errorst,
    required TResult Function() toggleLoading,
    required TResult Function() toggleSuccess,
    required TResult Function(String errormsg) toggleError,
  }) {
    return toggleSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? success,
    TResult? Function(String errmsg)? errorst,
    TResult? Function()? toggleLoading,
    TResult? Function()? toggleSuccess,
    TResult? Function(String errormsg)? toggleError,
  }) {
    return toggleSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? success,
    TResult Function(String errmsg)? errorst,
    TResult Function()? toggleLoading,
    TResult Function()? toggleSuccess,
    TResult Function(String errormsg)? toggleError,
    required TResult orElse(),
  }) {
    if (toggleSuccess != null) {
      return toggleSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(ErrorSt value) errorst,
    required TResult Function(ToggleLoading value) toggleLoading,
    required TResult Function(ToggleSuccess value) toggleSuccess,
    required TResult Function(ToggleError value) toggleError,
  }) {
    return toggleSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(ErrorSt value)? errorst,
    TResult? Function(ToggleLoading value)? toggleLoading,
    TResult? Function(ToggleSuccess value)? toggleSuccess,
    TResult? Function(ToggleError value)? toggleError,
  }) {
    return toggleSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(ErrorSt value)? errorst,
    TResult Function(ToggleLoading value)? toggleLoading,
    TResult Function(ToggleSuccess value)? toggleSuccess,
    TResult Function(ToggleError value)? toggleError,
    required TResult orElse(),
  }) {
    if (toggleSuccess != null) {
      return toggleSuccess(this);
    }
    return orElse();
  }
}

abstract class ToggleSuccess implements CustomerState {
  const factory ToggleSuccess() = _$ToggleSuccessImpl;
}

/// @nodoc
abstract class _$$ToggleErrorImplCopyWith<$Res> {
  factory _$$ToggleErrorImplCopyWith(
          _$ToggleErrorImpl value, $Res Function(_$ToggleErrorImpl) then) =
      __$$ToggleErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errormsg});
}

/// @nodoc
class __$$ToggleErrorImplCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$ToggleErrorImpl>
    implements _$$ToggleErrorImplCopyWith<$Res> {
  __$$ToggleErrorImplCopyWithImpl(
      _$ToggleErrorImpl _value, $Res Function(_$ToggleErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errormsg = null,
  }) {
    return _then(_$ToggleErrorImpl(
      null == errormsg
          ? _value.errormsg
          : errormsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToggleErrorImpl implements ToggleError {
  const _$ToggleErrorImpl(this.errormsg);

  @override
  final String errormsg;

  @override
  String toString() {
    return 'CustomerState.toggleError(errormsg: $errormsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleErrorImpl &&
            (identical(other.errormsg, errormsg) ||
                other.errormsg == errormsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errormsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleErrorImplCopyWith<_$ToggleErrorImpl> get copyWith =>
      __$$ToggleErrorImplCopyWithImpl<_$ToggleErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) success,
    required TResult Function(String errmsg) errorst,
    required TResult Function() toggleLoading,
    required TResult Function() toggleSuccess,
    required TResult Function(String errormsg) toggleError,
  }) {
    return toggleError(errormsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? success,
    TResult? Function(String errmsg)? errorst,
    TResult? Function()? toggleLoading,
    TResult? Function()? toggleSuccess,
    TResult? Function(String errormsg)? toggleError,
  }) {
    return toggleError?.call(errormsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? success,
    TResult Function(String errmsg)? errorst,
    TResult Function()? toggleLoading,
    TResult Function()? toggleSuccess,
    TResult Function(String errormsg)? toggleError,
    required TResult orElse(),
  }) {
    if (toggleError != null) {
      return toggleError(errormsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(ErrorSt value) errorst,
    required TResult Function(ToggleLoading value) toggleLoading,
    required TResult Function(ToggleSuccess value) toggleSuccess,
    required TResult Function(ToggleError value) toggleError,
  }) {
    return toggleError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(ErrorSt value)? errorst,
    TResult? Function(ToggleLoading value)? toggleLoading,
    TResult? Function(ToggleSuccess value)? toggleSuccess,
    TResult? Function(ToggleError value)? toggleError,
  }) {
    return toggleError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(ErrorSt value)? errorst,
    TResult Function(ToggleLoading value)? toggleLoading,
    TResult Function(ToggleSuccess value)? toggleSuccess,
    TResult Function(ToggleError value)? toggleError,
    required TResult orElse(),
  }) {
    if (toggleError != null) {
      return toggleError(this);
    }
    return orElse();
  }
}

abstract class ToggleError implements CustomerState {
  const factory ToggleError(final String errormsg) = _$ToggleErrorImpl;

  String get errormsg;
  @JsonKey(ignore: true)
  _$$ToggleErrorImplCopyWith<_$ToggleErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
