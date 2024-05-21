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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCoupons,
    TResult? Function(AddCouponBody couponModel)? addCoupons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCoupons,
    TResult Function(AddCouponBody couponModel)? addCoupons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoupons value) getCoupons,
    required TResult Function(_AddCoupon value) addCoupons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_AddCoupon value)? addCoupons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_AddCoupon value)? addCoupons,
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
  }) {
    return getCoupons();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCoupons,
    TResult? Function(AddCouponBody couponModel)? addCoupons,
  }) {
    return getCoupons?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCoupons,
    TResult Function(AddCouponBody couponModel)? addCoupons,
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
  }) {
    return getCoupons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_AddCoupon value)? addCoupons,
  }) {
    return getCoupons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_AddCoupon value)? addCoupons,
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
  }) {
    return addCoupons(couponModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCoupons,
    TResult? Function(AddCouponBody couponModel)? addCoupons,
  }) {
    return addCoupons?.call(couponModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCoupons,
    TResult Function(AddCouponBody couponModel)? addCoupons,
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
  }) {
    return addCoupons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_AddCoupon value)? addCoupons,
  }) {
    return addCoupons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_AddCoupon value)? addCoupons,
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
mixin _$CouponState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isGetCouponHasError => throw _privateConstructorUsedError;
  bool get isGetCouponHasSuccess => throw _privateConstructorUsedError;
  bool get isAddCouponHasError => throw _privateConstructorUsedError;
  bool get isAddCouponSuccess => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<AvialableCoupon> get avialableCoupons =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CouponStateCopyWith<CouponState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponStateCopyWith<$Res> {
  factory $CouponStateCopyWith(
          CouponState value, $Res Function(CouponState) then) =
      _$CouponStateCopyWithImpl<$Res, CouponState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isGetCouponHasError,
      bool isGetCouponHasSuccess,
      bool isAddCouponHasError,
      bool isAddCouponSuccess,
      String? message,
      List<AvialableCoupon> avialableCoupons});
}

/// @nodoc
class _$CouponStateCopyWithImpl<$Res, $Val extends CouponState>
    implements $CouponStateCopyWith<$Res> {
  _$CouponStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isGetCouponHasError = null,
    Object? isGetCouponHasSuccess = null,
    Object? isAddCouponHasError = null,
    Object? isAddCouponSuccess = null,
    Object? message = freezed,
    Object? avialableCoupons = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetCouponHasError: null == isGetCouponHasError
          ? _value.isGetCouponHasError
          : isGetCouponHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetCouponHasSuccess: null == isGetCouponHasSuccess
          ? _value.isGetCouponHasSuccess
          : isGetCouponHasSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddCouponHasError: null == isAddCouponHasError
          ? _value.isAddCouponHasError
          : isAddCouponHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddCouponSuccess: null == isAddCouponSuccess
          ? _value.isAddCouponSuccess
          : isAddCouponSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      avialableCoupons: null == avialableCoupons
          ? _value.avialableCoupons
          : avialableCoupons // ignore: cast_nullable_to_non_nullable
              as List<AvialableCoupon>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CouponStateImplCopyWith<$Res>
    implements $CouponStateCopyWith<$Res> {
  factory _$$CouponStateImplCopyWith(
          _$CouponStateImpl value, $Res Function(_$CouponStateImpl) then) =
      __$$CouponStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isGetCouponHasError,
      bool isGetCouponHasSuccess,
      bool isAddCouponHasError,
      bool isAddCouponSuccess,
      String? message,
      List<AvialableCoupon> avialableCoupons});
}

/// @nodoc
class __$$CouponStateImplCopyWithImpl<$Res>
    extends _$CouponStateCopyWithImpl<$Res, _$CouponStateImpl>
    implements _$$CouponStateImplCopyWith<$Res> {
  __$$CouponStateImplCopyWithImpl(
      _$CouponStateImpl _value, $Res Function(_$CouponStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isGetCouponHasError = null,
    Object? isGetCouponHasSuccess = null,
    Object? isAddCouponHasError = null,
    Object? isAddCouponSuccess = null,
    Object? message = freezed,
    Object? avialableCoupons = null,
  }) {
    return _then(_$CouponStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetCouponHasError: null == isGetCouponHasError
          ? _value.isGetCouponHasError
          : isGetCouponHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetCouponHasSuccess: null == isGetCouponHasSuccess
          ? _value.isGetCouponHasSuccess
          : isGetCouponHasSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddCouponHasError: null == isAddCouponHasError
          ? _value.isAddCouponHasError
          : isAddCouponHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddCouponSuccess: null == isAddCouponSuccess
          ? _value.isAddCouponSuccess
          : isAddCouponSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      avialableCoupons: null == avialableCoupons
          ? _value._avialableCoupons
          : avialableCoupons // ignore: cast_nullable_to_non_nullable
              as List<AvialableCoupon>,
    ));
  }
}

/// @nodoc

class _$CouponStateImpl implements _CouponState {
  const _$CouponStateImpl(
      {required this.isLoading,
      required this.isGetCouponHasError,
      required this.isGetCouponHasSuccess,
      required this.isAddCouponHasError,
      required this.isAddCouponSuccess,
      this.message,
      required final List<AvialableCoupon> avialableCoupons})
      : _avialableCoupons = avialableCoupons;

  @override
  final bool isLoading;
  @override
  final bool isGetCouponHasError;
  @override
  final bool isGetCouponHasSuccess;
  @override
  final bool isAddCouponHasError;
  @override
  final bool isAddCouponSuccess;
  @override
  final String? message;
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
    return 'CouponState(isLoading: $isLoading, isGetCouponHasError: $isGetCouponHasError, isGetCouponHasSuccess: $isGetCouponHasSuccess, isAddCouponHasError: $isAddCouponHasError, isAddCouponSuccess: $isAddCouponSuccess, message: $message, avialableCoupons: $avialableCoupons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isGetCouponHasError, isGetCouponHasError) ||
                other.isGetCouponHasError == isGetCouponHasError) &&
            (identical(other.isGetCouponHasSuccess, isGetCouponHasSuccess) ||
                other.isGetCouponHasSuccess == isGetCouponHasSuccess) &&
            (identical(other.isAddCouponHasError, isAddCouponHasError) ||
                other.isAddCouponHasError == isAddCouponHasError) &&
            (identical(other.isAddCouponSuccess, isAddCouponSuccess) ||
                other.isAddCouponSuccess == isAddCouponSuccess) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._avialableCoupons, _avialableCoupons));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isGetCouponHasError,
      isGetCouponHasSuccess,
      isAddCouponHasError,
      isAddCouponSuccess,
      message,
      const DeepCollectionEquality().hash(_avialableCoupons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponStateImplCopyWith<_$CouponStateImpl> get copyWith =>
      __$$CouponStateImplCopyWithImpl<_$CouponStateImpl>(this, _$identity);
}

abstract class _CouponState implements CouponState {
  const factory _CouponState(
          {required final bool isLoading,
          required final bool isGetCouponHasError,
          required final bool isGetCouponHasSuccess,
          required final bool isAddCouponHasError,
          required final bool isAddCouponSuccess,
          final String? message,
          required final List<AvialableCoupon> avialableCoupons}) =
      _$CouponStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isGetCouponHasError;
  @override
  bool get isGetCouponHasSuccess;
  @override
  bool get isAddCouponHasError;
  @override
  bool get isAddCouponSuccess;
  @override
  String? get message;
  @override
  List<AvialableCoupon> get avialableCoupons;
  @override
  @JsonKey(ignore: true)
  _$$CouponStateImplCopyWith<_$CouponStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
