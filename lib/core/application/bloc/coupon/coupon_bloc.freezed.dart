// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CouponEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCoupons,
    required TResult Function(AddCouponBody couponModel) addCoupons,
    required TResult Function(String couponCode) deleteCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCoupons,
    TResult? Function(AddCouponBody couponModel)? addCoupons,
    TResult? Function(String couponCode)? deleteCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCoupons,
    TResult Function(AddCouponBody couponModel)? addCoupons,
    TResult Function(String couponCode)? deleteCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoupons value) getCoupons,
    required TResult Function(_AddCoupon value) addCoupons,
    required TResult Function(_DeleteCoupon value) deleteCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_AddCoupon value)? addCoupons,
    TResult? Function(_DeleteCoupon value)? deleteCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_AddCoupon value)? addCoupons,
    TResult Function(_DeleteCoupon value)? deleteCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponEventCopyWith<$Res> {
  factory $CouponEventCopyWith(
          CouponEvent value, $Res Function(CouponEvent) then) =
      _$CouponEventCopyWithImpl<$Res, CouponEvent>;
}

/// @nodoc
class _$CouponEventCopyWithImpl<$Res, $Val extends CouponEvent>
    implements $CouponEventCopyWith<$Res> {
  _$CouponEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCouponsImplCopyWith<$Res> {
  factory _$$GetCouponsImplCopyWith(
          _$GetCouponsImpl value, $Res Function(_$GetCouponsImpl) then) =
      __$$GetCouponsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCouponsImplCopyWithImpl<$Res>
    extends _$CouponEventCopyWithImpl<$Res, _$GetCouponsImpl>
    implements _$$GetCouponsImplCopyWith<$Res> {
  __$$GetCouponsImplCopyWithImpl(
      _$GetCouponsImpl _value, $Res Function(_$GetCouponsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCouponsImpl implements _GetCoupons {
  const _$GetCouponsImpl();

  @override
  String toString() {
    return 'CouponEvent.getCoupons()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCouponsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCoupons,
    required TResult Function(AddCouponBody couponModel) addCoupons,
    required TResult Function(String couponCode) deleteCoupon,
  }) {
    return getCoupons();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCoupons,
    TResult? Function(AddCouponBody couponModel)? addCoupons,
    TResult? Function(String couponCode)? deleteCoupon,
  }) {
    return getCoupons?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCoupons,
    TResult Function(AddCouponBody couponModel)? addCoupons,
    TResult Function(String couponCode)? deleteCoupon,
    required TResult orElse(),
  }) {
    if (getCoupons != null) {
      return getCoupons();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoupons value) getCoupons,
    required TResult Function(_AddCoupon value) addCoupons,
    required TResult Function(_DeleteCoupon value) deleteCoupon,
  }) {
    return getCoupons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_AddCoupon value)? addCoupons,
    TResult? Function(_DeleteCoupon value)? deleteCoupon,
  }) {
    return getCoupons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_AddCoupon value)? addCoupons,
    TResult Function(_DeleteCoupon value)? deleteCoupon,
    required TResult orElse(),
  }) {
    if (getCoupons != null) {
      return getCoupons(this);
    }
    return orElse();
  }
}

abstract class _GetCoupons implements CouponEvent {
  const factory _GetCoupons() = _$GetCouponsImpl;
}

/// @nodoc
abstract class _$$AddCouponImplCopyWith<$Res> {
  factory _$$AddCouponImplCopyWith(
          _$AddCouponImpl value, $Res Function(_$AddCouponImpl) then) =
      __$$AddCouponImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddCouponBody couponModel});
}

/// @nodoc
class __$$AddCouponImplCopyWithImpl<$Res>
    extends _$CouponEventCopyWithImpl<$Res, _$AddCouponImpl>
    implements _$$AddCouponImplCopyWith<$Res> {
  __$$AddCouponImplCopyWithImpl(
      _$AddCouponImpl _value, $Res Function(_$AddCouponImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponModel = null,
  }) {
    return _then(_$AddCouponImpl(
      couponModel: null == couponModel
          ? _value.couponModel
          : couponModel // ignore: cast_nullable_to_non_nullable
              as AddCouponBody,
    ));
  }
}

/// @nodoc

class _$AddCouponImpl implements _AddCoupon {
  const _$AddCouponImpl({required this.couponModel});

  @override
  final AddCouponBody couponModel;

  @override
  String toString() {
    return 'CouponEvent.addCoupons(couponModel: $couponModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCouponImpl &&
            (identical(other.couponModel, couponModel) ||
                other.couponModel == couponModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, couponModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCouponImplCopyWith<_$AddCouponImpl> get copyWith =>
      __$$AddCouponImplCopyWithImpl<_$AddCouponImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCoupons,
    required TResult Function(AddCouponBody couponModel) addCoupons,
    required TResult Function(String couponCode) deleteCoupon,
  }) {
    return addCoupons(couponModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCoupons,
    TResult? Function(AddCouponBody couponModel)? addCoupons,
    TResult? Function(String couponCode)? deleteCoupon,
  }) {
    return addCoupons?.call(couponModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCoupons,
    TResult Function(AddCouponBody couponModel)? addCoupons,
    TResult Function(String couponCode)? deleteCoupon,
    required TResult orElse(),
  }) {
    if (addCoupons != null) {
      return addCoupons(couponModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoupons value) getCoupons,
    required TResult Function(_AddCoupon value) addCoupons,
    required TResult Function(_DeleteCoupon value) deleteCoupon,
  }) {
    return addCoupons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_AddCoupon value)? addCoupons,
    TResult? Function(_DeleteCoupon value)? deleteCoupon,
  }) {
    return addCoupons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_AddCoupon value)? addCoupons,
    TResult Function(_DeleteCoupon value)? deleteCoupon,
    required TResult orElse(),
  }) {
    if (addCoupons != null) {
      return addCoupons(this);
    }
    return orElse();
  }
}

abstract class _AddCoupon implements CouponEvent {
  const factory _AddCoupon({required final AddCouponBody couponModel}) =
      _$AddCouponImpl;

  AddCouponBody get couponModel;
  @JsonKey(ignore: true)
  _$$AddCouponImplCopyWith<_$AddCouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCouponImplCopyWith<$Res> {
  factory _$$DeleteCouponImplCopyWith(
          _$DeleteCouponImpl value, $Res Function(_$DeleteCouponImpl) then) =
      __$$DeleteCouponImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String couponCode});
}

/// @nodoc
class __$$DeleteCouponImplCopyWithImpl<$Res>
    extends _$CouponEventCopyWithImpl<$Res, _$DeleteCouponImpl>
    implements _$$DeleteCouponImplCopyWith<$Res> {
  __$$DeleteCouponImplCopyWithImpl(
      _$DeleteCouponImpl _value, $Res Function(_$DeleteCouponImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponCode = null,
  }) {
    return _then(_$DeleteCouponImpl(
      couponCode: null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCouponImpl implements _DeleteCoupon {
  const _$DeleteCouponImpl({required this.couponCode});

  @override
  final String couponCode;

  @override
  String toString() {
    return 'CouponEvent.deleteCoupon(couponCode: $couponCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCouponImpl &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, couponCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCouponImplCopyWith<_$DeleteCouponImpl> get copyWith =>
      __$$DeleteCouponImplCopyWithImpl<_$DeleteCouponImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCoupons,
    required TResult Function(AddCouponBody couponModel) addCoupons,
    required TResult Function(String couponCode) deleteCoupon,
  }) {
    return deleteCoupon(couponCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCoupons,
    TResult? Function(AddCouponBody couponModel)? addCoupons,
    TResult? Function(String couponCode)? deleteCoupon,
  }) {
    return deleteCoupon?.call(couponCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCoupons,
    TResult Function(AddCouponBody couponModel)? addCoupons,
    TResult Function(String couponCode)? deleteCoupon,
    required TResult orElse(),
  }) {
    if (deleteCoupon != null) {
      return deleteCoupon(couponCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoupons value) getCoupons,
    required TResult Function(_AddCoupon value) addCoupons,
    required TResult Function(_DeleteCoupon value) deleteCoupon,
  }) {
    return deleteCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_AddCoupon value)? addCoupons,
    TResult? Function(_DeleteCoupon value)? deleteCoupon,
  }) {
    return deleteCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_AddCoupon value)? addCoupons,
    TResult Function(_DeleteCoupon value)? deleteCoupon,
    required TResult orElse(),
  }) {
    if (deleteCoupon != null) {
      return deleteCoupon(this);
    }
    return orElse();
  }
}

abstract class _DeleteCoupon implements CouponEvent {
  const factory _DeleteCoupon({required final String couponCode}) =
      _$DeleteCouponImpl;

  String get couponCode;
  @JsonKey(ignore: true)
  _$$DeleteCouponImplCopyWith<_$DeleteCouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CouponState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AvialableCoupon> avialableCoupons) success,
    required TResult Function(String errmsg) errorst,
    required TResult Function(String succcessmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function(String successmsg) deletesucces,
    required TResult Function(String failuremsg) deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AvialableCoupon> avialableCoupons)? success,
    TResult? Function(String errmsg)? errorst,
    TResult? Function(String succcessmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function(String successmsg)? deletesucces,
    TResult? Function(String failuremsg)? deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AvialableCoupon> avialableCoupons)? success,
    TResult Function(String errmsg)? errorst,
    TResult Function(String succcessmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function(String successmsg)? deletesucces,
    TResult Function(String failuremsg)? deleteFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetLoading value) loading,
    required TResult Function(GetSuccess value) success,
    required TResult Function(GertErrorSt value) errorst,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(DeleteSuccess value) deletesucces,
    required TResult Function(DeleteFailure value) deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetLoading value)? loading,
    TResult? Function(GetSuccess value)? success,
    TResult? Function(GertErrorSt value)? errorst,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(DeleteSuccess value)? deletesucces,
    TResult? Function(DeleteFailure value)? deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetLoading value)? loading,
    TResult Function(GetSuccess value)? success,
    TResult Function(GertErrorSt value)? errorst,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(DeleteSuccess value)? deletesucces,
    TResult Function(DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponStateCopyWith<$Res> {
  factory $CouponStateCopyWith(
          CouponState value, $Res Function(CouponState) then) =
      _$CouponStateCopyWithImpl<$Res, CouponState>;
}

/// @nodoc
class _$CouponStateCopyWithImpl<$Res, $Val extends CouponState>
    implements $CouponStateCopyWith<$Res> {
  _$CouponStateCopyWithImpl(this._value, this._then);

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
    extends _$CouponStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CouponState.initial()';
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
    required TResult Function(List<AvialableCoupon> avialableCoupons) success,
    required TResult Function(String errmsg) errorst,
    required TResult Function(String succcessmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function(String successmsg) deletesucces,
    required TResult Function(String failuremsg) deleteFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AvialableCoupon> avialableCoupons)? success,
    TResult? Function(String errmsg)? errorst,
    TResult? Function(String succcessmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function(String successmsg)? deletesucces,
    TResult? Function(String failuremsg)? deleteFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AvialableCoupon> avialableCoupons)? success,
    TResult Function(String errmsg)? errorst,
    TResult Function(String succcessmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function(String successmsg)? deletesucces,
    TResult Function(String failuremsg)? deleteFailure,
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
    required TResult Function(GetLoading value) loading,
    required TResult Function(GetSuccess value) success,
    required TResult Function(GertErrorSt value) errorst,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(DeleteSuccess value) deletesucces,
    required TResult Function(DeleteFailure value) deleteFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetLoading value)? loading,
    TResult? Function(GetSuccess value)? success,
    TResult? Function(GertErrorSt value)? errorst,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(DeleteSuccess value)? deletesucces,
    TResult? Function(DeleteFailure value)? deleteFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetLoading value)? loading,
    TResult Function(GetSuccess value)? success,
    TResult Function(GertErrorSt value)? errorst,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(DeleteSuccess value)? deletesucces,
    TResult Function(DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CouponState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetLoadingImplCopyWith<$Res> {
  factory _$$GetLoadingImplCopyWith(
          _$GetLoadingImpl value, $Res Function(_$GetLoadingImpl) then) =
      __$$GetLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLoadingImplCopyWithImpl<$Res>
    extends _$CouponStateCopyWithImpl<$Res, _$GetLoadingImpl>
    implements _$$GetLoadingImplCopyWith<$Res> {
  __$$GetLoadingImplCopyWithImpl(
      _$GetLoadingImpl _value, $Res Function(_$GetLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetLoadingImpl implements GetLoading {
  const _$GetLoadingImpl();

  @override
  String toString() {
    return 'CouponState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AvialableCoupon> avialableCoupons) success,
    required TResult Function(String errmsg) errorst,
    required TResult Function(String succcessmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function(String successmsg) deletesucces,
    required TResult Function(String failuremsg) deleteFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AvialableCoupon> avialableCoupons)? success,
    TResult? Function(String errmsg)? errorst,
    TResult? Function(String succcessmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function(String successmsg)? deletesucces,
    TResult? Function(String failuremsg)? deleteFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AvialableCoupon> avialableCoupons)? success,
    TResult Function(String errmsg)? errorst,
    TResult Function(String succcessmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function(String successmsg)? deletesucces,
    TResult Function(String failuremsg)? deleteFailure,
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
    required TResult Function(GetLoading value) loading,
    required TResult Function(GetSuccess value) success,
    required TResult Function(GertErrorSt value) errorst,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(DeleteSuccess value) deletesucces,
    required TResult Function(DeleteFailure value) deleteFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetLoading value)? loading,
    TResult? Function(GetSuccess value)? success,
    TResult? Function(GertErrorSt value)? errorst,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(DeleteSuccess value)? deletesucces,
    TResult? Function(DeleteFailure value)? deleteFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetLoading value)? loading,
    TResult Function(GetSuccess value)? success,
    TResult Function(GertErrorSt value)? errorst,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(DeleteSuccess value)? deletesucces,
    TResult Function(DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetLoading implements CouponState {
  const factory GetLoading() = _$GetLoadingImpl;
}

/// @nodoc
abstract class _$$GetSuccessImplCopyWith<$Res> {
  factory _$$GetSuccessImplCopyWith(
          _$GetSuccessImpl value, $Res Function(_$GetSuccessImpl) then) =
      __$$GetSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AvialableCoupon> avialableCoupons});
}

/// @nodoc
class __$$GetSuccessImplCopyWithImpl<$Res>
    extends _$CouponStateCopyWithImpl<$Res, _$GetSuccessImpl>
    implements _$$GetSuccessImplCopyWith<$Res> {
  __$$GetSuccessImplCopyWithImpl(
      _$GetSuccessImpl _value, $Res Function(_$GetSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avialableCoupons = null,
  }) {
    return _then(_$GetSuccessImpl(
      null == avialableCoupons
          ? _value._avialableCoupons
          : avialableCoupons // ignore: cast_nullable_to_non_nullable
              as List<AvialableCoupon>,
    ));
  }
}

/// @nodoc

class _$GetSuccessImpl implements GetSuccess {
  const _$GetSuccessImpl(final List<AvialableCoupon> avialableCoupons)
      : _avialableCoupons = avialableCoupons;

  final List<AvialableCoupon> _avialableCoupons;
  @override
  List<AvialableCoupon> get avialableCoupons {
    if (_avialableCoupons is EqualUnmodifiableListView)
      return _avialableCoupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_avialableCoupons);
  }

  @override
  String toString() {
    return 'CouponState.success(avialableCoupons: $avialableCoupons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._avialableCoupons, _avialableCoupons));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_avialableCoupons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSuccessImplCopyWith<_$GetSuccessImpl> get copyWith =>
      __$$GetSuccessImplCopyWithImpl<_$GetSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AvialableCoupon> avialableCoupons) success,
    required TResult Function(String errmsg) errorst,
    required TResult Function(String succcessmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function(String successmsg) deletesucces,
    required TResult Function(String failuremsg) deleteFailure,
  }) {
    return success(avialableCoupons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AvialableCoupon> avialableCoupons)? success,
    TResult? Function(String errmsg)? errorst,
    TResult? Function(String succcessmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function(String successmsg)? deletesucces,
    TResult? Function(String failuremsg)? deleteFailure,
  }) {
    return success?.call(avialableCoupons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AvialableCoupon> avialableCoupons)? success,
    TResult Function(String errmsg)? errorst,
    TResult Function(String succcessmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function(String successmsg)? deletesucces,
    TResult Function(String failuremsg)? deleteFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(avialableCoupons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetLoading value) loading,
    required TResult Function(GetSuccess value) success,
    required TResult Function(GertErrorSt value) errorst,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(DeleteSuccess value) deletesucces,
    required TResult Function(DeleteFailure value) deleteFailure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetLoading value)? loading,
    TResult? Function(GetSuccess value)? success,
    TResult? Function(GertErrorSt value)? errorst,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(DeleteSuccess value)? deletesucces,
    TResult? Function(DeleteFailure value)? deleteFailure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetLoading value)? loading,
    TResult Function(GetSuccess value)? success,
    TResult Function(GertErrorSt value)? errorst,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(DeleteSuccess value)? deletesucces,
    TResult Function(DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GetSuccess implements CouponState {
  const factory GetSuccess(final List<AvialableCoupon> avialableCoupons) =
      _$GetSuccessImpl;

  List<AvialableCoupon> get avialableCoupons;
  @JsonKey(ignore: true)
  _$$GetSuccessImplCopyWith<_$GetSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GertErrorStImplCopyWith<$Res> {
  factory _$$GertErrorStImplCopyWith(
          _$GertErrorStImpl value, $Res Function(_$GertErrorStImpl) then) =
      __$$GertErrorStImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errmsg});
}

/// @nodoc
class __$$GertErrorStImplCopyWithImpl<$Res>
    extends _$CouponStateCopyWithImpl<$Res, _$GertErrorStImpl>
    implements _$$GertErrorStImplCopyWith<$Res> {
  __$$GertErrorStImplCopyWithImpl(
      _$GertErrorStImpl _value, $Res Function(_$GertErrorStImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errmsg = null,
  }) {
    return _then(_$GertErrorStImpl(
      null == errmsg
          ? _value.errmsg
          : errmsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GertErrorStImpl implements GertErrorSt {
  const _$GertErrorStImpl(this.errmsg);

  @override
  final String errmsg;

  @override
  String toString() {
    return 'CouponState.errorst(errmsg: $errmsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GertErrorStImpl &&
            (identical(other.errmsg, errmsg) || other.errmsg == errmsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errmsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GertErrorStImplCopyWith<_$GertErrorStImpl> get copyWith =>
      __$$GertErrorStImplCopyWithImpl<_$GertErrorStImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AvialableCoupon> avialableCoupons) success,
    required TResult Function(String errmsg) errorst,
    required TResult Function(String succcessmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function(String successmsg) deletesucces,
    required TResult Function(String failuremsg) deleteFailure,
  }) {
    return errorst(errmsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AvialableCoupon> avialableCoupons)? success,
    TResult? Function(String errmsg)? errorst,
    TResult? Function(String succcessmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function(String successmsg)? deletesucces,
    TResult? Function(String failuremsg)? deleteFailure,
  }) {
    return errorst?.call(errmsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AvialableCoupon> avialableCoupons)? success,
    TResult Function(String errmsg)? errorst,
    TResult Function(String succcessmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function(String successmsg)? deletesucces,
    TResult Function(String failuremsg)? deleteFailure,
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
    required TResult Function(GetLoading value) loading,
    required TResult Function(GetSuccess value) success,
    required TResult Function(GertErrorSt value) errorst,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(DeleteSuccess value) deletesucces,
    required TResult Function(DeleteFailure value) deleteFailure,
  }) {
    return errorst(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetLoading value)? loading,
    TResult? Function(GetSuccess value)? success,
    TResult? Function(GertErrorSt value)? errorst,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(DeleteSuccess value)? deletesucces,
    TResult? Function(DeleteFailure value)? deleteFailure,
  }) {
    return errorst?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetLoading value)? loading,
    TResult Function(GetSuccess value)? success,
    TResult Function(GertErrorSt value)? errorst,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(DeleteSuccess value)? deletesucces,
    TResult Function(DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (errorst != null) {
      return errorst(this);
    }
    return orElse();
  }
}

abstract class GertErrorSt implements CouponState {
  const factory GertErrorSt(final String errmsg) = _$GertErrorStImpl;

  String get errmsg;
  @JsonKey(ignore: true)
  _$$GertErrorStImplCopyWith<_$GertErrorStImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSuccessImplCopyWith<$Res> {
  factory _$$AddSuccessImplCopyWith(
          _$AddSuccessImpl value, $Res Function(_$AddSuccessImpl) then) =
      __$$AddSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String succcessmsg});
}

/// @nodoc
class __$$AddSuccessImplCopyWithImpl<$Res>
    extends _$CouponStateCopyWithImpl<$Res, _$AddSuccessImpl>
    implements _$$AddSuccessImplCopyWith<$Res> {
  __$$AddSuccessImplCopyWithImpl(
      _$AddSuccessImpl _value, $Res Function(_$AddSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? succcessmsg = null,
  }) {
    return _then(_$AddSuccessImpl(
      null == succcessmsg
          ? _value.succcessmsg
          : succcessmsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddSuccessImpl implements AddSuccess {
  const _$AddSuccessImpl(this.succcessmsg);

  @override
  final String succcessmsg;

  @override
  String toString() {
    return 'CouponState.addSuccess(succcessmsg: $succcessmsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSuccessImpl &&
            (identical(other.succcessmsg, succcessmsg) ||
                other.succcessmsg == succcessmsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, succcessmsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSuccessImplCopyWith<_$AddSuccessImpl> get copyWith =>
      __$$AddSuccessImplCopyWithImpl<_$AddSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AvialableCoupon> avialableCoupons) success,
    required TResult Function(String errmsg) errorst,
    required TResult Function(String succcessmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function(String successmsg) deletesucces,
    required TResult Function(String failuremsg) deleteFailure,
  }) {
    return addSuccess(succcessmsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AvialableCoupon> avialableCoupons)? success,
    TResult? Function(String errmsg)? errorst,
    TResult? Function(String succcessmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function(String successmsg)? deletesucces,
    TResult? Function(String failuremsg)? deleteFailure,
  }) {
    return addSuccess?.call(succcessmsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AvialableCoupon> avialableCoupons)? success,
    TResult Function(String errmsg)? errorst,
    TResult Function(String succcessmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function(String successmsg)? deletesucces,
    TResult Function(String failuremsg)? deleteFailure,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess(succcessmsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetLoading value) loading,
    required TResult Function(GetSuccess value) success,
    required TResult Function(GertErrorSt value) errorst,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(DeleteSuccess value) deletesucces,
    required TResult Function(DeleteFailure value) deleteFailure,
  }) {
    return addSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetLoading value)? loading,
    TResult? Function(GetSuccess value)? success,
    TResult? Function(GertErrorSt value)? errorst,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(DeleteSuccess value)? deletesucces,
    TResult? Function(DeleteFailure value)? deleteFailure,
  }) {
    return addSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetLoading value)? loading,
    TResult Function(GetSuccess value)? success,
    TResult Function(GertErrorSt value)? errorst,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(DeleteSuccess value)? deletesucces,
    TResult Function(DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess(this);
    }
    return orElse();
  }
}

abstract class AddSuccess implements CouponState {
  const factory AddSuccess(final String succcessmsg) = _$AddSuccessImpl;

  String get succcessmsg;
  @JsonKey(ignore: true)
  _$$AddSuccessImplCopyWith<_$AddSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFailureImplCopyWith<$Res> {
  factory _$$AddFailureImplCopyWith(
          _$AddFailureImpl value, $Res Function(_$AddFailureImpl) then) =
      __$$AddFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String failuremsg});
}

/// @nodoc
class __$$AddFailureImplCopyWithImpl<$Res>
    extends _$CouponStateCopyWithImpl<$Res, _$AddFailureImpl>
    implements _$$AddFailureImplCopyWith<$Res> {
  __$$AddFailureImplCopyWithImpl(
      _$AddFailureImpl _value, $Res Function(_$AddFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failuremsg = null,
  }) {
    return _then(_$AddFailureImpl(
      null == failuremsg
          ? _value.failuremsg
          : failuremsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddFailureImpl implements AddFailure {
  const _$AddFailureImpl(this.failuremsg);

  @override
  final String failuremsg;

  @override
  String toString() {
    return 'CouponState.addFailure(failuremsg: $failuremsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFailureImpl &&
            (identical(other.failuremsg, failuremsg) ||
                other.failuremsg == failuremsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failuremsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFailureImplCopyWith<_$AddFailureImpl> get copyWith =>
      __$$AddFailureImplCopyWithImpl<_$AddFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AvialableCoupon> avialableCoupons) success,
    required TResult Function(String errmsg) errorst,
    required TResult Function(String succcessmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function(String successmsg) deletesucces,
    required TResult Function(String failuremsg) deleteFailure,
  }) {
    return addFailure(failuremsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AvialableCoupon> avialableCoupons)? success,
    TResult? Function(String errmsg)? errorst,
    TResult? Function(String succcessmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function(String successmsg)? deletesucces,
    TResult? Function(String failuremsg)? deleteFailure,
  }) {
    return addFailure?.call(failuremsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AvialableCoupon> avialableCoupons)? success,
    TResult Function(String errmsg)? errorst,
    TResult Function(String succcessmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function(String successmsg)? deletesucces,
    TResult Function(String failuremsg)? deleteFailure,
    required TResult orElse(),
  }) {
    if (addFailure != null) {
      return addFailure(failuremsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetLoading value) loading,
    required TResult Function(GetSuccess value) success,
    required TResult Function(GertErrorSt value) errorst,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(DeleteSuccess value) deletesucces,
    required TResult Function(DeleteFailure value) deleteFailure,
  }) {
    return addFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetLoading value)? loading,
    TResult? Function(GetSuccess value)? success,
    TResult? Function(GertErrorSt value)? errorst,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(DeleteSuccess value)? deletesucces,
    TResult? Function(DeleteFailure value)? deleteFailure,
  }) {
    return addFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetLoading value)? loading,
    TResult Function(GetSuccess value)? success,
    TResult Function(GertErrorSt value)? errorst,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(DeleteSuccess value)? deletesucces,
    TResult Function(DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (addFailure != null) {
      return addFailure(this);
    }
    return orElse();
  }
}

abstract class AddFailure implements CouponState {
  const factory AddFailure(final String failuremsg) = _$AddFailureImpl;

  String get failuremsg;
  @JsonKey(ignore: true)
  _$$AddFailureImplCopyWith<_$AddFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSuccessImplCopyWith<$Res> {
  factory _$$DeleteSuccessImplCopyWith(
          _$DeleteSuccessImpl value, $Res Function(_$DeleteSuccessImpl) then) =
      __$$DeleteSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String successmsg});
}

/// @nodoc
class __$$DeleteSuccessImplCopyWithImpl<$Res>
    extends _$CouponStateCopyWithImpl<$Res, _$DeleteSuccessImpl>
    implements _$$DeleteSuccessImplCopyWith<$Res> {
  __$$DeleteSuccessImplCopyWithImpl(
      _$DeleteSuccessImpl _value, $Res Function(_$DeleteSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successmsg = null,
  }) {
    return _then(_$DeleteSuccessImpl(
      null == successmsg
          ? _value.successmsg
          : successmsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteSuccessImpl implements DeleteSuccess {
  const _$DeleteSuccessImpl(this.successmsg);

  @override
  final String successmsg;

  @override
  String toString() {
    return 'CouponState.deletesucces(successmsg: $successmsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSuccessImpl &&
            (identical(other.successmsg, successmsg) ||
                other.successmsg == successmsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successmsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSuccessImplCopyWith<_$DeleteSuccessImpl> get copyWith =>
      __$$DeleteSuccessImplCopyWithImpl<_$DeleteSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AvialableCoupon> avialableCoupons) success,
    required TResult Function(String errmsg) errorst,
    required TResult Function(String succcessmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function(String successmsg) deletesucces,
    required TResult Function(String failuremsg) deleteFailure,
  }) {
    return deletesucces(successmsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AvialableCoupon> avialableCoupons)? success,
    TResult? Function(String errmsg)? errorst,
    TResult? Function(String succcessmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function(String successmsg)? deletesucces,
    TResult? Function(String failuremsg)? deleteFailure,
  }) {
    return deletesucces?.call(successmsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AvialableCoupon> avialableCoupons)? success,
    TResult Function(String errmsg)? errorst,
    TResult Function(String succcessmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function(String successmsg)? deletesucces,
    TResult Function(String failuremsg)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deletesucces != null) {
      return deletesucces(successmsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetLoading value) loading,
    required TResult Function(GetSuccess value) success,
    required TResult Function(GertErrorSt value) errorst,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(DeleteSuccess value) deletesucces,
    required TResult Function(DeleteFailure value) deleteFailure,
  }) {
    return deletesucces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetLoading value)? loading,
    TResult? Function(GetSuccess value)? success,
    TResult? Function(GertErrorSt value)? errorst,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(DeleteSuccess value)? deletesucces,
    TResult? Function(DeleteFailure value)? deleteFailure,
  }) {
    return deletesucces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetLoading value)? loading,
    TResult Function(GetSuccess value)? success,
    TResult Function(GertErrorSt value)? errorst,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(DeleteSuccess value)? deletesucces,
    TResult Function(DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deletesucces != null) {
      return deletesucces(this);
    }
    return orElse();
  }
}

abstract class DeleteSuccess implements CouponState {
  const factory DeleteSuccess(final String successmsg) = _$DeleteSuccessImpl;

  String get successmsg;
  @JsonKey(ignore: true)
  _$$DeleteSuccessImplCopyWith<_$DeleteSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFailureImplCopyWith<$Res> {
  factory _$$DeleteFailureImplCopyWith(
          _$DeleteFailureImpl value, $Res Function(_$DeleteFailureImpl) then) =
      __$$DeleteFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String failuremsg});
}

/// @nodoc
class __$$DeleteFailureImplCopyWithImpl<$Res>
    extends _$CouponStateCopyWithImpl<$Res, _$DeleteFailureImpl>
    implements _$$DeleteFailureImplCopyWith<$Res> {
  __$$DeleteFailureImplCopyWithImpl(
      _$DeleteFailureImpl _value, $Res Function(_$DeleteFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failuremsg = null,
  }) {
    return _then(_$DeleteFailureImpl(
      null == failuremsg
          ? _value.failuremsg
          : failuremsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteFailureImpl implements DeleteFailure {
  const _$DeleteFailureImpl(this.failuremsg);

  @override
  final String failuremsg;

  @override
  String toString() {
    return 'CouponState.deleteFailure(failuremsg: $failuremsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFailureImpl &&
            (identical(other.failuremsg, failuremsg) ||
                other.failuremsg == failuremsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failuremsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFailureImplCopyWith<_$DeleteFailureImpl> get copyWith =>
      __$$DeleteFailureImplCopyWithImpl<_$DeleteFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AvialableCoupon> avialableCoupons) success,
    required TResult Function(String errmsg) errorst,
    required TResult Function(String succcessmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function(String successmsg) deletesucces,
    required TResult Function(String failuremsg) deleteFailure,
  }) {
    return deleteFailure(failuremsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AvialableCoupon> avialableCoupons)? success,
    TResult? Function(String errmsg)? errorst,
    TResult? Function(String succcessmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function(String successmsg)? deletesucces,
    TResult? Function(String failuremsg)? deleteFailure,
  }) {
    return deleteFailure?.call(failuremsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AvialableCoupon> avialableCoupons)? success,
    TResult Function(String errmsg)? errorst,
    TResult Function(String succcessmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function(String successmsg)? deletesucces,
    TResult Function(String failuremsg)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(failuremsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetLoading value) loading,
    required TResult Function(GetSuccess value) success,
    required TResult Function(GertErrorSt value) errorst,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(DeleteSuccess value) deletesucces,
    required TResult Function(DeleteFailure value) deleteFailure,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetLoading value)? loading,
    TResult? Function(GetSuccess value)? success,
    TResult? Function(GertErrorSt value)? errorst,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(DeleteSuccess value)? deletesucces,
    TResult? Function(DeleteFailure value)? deleteFailure,
  }) {
    return deleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetLoading value)? loading,
    TResult Function(GetSuccess value)? success,
    TResult Function(GertErrorSt value)? errorst,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(DeleteSuccess value)? deletesucces,
    TResult Function(DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class DeleteFailure implements CouponState {
  const factory DeleteFailure(final String failuremsg) = _$DeleteFailureImpl;

  String get failuremsg;
  @JsonKey(ignore: true)
  _$$DeleteFailureImplCopyWith<_$DeleteFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
