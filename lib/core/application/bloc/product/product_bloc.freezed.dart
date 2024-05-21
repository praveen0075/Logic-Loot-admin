// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddproductModel productModel) addProductEvent,
    required TResult Function() getAllProductEvent,
    required TResult Function(int productId) getProductById,
    required TResult Function(int productId) deleteProductByid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddproductModel productModel)? addProductEvent,
    TResult? Function()? getAllProductEvent,
    TResult? Function(int productId)? getProductById,
    TResult? Function(int productId)? deleteProductByid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddproductModel productModel)? addProductEvent,
    TResult Function()? getAllProductEvent,
    TResult Function(int productId)? getProductById,
    TResult Function(int productId)? deleteProductByid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddproductEvent value) addProductEvent,
    required TResult Function(_GetAllProductEvent value) getAllProductEvent,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_DeleteProductById value) deleteProductByid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddproductEvent value)? addProductEvent,
    TResult? Function(_GetAllProductEvent value)? getAllProductEvent,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_DeleteProductById value)? deleteProductByid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddproductEvent value)? addProductEvent,
    TResult Function(_GetAllProductEvent value)? getAllProductEvent,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_DeleteProductById value)? deleteProductByid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddproductEventImplCopyWith<$Res> {
  factory _$$AddproductEventImplCopyWith(_$AddproductEventImpl value,
          $Res Function(_$AddproductEventImpl) then) =
      __$$AddproductEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddproductModel productModel});
}

/// @nodoc
class __$$AddproductEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$AddproductEventImpl>
    implements _$$AddproductEventImplCopyWith<$Res> {
  __$$AddproductEventImplCopyWithImpl(
      _$AddproductEventImpl _value, $Res Function(_$AddproductEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productModel = null,
  }) {
    return _then(_$AddproductEventImpl(
      productModel: null == productModel
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as AddproductModel,
    ));
  }
}

/// @nodoc

class _$AddproductEventImpl implements _AddproductEvent {
  const _$AddproductEventImpl({required this.productModel});

  @override
  final AddproductModel productModel;

  @override
  String toString() {
    return 'ProductEvent.addProductEvent(productModel: $productModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddproductEventImpl &&
            (identical(other.productModel, productModel) ||
                other.productModel == productModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddproductEventImplCopyWith<_$AddproductEventImpl> get copyWith =>
      __$$AddproductEventImplCopyWithImpl<_$AddproductEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddproductModel productModel) addProductEvent,
    required TResult Function() getAllProductEvent,
    required TResult Function(int productId) getProductById,
    required TResult Function(int productId) deleteProductByid,
  }) {
    return addProductEvent(productModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddproductModel productModel)? addProductEvent,
    TResult? Function()? getAllProductEvent,
    TResult? Function(int productId)? getProductById,
    TResult? Function(int productId)? deleteProductByid,
  }) {
    return addProductEvent?.call(productModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddproductModel productModel)? addProductEvent,
    TResult Function()? getAllProductEvent,
    TResult Function(int productId)? getProductById,
    TResult Function(int productId)? deleteProductByid,
    required TResult orElse(),
  }) {
    if (addProductEvent != null) {
      return addProductEvent(productModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddproductEvent value) addProductEvent,
    required TResult Function(_GetAllProductEvent value) getAllProductEvent,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_DeleteProductById value) deleteProductByid,
  }) {
    return addProductEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddproductEvent value)? addProductEvent,
    TResult? Function(_GetAllProductEvent value)? getAllProductEvent,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_DeleteProductById value)? deleteProductByid,
  }) {
    return addProductEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddproductEvent value)? addProductEvent,
    TResult Function(_GetAllProductEvent value)? getAllProductEvent,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_DeleteProductById value)? deleteProductByid,
    required TResult orElse(),
  }) {
    if (addProductEvent != null) {
      return addProductEvent(this);
    }
    return orElse();
  }
}

abstract class _AddproductEvent implements ProductEvent {
  const factory _AddproductEvent(
      {required final AddproductModel productModel}) = _$AddproductEventImpl;

  AddproductModel get productModel;
  @JsonKey(ignore: true)
  _$$AddproductEventImplCopyWith<_$AddproductEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllProductEventImplCopyWith<$Res> {
  factory _$$GetAllProductEventImplCopyWith(_$GetAllProductEventImpl value,
          $Res Function(_$GetAllProductEventImpl) then) =
      __$$GetAllProductEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllProductEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetAllProductEventImpl>
    implements _$$GetAllProductEventImplCopyWith<$Res> {
  __$$GetAllProductEventImplCopyWithImpl(_$GetAllProductEventImpl _value,
      $Res Function(_$GetAllProductEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllProductEventImpl implements _GetAllProductEvent {
  const _$GetAllProductEventImpl();

  @override
  String toString() {
    return 'ProductEvent.getAllProductEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllProductEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddproductModel productModel) addProductEvent,
    required TResult Function() getAllProductEvent,
    required TResult Function(int productId) getProductById,
    required TResult Function(int productId) deleteProductByid,
  }) {
    return getAllProductEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddproductModel productModel)? addProductEvent,
    TResult? Function()? getAllProductEvent,
    TResult? Function(int productId)? getProductById,
    TResult? Function(int productId)? deleteProductByid,
  }) {
    return getAllProductEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddproductModel productModel)? addProductEvent,
    TResult Function()? getAllProductEvent,
    TResult Function(int productId)? getProductById,
    TResult Function(int productId)? deleteProductByid,
    required TResult orElse(),
  }) {
    if (getAllProductEvent != null) {
      return getAllProductEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddproductEvent value) addProductEvent,
    required TResult Function(_GetAllProductEvent value) getAllProductEvent,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_DeleteProductById value) deleteProductByid,
  }) {
    return getAllProductEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddproductEvent value)? addProductEvent,
    TResult? Function(_GetAllProductEvent value)? getAllProductEvent,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_DeleteProductById value)? deleteProductByid,
  }) {
    return getAllProductEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddproductEvent value)? addProductEvent,
    TResult Function(_GetAllProductEvent value)? getAllProductEvent,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_DeleteProductById value)? deleteProductByid,
    required TResult orElse(),
  }) {
    if (getAllProductEvent != null) {
      return getAllProductEvent(this);
    }
    return orElse();
  }
}

abstract class _GetAllProductEvent implements ProductEvent {
  const factory _GetAllProductEvent() = _$GetAllProductEventImpl;
}

/// @nodoc
abstract class _$$GetProductByIdImplCopyWith<$Res> {
  factory _$$GetProductByIdImplCopyWith(_$GetProductByIdImpl value,
          $Res Function(_$GetProductByIdImpl) then) =
      __$$GetProductByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$GetProductByIdImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetProductByIdImpl>
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
    return 'ProductEvent.getProductById(productId: $productId)';
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
    required TResult Function(AddproductModel productModel) addProductEvent,
    required TResult Function() getAllProductEvent,
    required TResult Function(int productId) getProductById,
    required TResult Function(int productId) deleteProductByid,
  }) {
    return getProductById(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddproductModel productModel)? addProductEvent,
    TResult? Function()? getAllProductEvent,
    TResult? Function(int productId)? getProductById,
    TResult? Function(int productId)? deleteProductByid,
  }) {
    return getProductById?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddproductModel productModel)? addProductEvent,
    TResult Function()? getAllProductEvent,
    TResult Function(int productId)? getProductById,
    TResult Function(int productId)? deleteProductByid,
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
    required TResult Function(_AddproductEvent value) addProductEvent,
    required TResult Function(_GetAllProductEvent value) getAllProductEvent,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_DeleteProductById value) deleteProductByid,
  }) {
    return getProductById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddproductEvent value)? addProductEvent,
    TResult? Function(_GetAllProductEvent value)? getAllProductEvent,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_DeleteProductById value)? deleteProductByid,
  }) {
    return getProductById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddproductEvent value)? addProductEvent,
    TResult Function(_GetAllProductEvent value)? getAllProductEvent,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_DeleteProductById value)? deleteProductByid,
    required TResult orElse(),
  }) {
    if (getProductById != null) {
      return getProductById(this);
    }
    return orElse();
  }
}

abstract class _GetProductById implements ProductEvent {
  const factory _GetProductById({required final int productId}) =
      _$GetProductByIdImpl;

  int get productId;
  @JsonKey(ignore: true)
  _$$GetProductByIdImplCopyWith<_$GetProductByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProductByIdImplCopyWith<$Res> {
  factory _$$DeleteProductByIdImplCopyWith(_$DeleteProductByIdImpl value,
          $Res Function(_$DeleteProductByIdImpl) then) =
      __$$DeleteProductByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$DeleteProductByIdImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$DeleteProductByIdImpl>
    implements _$$DeleteProductByIdImplCopyWith<$Res> {
  __$$DeleteProductByIdImplCopyWithImpl(_$DeleteProductByIdImpl _value,
      $Res Function(_$DeleteProductByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$DeleteProductByIdImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteProductByIdImpl implements _DeleteProductById {
  const _$DeleteProductByIdImpl({required this.productId});

  @override
  final int productId;

  @override
  String toString() {
    return 'ProductEvent.deleteProductByid(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductByIdImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductByIdImplCopyWith<_$DeleteProductByIdImpl> get copyWith =>
      __$$DeleteProductByIdImplCopyWithImpl<_$DeleteProductByIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddproductModel productModel) addProductEvent,
    required TResult Function() getAllProductEvent,
    required TResult Function(int productId) getProductById,
    required TResult Function(int productId) deleteProductByid,
  }) {
    return deleteProductByid(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddproductModel productModel)? addProductEvent,
    TResult? Function()? getAllProductEvent,
    TResult? Function(int productId)? getProductById,
    TResult? Function(int productId)? deleteProductByid,
  }) {
    return deleteProductByid?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddproductModel productModel)? addProductEvent,
    TResult Function()? getAllProductEvent,
    TResult Function(int productId)? getProductById,
    TResult Function(int productId)? deleteProductByid,
    required TResult orElse(),
  }) {
    if (deleteProductByid != null) {
      return deleteProductByid(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddproductEvent value) addProductEvent,
    required TResult Function(_GetAllProductEvent value) getAllProductEvent,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_DeleteProductById value) deleteProductByid,
  }) {
    return deleteProductByid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddproductEvent value)? addProductEvent,
    TResult? Function(_GetAllProductEvent value)? getAllProductEvent,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_DeleteProductById value)? deleteProductByid,
  }) {
    return deleteProductByid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddproductEvent value)? addProductEvent,
    TResult Function(_GetAllProductEvent value)? getAllProductEvent,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_DeleteProductById value)? deleteProductByid,
    required TResult orElse(),
  }) {
    if (deleteProductByid != null) {
      return deleteProductByid(this);
    }
    return orElse();
  }
}

abstract class _DeleteProductById implements ProductEvent {
  const factory _DeleteProductById({required final int productId}) =
      _$DeleteProductByIdImpl;

  int get productId;
  @JsonKey(ignore: true)
  _$$DeleteProductByIdImplCopyWith<_$DeleteProductByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isAddProductHasError => throw _privateConstructorUsedError;
  bool get isAddProductSuccess => throw _privateConstructorUsedError;
  bool get isGetAllProductHasError => throw _privateConstructorUsedError;
  bool get isGetAllProductSuccess => throw _privateConstructorUsedError;
  bool get isGetProductByIdHasErro => throw _privateConstructorUsedError;
  bool get isGetProductByIdSuccess => throw _privateConstructorUsedError;
  bool get isDeleteProductByIdhasError => throw _privateConstructorUsedError;
  bool get isDeleteProductByIdsuccess => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  AddProductResponseModel? get addproductResponse =>
      throw _privateConstructorUsedError;
  GetProductById? get getProductByIdResponseModel =>
      throw _privateConstructorUsedError;
  List<Products>? get prouctModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isAddProductHasError,
      bool isAddProductSuccess,
      bool isGetAllProductHasError,
      bool isGetAllProductSuccess,
      bool isGetProductByIdHasErro,
      bool isGetProductByIdSuccess,
      bool isDeleteProductByIdhasError,
      bool isDeleteProductByIdsuccess,
      String? message,
      AddProductResponseModel? addproductResponse,
      GetProductById? getProductByIdResponseModel,
      List<Products>? prouctModel});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isAddProductHasError = null,
    Object? isAddProductSuccess = null,
    Object? isGetAllProductHasError = null,
    Object? isGetAllProductSuccess = null,
    Object? isGetProductByIdHasErro = null,
    Object? isGetProductByIdSuccess = null,
    Object? isDeleteProductByIdhasError = null,
    Object? isDeleteProductByIdsuccess = null,
    Object? message = freezed,
    Object? addproductResponse = freezed,
    Object? getProductByIdResponseModel = freezed,
    Object? prouctModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddProductHasError: null == isAddProductHasError
          ? _value.isAddProductHasError
          : isAddProductHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddProductSuccess: null == isAddProductSuccess
          ? _value.isAddProductSuccess
          : isAddProductSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetAllProductHasError: null == isGetAllProductHasError
          ? _value.isGetAllProductHasError
          : isGetAllProductHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetAllProductSuccess: null == isGetAllProductSuccess
          ? _value.isGetAllProductSuccess
          : isGetAllProductSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetProductByIdHasErro: null == isGetProductByIdHasErro
          ? _value.isGetProductByIdHasErro
          : isGetProductByIdHasErro // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetProductByIdSuccess: null == isGetProductByIdSuccess
          ? _value.isGetProductByIdSuccess
          : isGetProductByIdSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteProductByIdhasError: null == isDeleteProductByIdhasError
          ? _value.isDeleteProductByIdhasError
          : isDeleteProductByIdhasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteProductByIdsuccess: null == isDeleteProductByIdsuccess
          ? _value.isDeleteProductByIdsuccess
          : isDeleteProductByIdsuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      addproductResponse: freezed == addproductResponse
          ? _value.addproductResponse
          : addproductResponse // ignore: cast_nullable_to_non_nullable
              as AddProductResponseModel?,
      getProductByIdResponseModel: freezed == getProductByIdResponseModel
          ? _value.getProductByIdResponseModel
          : getProductByIdResponseModel // ignore: cast_nullable_to_non_nullable
              as GetProductById?,
      prouctModel: freezed == prouctModel
          ? _value.prouctModel
          : prouctModel // ignore: cast_nullable_to_non_nullable
              as List<Products>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductStateImplCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$ProductStateImplCopyWith(
          _$ProductStateImpl value, $Res Function(_$ProductStateImpl) then) =
      __$$ProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isAddProductHasError,
      bool isAddProductSuccess,
      bool isGetAllProductHasError,
      bool isGetAllProductSuccess,
      bool isGetProductByIdHasErro,
      bool isGetProductByIdSuccess,
      bool isDeleteProductByIdhasError,
      bool isDeleteProductByIdsuccess,
      String? message,
      AddProductResponseModel? addproductResponse,
      GetProductById? getProductByIdResponseModel,
      List<Products>? prouctModel});
}

/// @nodoc
class __$$ProductStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateImpl>
    implements _$$ProductStateImplCopyWith<$Res> {
  __$$ProductStateImplCopyWithImpl(
      _$ProductStateImpl _value, $Res Function(_$ProductStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isAddProductHasError = null,
    Object? isAddProductSuccess = null,
    Object? isGetAllProductHasError = null,
    Object? isGetAllProductSuccess = null,
    Object? isGetProductByIdHasErro = null,
    Object? isGetProductByIdSuccess = null,
    Object? isDeleteProductByIdhasError = null,
    Object? isDeleteProductByIdsuccess = null,
    Object? message = freezed,
    Object? addproductResponse = freezed,
    Object? getProductByIdResponseModel = freezed,
    Object? prouctModel = freezed,
  }) {
    return _then(_$ProductStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddProductHasError: null == isAddProductHasError
          ? _value.isAddProductHasError
          : isAddProductHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddProductSuccess: null == isAddProductSuccess
          ? _value.isAddProductSuccess
          : isAddProductSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetAllProductHasError: null == isGetAllProductHasError
          ? _value.isGetAllProductHasError
          : isGetAllProductHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetAllProductSuccess: null == isGetAllProductSuccess
          ? _value.isGetAllProductSuccess
          : isGetAllProductSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetProductByIdHasErro: null == isGetProductByIdHasErro
          ? _value.isGetProductByIdHasErro
          : isGetProductByIdHasErro // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetProductByIdSuccess: null == isGetProductByIdSuccess
          ? _value.isGetProductByIdSuccess
          : isGetProductByIdSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteProductByIdhasError: null == isDeleteProductByIdhasError
          ? _value.isDeleteProductByIdhasError
          : isDeleteProductByIdhasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteProductByIdsuccess: null == isDeleteProductByIdsuccess
          ? _value.isDeleteProductByIdsuccess
          : isDeleteProductByIdsuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      addproductResponse: freezed == addproductResponse
          ? _value.addproductResponse
          : addproductResponse // ignore: cast_nullable_to_non_nullable
              as AddProductResponseModel?,
      getProductByIdResponseModel: freezed == getProductByIdResponseModel
          ? _value.getProductByIdResponseModel
          : getProductByIdResponseModel // ignore: cast_nullable_to_non_nullable
              as GetProductById?,
      prouctModel: freezed == prouctModel
          ? _value._prouctModel
          : prouctModel // ignore: cast_nullable_to_non_nullable
              as List<Products>?,
    ));
  }
}

/// @nodoc

class _$ProductStateImpl implements _ProductState {
  const _$ProductStateImpl(
      {required this.isLoading,
      required this.isAddProductHasError,
      required this.isAddProductSuccess,
      required this.isGetAllProductHasError,
      required this.isGetAllProductSuccess,
      required this.isGetProductByIdHasErro,
      required this.isGetProductByIdSuccess,
      required this.isDeleteProductByIdhasError,
      required this.isDeleteProductByIdsuccess,
      this.message,
      this.addproductResponse,
      this.getProductByIdResponseModel,
      final List<Products>? prouctModel})
      : _prouctModel = prouctModel;

  @override
  final bool isLoading;
  @override
  final bool isAddProductHasError;
  @override
  final bool isAddProductSuccess;
  @override
  final bool isGetAllProductHasError;
  @override
  final bool isGetAllProductSuccess;
  @override
  final bool isGetProductByIdHasErro;
  @override
  final bool isGetProductByIdSuccess;
  @override
  final bool isDeleteProductByIdhasError;
  @override
  final bool isDeleteProductByIdsuccess;
  @override
  final String? message;
  @override
  final AddProductResponseModel? addproductResponse;
  @override
  final GetProductById? getProductByIdResponseModel;
  final List<Products>? _prouctModel;
  @override
  List<Products>? get prouctModel {
    final value = _prouctModel;
    if (value == null) return null;
    if (_prouctModel is EqualUnmodifiableListView) return _prouctModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductState(isLoading: $isLoading, isAddProductHasError: $isAddProductHasError, isAddProductSuccess: $isAddProductSuccess, isGetAllProductHasError: $isGetAllProductHasError, isGetAllProductSuccess: $isGetAllProductSuccess, isGetProductByIdHasErro: $isGetProductByIdHasErro, isGetProductByIdSuccess: $isGetProductByIdSuccess, isDeleteProductByIdhasError: $isDeleteProductByIdhasError, isDeleteProductByIdsuccess: $isDeleteProductByIdsuccess, message: $message, addproductResponse: $addproductResponse, getProductByIdResponseModel: $getProductByIdResponseModel, prouctModel: $prouctModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isAddProductHasError, isAddProductHasError) ||
                other.isAddProductHasError == isAddProductHasError) &&
            (identical(other.isAddProductSuccess, isAddProductSuccess) ||
                other.isAddProductSuccess == isAddProductSuccess) &&
            (identical(other.isGetAllProductHasError, isGetAllProductHasError) ||
                other.isGetAllProductHasError == isGetAllProductHasError) &&
            (identical(other.isGetAllProductSuccess, isGetAllProductSuccess) ||
                other.isGetAllProductSuccess == isGetAllProductSuccess) &&
            (identical(
                    other.isGetProductByIdHasErro, isGetProductByIdHasErro) ||
                other.isGetProductByIdHasErro == isGetProductByIdHasErro) &&
            (identical(
                    other.isGetProductByIdSuccess, isGetProductByIdSuccess) ||
                other.isGetProductByIdSuccess == isGetProductByIdSuccess) &&
            (identical(other.isDeleteProductByIdhasError,
                    isDeleteProductByIdhasError) ||
                other.isDeleteProductByIdhasError ==
                    isDeleteProductByIdhasError) &&
            (identical(other.isDeleteProductByIdsuccess,
                    isDeleteProductByIdsuccess) ||
                other.isDeleteProductByIdsuccess ==
                    isDeleteProductByIdsuccess) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.addproductResponse, addproductResponse) ||
                other.addproductResponse == addproductResponse) &&
            (identical(other.getProductByIdResponseModel,
                    getProductByIdResponseModel) ||
                other.getProductByIdResponseModel ==
                    getProductByIdResponseModel) &&
            const DeepCollectionEquality()
                .equals(other._prouctModel, _prouctModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isAddProductHasError,
      isAddProductSuccess,
      isGetAllProductHasError,
      isGetAllProductSuccess,
      isGetProductByIdHasErro,
      isGetProductByIdSuccess,
      isDeleteProductByIdhasError,
      isDeleteProductByIdsuccess,
      message,
      addproductResponse,
      getProductByIdResponseModel,
      const DeepCollectionEquality().hash(_prouctModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      __$$ProductStateImplCopyWithImpl<_$ProductStateImpl>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {required final bool isLoading,
      required final bool isAddProductHasError,
      required final bool isAddProductSuccess,
      required final bool isGetAllProductHasError,
      required final bool isGetAllProductSuccess,
      required final bool isGetProductByIdHasErro,
      required final bool isGetProductByIdSuccess,
      required final bool isDeleteProductByIdhasError,
      required final bool isDeleteProductByIdsuccess,
      final String? message,
      final AddProductResponseModel? addproductResponse,
      final GetProductById? getProductByIdResponseModel,
      final List<Products>? prouctModel}) = _$ProductStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isAddProductHasError;
  @override
  bool get isAddProductSuccess;
  @override
  bool get isGetAllProductHasError;
  @override
  bool get isGetAllProductSuccess;
  @override
  bool get isGetProductByIdHasErro;
  @override
  bool get isGetProductByIdSuccess;
  @override
  bool get isDeleteProductByIdhasError;
  @override
  bool get isDeleteProductByIdsuccess;
  @override
  String? get message;
  @override
  AddProductResponseModel? get addproductResponse;
  @override
  GetProductById? get getProductByIdResponseModel;
  @override
  List<Products>? get prouctModel;
  @override
  @JsonKey(ignore: true)
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
