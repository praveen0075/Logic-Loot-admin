// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_by_id_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductByIdEvent {
  int get productId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) getProductById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? getProductById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? getProductById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProductById value) getProductById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProductById value)? getProductById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductById value)? getProductById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductByIdEventCopyWith<ProductByIdEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductByIdEventCopyWith<$Res> {
  factory $ProductByIdEventCopyWith(
          ProductByIdEvent value, $Res Function(ProductByIdEvent) then) =
      _$ProductByIdEventCopyWithImpl<$Res, ProductByIdEvent>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class _$ProductByIdEventCopyWithImpl<$Res, $Val extends ProductByIdEvent>
    implements $ProductByIdEventCopyWith<$Res> {
  _$ProductByIdEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetProductByIdImplCopyWith<$Res>
    implements $ProductByIdEventCopyWith<$Res> {
  factory _$$GetProductByIdImplCopyWith(_$GetProductByIdImpl value,
          $Res Function(_$GetProductByIdImpl) then) =
      __$$GetProductByIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$GetProductByIdImplCopyWithImpl<$Res>
    extends _$ProductByIdEventCopyWithImpl<$Res, _$GetProductByIdImpl>
    implements _$$GetProductByIdImplCopyWith<$Res> {
  __$$GetProductByIdImplCopyWithImpl(
      _$GetProductByIdImpl _value, $Res Function(_$GetProductByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$GetProductByIdImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetProductByIdImpl implements _GetProductById {
  const _$GetProductByIdImpl({required this.productId});

  @override
  final int productId;

  @override
  String toString() {
    return 'ProductByIdEvent.getProductById(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductByIdImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductByIdImplCopyWith<_$GetProductByIdImpl> get copyWith =>
      __$$GetProductByIdImplCopyWithImpl<_$GetProductByIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) getProductById,
  }) {
    return getProductById(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? getProductById,
  }) {
    return getProductById?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? getProductById,
    required TResult orElse(),
  }) {
    if (getProductById != null) {
      return getProductById(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProductById value) getProductById,
  }) {
    return getProductById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProductById value)? getProductById,
  }) {
    return getProductById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductById value)? getProductById,
    required TResult orElse(),
  }) {
    if (getProductById != null) {
      return getProductById(this);
    }
    return orElse();
  }
}

abstract class _GetProductById implements ProductByIdEvent {
  const factory _GetProductById({required final int productId}) =
      _$GetProductByIdImpl;

  @override
  int get productId;
  @override
  @JsonKey(ignore: true)
  _$$GetProductByIdImplCopyWith<_$GetProductByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductByIdState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProductByIdInitial,
    required TResult Function() getProductByIdLoading,
    required TResult Function(ProductById products,
            ProductDetails productDetails, Inventory inventory)
        getProductByIdSuccess,
    required TResult Function(String errmsg) getProductByIdFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProductByIdInitial,
    TResult? Function()? getProductByIdLoading,
    TResult? Function(ProductById products, ProductDetails productDetails,
            Inventory inventory)?
        getProductByIdSuccess,
    TResult? Function(String errmsg)? getProductByIdFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProductByIdInitial,
    TResult Function()? getProductByIdLoading,
    TResult Function(ProductById products, ProductDetails productDetails,
            Inventory inventory)?
        getProductByIdSuccess,
    TResult Function(String errmsg)? getProductByIdFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductByIdInitial value)
        getProductByIdInitial,
    required TResult Function(GetProductByIdLoading value)
        getProductByIdLoading,
    required TResult Function(GetProductByIdSuccess value)
        getProductByIdSuccess,
    required TResult Function(GetProductByIdFailure value)
        getProductByIdFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductByIdInitial value)? getProductByIdInitial,
    TResult? Function(GetProductByIdLoading value)? getProductByIdLoading,
    TResult? Function(GetProductByIdSuccess value)? getProductByIdSuccess,
    TResult? Function(GetProductByIdFailure value)? getProductByIdFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductByIdInitial value)? getProductByIdInitial,
    TResult Function(GetProductByIdLoading value)? getProductByIdLoading,
    TResult Function(GetProductByIdSuccess value)? getProductByIdSuccess,
    TResult Function(GetProductByIdFailure value)? getProductByIdFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductByIdStateCopyWith<$Res> {
  factory $ProductByIdStateCopyWith(
          ProductByIdState value, $Res Function(ProductByIdState) then) =
      _$ProductByIdStateCopyWithImpl<$Res, ProductByIdState>;
}

/// @nodoc
class _$ProductByIdStateCopyWithImpl<$Res, $Val extends ProductByIdState>
    implements $ProductByIdStateCopyWith<$Res> {
  _$ProductByIdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetProductByIdInitialImplCopyWith<$Res> {
  factory _$$GetProductByIdInitialImplCopyWith(
          _$GetProductByIdInitialImpl value,
          $Res Function(_$GetProductByIdInitialImpl) then) =
      __$$GetProductByIdInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductByIdInitialImplCopyWithImpl<$Res>
    extends _$ProductByIdStateCopyWithImpl<$Res, _$GetProductByIdInitialImpl>
    implements _$$GetProductByIdInitialImplCopyWith<$Res> {
  __$$GetProductByIdInitialImplCopyWithImpl(_$GetProductByIdInitialImpl _value,
      $Res Function(_$GetProductByIdInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProductByIdInitialImpl implements GetProductByIdInitial {
  const _$GetProductByIdInitialImpl();

  @override
  String toString() {
    return 'ProductByIdState.getProductByIdInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductByIdInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProductByIdInitial,
    required TResult Function() getProductByIdLoading,
    required TResult Function(ProductById products,
            ProductDetails productDetails, Inventory inventory)
        getProductByIdSuccess,
    required TResult Function(String errmsg) getProductByIdFailure,
  }) {
    return getProductByIdInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProductByIdInitial,
    TResult? Function()? getProductByIdLoading,
    TResult? Function(ProductById products, ProductDetails productDetails,
            Inventory inventory)?
        getProductByIdSuccess,
    TResult? Function(String errmsg)? getProductByIdFailure,
  }) {
    return getProductByIdInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProductByIdInitial,
    TResult Function()? getProductByIdLoading,
    TResult Function(ProductById products, ProductDetails productDetails,
            Inventory inventory)?
        getProductByIdSuccess,
    TResult Function(String errmsg)? getProductByIdFailure,
    required TResult orElse(),
  }) {
    if (getProductByIdInitial != null) {
      return getProductByIdInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductByIdInitial value)
        getProductByIdInitial,
    required TResult Function(GetProductByIdLoading value)
        getProductByIdLoading,
    required TResult Function(GetProductByIdSuccess value)
        getProductByIdSuccess,
    required TResult Function(GetProductByIdFailure value)
        getProductByIdFailure,
  }) {
    return getProductByIdInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductByIdInitial value)? getProductByIdInitial,
    TResult? Function(GetProductByIdLoading value)? getProductByIdLoading,
    TResult? Function(GetProductByIdSuccess value)? getProductByIdSuccess,
    TResult? Function(GetProductByIdFailure value)? getProductByIdFailure,
  }) {
    return getProductByIdInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductByIdInitial value)? getProductByIdInitial,
    TResult Function(GetProductByIdLoading value)? getProductByIdLoading,
    TResult Function(GetProductByIdSuccess value)? getProductByIdSuccess,
    TResult Function(GetProductByIdFailure value)? getProductByIdFailure,
    required TResult orElse(),
  }) {
    if (getProductByIdInitial != null) {
      return getProductByIdInitial(this);
    }
    return orElse();
  }
}

abstract class GetProductByIdInitial implements ProductByIdState {
  const factory GetProductByIdInitial() = _$GetProductByIdInitialImpl;
}

/// @nodoc
abstract class _$$GetProductByIdLoadingImplCopyWith<$Res> {
  factory _$$GetProductByIdLoadingImplCopyWith(
          _$GetProductByIdLoadingImpl value,
          $Res Function(_$GetProductByIdLoadingImpl) then) =
      __$$GetProductByIdLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductByIdLoadingImplCopyWithImpl<$Res>
    extends _$ProductByIdStateCopyWithImpl<$Res, _$GetProductByIdLoadingImpl>
    implements _$$GetProductByIdLoadingImplCopyWith<$Res> {
  __$$GetProductByIdLoadingImplCopyWithImpl(_$GetProductByIdLoadingImpl _value,
      $Res Function(_$GetProductByIdLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProductByIdLoadingImpl implements GetProductByIdLoading {
  const _$GetProductByIdLoadingImpl();

  @override
  String toString() {
    return 'ProductByIdState.getProductByIdLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductByIdLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProductByIdInitial,
    required TResult Function() getProductByIdLoading,
    required TResult Function(ProductById products,
            ProductDetails productDetails, Inventory inventory)
        getProductByIdSuccess,
    required TResult Function(String errmsg) getProductByIdFailure,
  }) {
    return getProductByIdLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProductByIdInitial,
    TResult? Function()? getProductByIdLoading,
    TResult? Function(ProductById products, ProductDetails productDetails,
            Inventory inventory)?
        getProductByIdSuccess,
    TResult? Function(String errmsg)? getProductByIdFailure,
  }) {
    return getProductByIdLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProductByIdInitial,
    TResult Function()? getProductByIdLoading,
    TResult Function(ProductById products, ProductDetails productDetails,
            Inventory inventory)?
        getProductByIdSuccess,
    TResult Function(String errmsg)? getProductByIdFailure,
    required TResult orElse(),
  }) {
    if (getProductByIdLoading != null) {
      return getProductByIdLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductByIdInitial value)
        getProductByIdInitial,
    required TResult Function(GetProductByIdLoading value)
        getProductByIdLoading,
    required TResult Function(GetProductByIdSuccess value)
        getProductByIdSuccess,
    required TResult Function(GetProductByIdFailure value)
        getProductByIdFailure,
  }) {
    return getProductByIdLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductByIdInitial value)? getProductByIdInitial,
    TResult? Function(GetProductByIdLoading value)? getProductByIdLoading,
    TResult? Function(GetProductByIdSuccess value)? getProductByIdSuccess,
    TResult? Function(GetProductByIdFailure value)? getProductByIdFailure,
  }) {
    return getProductByIdLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductByIdInitial value)? getProductByIdInitial,
    TResult Function(GetProductByIdLoading value)? getProductByIdLoading,
    TResult Function(GetProductByIdSuccess value)? getProductByIdSuccess,
    TResult Function(GetProductByIdFailure value)? getProductByIdFailure,
    required TResult orElse(),
  }) {
    if (getProductByIdLoading != null) {
      return getProductByIdLoading(this);
    }
    return orElse();
  }
}

abstract class GetProductByIdLoading implements ProductByIdState {
  const factory GetProductByIdLoading() = _$GetProductByIdLoadingImpl;
}

/// @nodoc
abstract class _$$GetProductByIdSuccessImplCopyWith<$Res> {
  factory _$$GetProductByIdSuccessImplCopyWith(
          _$GetProductByIdSuccessImpl value,
          $Res Function(_$GetProductByIdSuccessImpl) then) =
      __$$GetProductByIdSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ProductById products,
      ProductDetails productDetails,
      Inventory inventory});
}

/// @nodoc
class __$$GetProductByIdSuccessImplCopyWithImpl<$Res>
    extends _$ProductByIdStateCopyWithImpl<$Res, _$GetProductByIdSuccessImpl>
    implements _$$GetProductByIdSuccessImplCopyWith<$Res> {
  __$$GetProductByIdSuccessImplCopyWithImpl(_$GetProductByIdSuccessImpl _value,
      $Res Function(_$GetProductByIdSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? productDetails = null,
    Object? inventory = null,
  }) {
    return _then(_$GetProductByIdSuccessImpl(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as ProductById,
      productDetails: null == productDetails
          ? _value.productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as ProductDetails,
      inventory: null == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as Inventory,
    ));
  }
}

/// @nodoc

class _$GetProductByIdSuccessImpl implements GetProductByIdSuccess {
  const _$GetProductByIdSuccessImpl(
      {required this.products,
      required this.productDetails,
      required this.inventory});

  @override
  final ProductById products;
  @override
  final ProductDetails productDetails;
  @override
  final Inventory inventory;

  @override
  String toString() {
    return 'ProductByIdState.getProductByIdSuccess(products: $products, productDetails: $productDetails, inventory: $inventory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductByIdSuccessImpl &&
            (identical(other.products, products) ||
                other.products == products) &&
            (identical(other.productDetails, productDetails) ||
                other.productDetails == productDetails) &&
            (identical(other.inventory, inventory) ||
                other.inventory == inventory));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, products, productDetails, inventory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductByIdSuccessImplCopyWith<_$GetProductByIdSuccessImpl>
      get copyWith => __$$GetProductByIdSuccessImplCopyWithImpl<
          _$GetProductByIdSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProductByIdInitial,
    required TResult Function() getProductByIdLoading,
    required TResult Function(ProductById products,
            ProductDetails productDetails, Inventory inventory)
        getProductByIdSuccess,
    required TResult Function(String errmsg) getProductByIdFailure,
  }) {
    return getProductByIdSuccess(products, productDetails, inventory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProductByIdInitial,
    TResult? Function()? getProductByIdLoading,
    TResult? Function(ProductById products, ProductDetails productDetails,
            Inventory inventory)?
        getProductByIdSuccess,
    TResult? Function(String errmsg)? getProductByIdFailure,
  }) {
    return getProductByIdSuccess?.call(products, productDetails, inventory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProductByIdInitial,
    TResult Function()? getProductByIdLoading,
    TResult Function(ProductById products, ProductDetails productDetails,
            Inventory inventory)?
        getProductByIdSuccess,
    TResult Function(String errmsg)? getProductByIdFailure,
    required TResult orElse(),
  }) {
    if (getProductByIdSuccess != null) {
      return getProductByIdSuccess(products, productDetails, inventory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductByIdInitial value)
        getProductByIdInitial,
    required TResult Function(GetProductByIdLoading value)
        getProductByIdLoading,
    required TResult Function(GetProductByIdSuccess value)
        getProductByIdSuccess,
    required TResult Function(GetProductByIdFailure value)
        getProductByIdFailure,
  }) {
    return getProductByIdSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductByIdInitial value)? getProductByIdInitial,
    TResult? Function(GetProductByIdLoading value)? getProductByIdLoading,
    TResult? Function(GetProductByIdSuccess value)? getProductByIdSuccess,
    TResult? Function(GetProductByIdFailure value)? getProductByIdFailure,
  }) {
    return getProductByIdSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductByIdInitial value)? getProductByIdInitial,
    TResult Function(GetProductByIdLoading value)? getProductByIdLoading,
    TResult Function(GetProductByIdSuccess value)? getProductByIdSuccess,
    TResult Function(GetProductByIdFailure value)? getProductByIdFailure,
    required TResult orElse(),
  }) {
    if (getProductByIdSuccess != null) {
      return getProductByIdSuccess(this);
    }
    return orElse();
  }
}

abstract class GetProductByIdSuccess implements ProductByIdState {
  const factory GetProductByIdSuccess(
      {required final ProductById products,
      required final ProductDetails productDetails,
      required final Inventory inventory}) = _$GetProductByIdSuccessImpl;

  ProductById get products;
  ProductDetails get productDetails;
  Inventory get inventory;
  @JsonKey(ignore: true)
  _$$GetProductByIdSuccessImplCopyWith<_$GetProductByIdSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductByIdFailureImplCopyWith<$Res> {
  factory _$$GetProductByIdFailureImplCopyWith(
          _$GetProductByIdFailureImpl value,
          $Res Function(_$GetProductByIdFailureImpl) then) =
      __$$GetProductByIdFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errmsg});
}

/// @nodoc
class __$$GetProductByIdFailureImplCopyWithImpl<$Res>
    extends _$ProductByIdStateCopyWithImpl<$Res, _$GetProductByIdFailureImpl>
    implements _$$GetProductByIdFailureImplCopyWith<$Res> {
  __$$GetProductByIdFailureImplCopyWithImpl(_$GetProductByIdFailureImpl _value,
      $Res Function(_$GetProductByIdFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errmsg = null,
  }) {
    return _then(_$GetProductByIdFailureImpl(
      null == errmsg
          ? _value.errmsg
          : errmsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetProductByIdFailureImpl implements GetProductByIdFailure {
  const _$GetProductByIdFailureImpl(this.errmsg);

  @override
  final String errmsg;

  @override
  String toString() {
    return 'ProductByIdState.getProductByIdFailure(errmsg: $errmsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductByIdFailureImpl &&
            (identical(other.errmsg, errmsg) || other.errmsg == errmsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errmsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductByIdFailureImplCopyWith<_$GetProductByIdFailureImpl>
      get copyWith => __$$GetProductByIdFailureImplCopyWithImpl<
          _$GetProductByIdFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProductByIdInitial,
    required TResult Function() getProductByIdLoading,
    required TResult Function(ProductById products,
            ProductDetails productDetails, Inventory inventory)
        getProductByIdSuccess,
    required TResult Function(String errmsg) getProductByIdFailure,
  }) {
    return getProductByIdFailure(errmsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProductByIdInitial,
    TResult? Function()? getProductByIdLoading,
    TResult? Function(ProductById products, ProductDetails productDetails,
            Inventory inventory)?
        getProductByIdSuccess,
    TResult? Function(String errmsg)? getProductByIdFailure,
  }) {
    return getProductByIdFailure?.call(errmsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProductByIdInitial,
    TResult Function()? getProductByIdLoading,
    TResult Function(ProductById products, ProductDetails productDetails,
            Inventory inventory)?
        getProductByIdSuccess,
    TResult Function(String errmsg)? getProductByIdFailure,
    required TResult orElse(),
  }) {
    if (getProductByIdFailure != null) {
      return getProductByIdFailure(errmsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductByIdInitial value)
        getProductByIdInitial,
    required TResult Function(GetProductByIdLoading value)
        getProductByIdLoading,
    required TResult Function(GetProductByIdSuccess value)
        getProductByIdSuccess,
    required TResult Function(GetProductByIdFailure value)
        getProductByIdFailure,
  }) {
    return getProductByIdFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductByIdInitial value)? getProductByIdInitial,
    TResult? Function(GetProductByIdLoading value)? getProductByIdLoading,
    TResult? Function(GetProductByIdSuccess value)? getProductByIdSuccess,
    TResult? Function(GetProductByIdFailure value)? getProductByIdFailure,
  }) {
    return getProductByIdFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductByIdInitial value)? getProductByIdInitial,
    TResult Function(GetProductByIdLoading value)? getProductByIdLoading,
    TResult Function(GetProductByIdSuccess value)? getProductByIdSuccess,
    TResult Function(GetProductByIdFailure value)? getProductByIdFailure,
    required TResult orElse(),
  }) {
    if (getProductByIdFailure != null) {
      return getProductByIdFailure(this);
    }
    return orElse();
  }
}

abstract class GetProductByIdFailure implements ProductByIdState {
  const factory GetProductByIdFailure(final String errmsg) =
      _$GetProductByIdFailureImpl;

  String get errmsg;
  @JsonKey(ignore: true)
  _$$GetProductByIdFailureImplCopyWith<_$GetProductByIdFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
