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
    required TResult Function(int productId) deleteProductByid,
    required TResult Function(AddproductModel productModel, int productId)
        editProductById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddproductModel productModel)? addProductEvent,
    TResult? Function()? getAllProductEvent,
    TResult? Function(int productId)? deleteProductByid,
    TResult? Function(AddproductModel productModel, int productId)?
        editProductById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddproductModel productModel)? addProductEvent,
    TResult Function()? getAllProductEvent,
    TResult Function(int productId)? deleteProductByid,
    TResult Function(AddproductModel productModel, int productId)?
        editProductById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddproductEvent value) addProductEvent,
    required TResult Function(_GetAllProductEvent value) getAllProductEvent,
    required TResult Function(_DeleteProductById value) deleteProductByid,
    required TResult Function(_EditProductEvent value) editProductById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddproductEvent value)? addProductEvent,
    TResult? Function(_GetAllProductEvent value)? getAllProductEvent,
    TResult? Function(_DeleteProductById value)? deleteProductByid,
    TResult? Function(_EditProductEvent value)? editProductById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddproductEvent value)? addProductEvent,
    TResult Function(_GetAllProductEvent value)? getAllProductEvent,
    TResult Function(_DeleteProductById value)? deleteProductByid,
    TResult Function(_EditProductEvent value)? editProductById,
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
    required TResult Function(int productId) deleteProductByid,
    required TResult Function(AddproductModel productModel, int productId)
        editProductById,
  }) {
    return addProductEvent(productModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddproductModel productModel)? addProductEvent,
    TResult? Function()? getAllProductEvent,
    TResult? Function(int productId)? deleteProductByid,
    TResult? Function(AddproductModel productModel, int productId)?
        editProductById,
  }) {
    return addProductEvent?.call(productModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddproductModel productModel)? addProductEvent,
    TResult Function()? getAllProductEvent,
    TResult Function(int productId)? deleteProductByid,
    TResult Function(AddproductModel productModel, int productId)?
        editProductById,
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
    required TResult Function(_DeleteProductById value) deleteProductByid,
    required TResult Function(_EditProductEvent value) editProductById,
  }) {
    return addProductEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddproductEvent value)? addProductEvent,
    TResult? Function(_GetAllProductEvent value)? getAllProductEvent,
    TResult? Function(_DeleteProductById value)? deleteProductByid,
    TResult? Function(_EditProductEvent value)? editProductById,
  }) {
    return addProductEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddproductEvent value)? addProductEvent,
    TResult Function(_GetAllProductEvent value)? getAllProductEvent,
    TResult Function(_DeleteProductById value)? deleteProductByid,
    TResult Function(_EditProductEvent value)? editProductById,
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
    required TResult Function(int productId) deleteProductByid,
    required TResult Function(AddproductModel productModel, int productId)
        editProductById,
  }) {
    return getAllProductEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddproductModel productModel)? addProductEvent,
    TResult? Function()? getAllProductEvent,
    TResult? Function(int productId)? deleteProductByid,
    TResult? Function(AddproductModel productModel, int productId)?
        editProductById,
  }) {
    return getAllProductEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddproductModel productModel)? addProductEvent,
    TResult Function()? getAllProductEvent,
    TResult Function(int productId)? deleteProductByid,
    TResult Function(AddproductModel productModel, int productId)?
        editProductById,
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
    required TResult Function(_DeleteProductById value) deleteProductByid,
    required TResult Function(_EditProductEvent value) editProductById,
  }) {
    return getAllProductEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddproductEvent value)? addProductEvent,
    TResult? Function(_GetAllProductEvent value)? getAllProductEvent,
    TResult? Function(_DeleteProductById value)? deleteProductByid,
    TResult? Function(_EditProductEvent value)? editProductById,
  }) {
    return getAllProductEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddproductEvent value)? addProductEvent,
    TResult Function(_GetAllProductEvent value)? getAllProductEvent,
    TResult Function(_DeleteProductById value)? deleteProductByid,
    TResult Function(_EditProductEvent value)? editProductById,
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
    required TResult Function(int productId) deleteProductByid,
    required TResult Function(AddproductModel productModel, int productId)
        editProductById,
  }) {
    return deleteProductByid(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddproductModel productModel)? addProductEvent,
    TResult? Function()? getAllProductEvent,
    TResult? Function(int productId)? deleteProductByid,
    TResult? Function(AddproductModel productModel, int productId)?
        editProductById,
  }) {
    return deleteProductByid?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddproductModel productModel)? addProductEvent,
    TResult Function()? getAllProductEvent,
    TResult Function(int productId)? deleteProductByid,
    TResult Function(AddproductModel productModel, int productId)?
        editProductById,
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
    required TResult Function(_DeleteProductById value) deleteProductByid,
    required TResult Function(_EditProductEvent value) editProductById,
  }) {
    return deleteProductByid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddproductEvent value)? addProductEvent,
    TResult? Function(_GetAllProductEvent value)? getAllProductEvent,
    TResult? Function(_DeleteProductById value)? deleteProductByid,
    TResult? Function(_EditProductEvent value)? editProductById,
  }) {
    return deleteProductByid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddproductEvent value)? addProductEvent,
    TResult Function(_GetAllProductEvent value)? getAllProductEvent,
    TResult Function(_DeleteProductById value)? deleteProductByid,
    TResult Function(_EditProductEvent value)? editProductById,
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
abstract class _$$EditProductEventImplCopyWith<$Res> {
  factory _$$EditProductEventImplCopyWith(_$EditProductEventImpl value,
          $Res Function(_$EditProductEventImpl) then) =
      __$$EditProductEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddproductModel productModel, int productId});
}

/// @nodoc
class __$$EditProductEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$EditProductEventImpl>
    implements _$$EditProductEventImplCopyWith<$Res> {
  __$$EditProductEventImplCopyWithImpl(_$EditProductEventImpl _value,
      $Res Function(_$EditProductEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productModel = null,
    Object? productId = null,
  }) {
    return _then(_$EditProductEventImpl(
      productModel: null == productModel
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as AddproductModel,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EditProductEventImpl implements _EditProductEvent {
  const _$EditProductEventImpl(
      {required this.productModel, required this.productId});

  @override
  final AddproductModel productModel;
  @override
  final int productId;

  @override
  String toString() {
    return 'ProductEvent.editProductById(productModel: $productModel, productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProductEventImpl &&
            (identical(other.productModel, productModel) ||
                other.productModel == productModel) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productModel, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProductEventImplCopyWith<_$EditProductEventImpl> get copyWith =>
      __$$EditProductEventImplCopyWithImpl<_$EditProductEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddproductModel productModel) addProductEvent,
    required TResult Function() getAllProductEvent,
    required TResult Function(int productId) deleteProductByid,
    required TResult Function(AddproductModel productModel, int productId)
        editProductById,
  }) {
    return editProductById(productModel, productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddproductModel productModel)? addProductEvent,
    TResult? Function()? getAllProductEvent,
    TResult? Function(int productId)? deleteProductByid,
    TResult? Function(AddproductModel productModel, int productId)?
        editProductById,
  }) {
    return editProductById?.call(productModel, productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddproductModel productModel)? addProductEvent,
    TResult Function()? getAllProductEvent,
    TResult Function(int productId)? deleteProductByid,
    TResult Function(AddproductModel productModel, int productId)?
        editProductById,
    required TResult orElse(),
  }) {
    if (editProductById != null) {
      return editProductById(productModel, productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddproductEvent value) addProductEvent,
    required TResult Function(_GetAllProductEvent value) getAllProductEvent,
    required TResult Function(_DeleteProductById value) deleteProductByid,
    required TResult Function(_EditProductEvent value) editProductById,
  }) {
    return editProductById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddproductEvent value)? addProductEvent,
    TResult? Function(_GetAllProductEvent value)? getAllProductEvent,
    TResult? Function(_DeleteProductById value)? deleteProductByid,
    TResult? Function(_EditProductEvent value)? editProductById,
  }) {
    return editProductById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddproductEvent value)? addProductEvent,
    TResult Function(_GetAllProductEvent value)? getAllProductEvent,
    TResult Function(_DeleteProductById value)? deleteProductByid,
    TResult Function(_EditProductEvent value)? editProductById,
    required TResult orElse(),
  }) {
    if (editProductById != null) {
      return editProductById(this);
    }
    return orElse();
  }
}

abstract class _EditProductEvent implements ProductEvent {
  const factory _EditProductEvent(
      {required final AddproductModel productModel,
      required final int productId}) = _$EditProductEventImpl;

  AddproductModel get productModel;
  int get productId;
  @JsonKey(ignore: true)
  _$$EditProductEventImplCopyWith<_$EditProductEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errmsg) erorrst,
    required TResult Function(List<Products> products) success,
    required TResult Function(String successmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function() addLoading,
    required TResult Function(String successmsg) deleteSuccess,
    required TResult Function(String errormsg) deleteFailure,
    required TResult Function(String successmsg) editProductByIdSuccess,
    required TResult Function(String errmsg) editProductByIdFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errmsg)? erorrst,
    TResult? Function(List<Products> products)? success,
    TResult? Function(String successmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function()? addLoading,
    TResult? Function(String successmsg)? deleteSuccess,
    TResult? Function(String errormsg)? deleteFailure,
    TResult? Function(String successmsg)? editProductByIdSuccess,
    TResult? Function(String errmsg)? editProductByIdFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errmsg)? erorrst,
    TResult Function(List<Products> products)? success,
    TResult Function(String successmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function()? addLoading,
    TResult Function(String successmsg)? deleteSuccess,
    TResult Function(String errormsg)? deleteFailure,
    TResult Function(String successmsg)? editProductByIdSuccess,
    TResult Function(String errmsg)? editProductByIdFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Errorst value) erorrst,
    required TResult Function(Success value) success,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(AddLoading value) addLoading,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(EditProductByIdSuccess value)
        editProductByIdSuccess,
    required TResult Function(EditProductByIdFailure value)
        editProductByIdFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Errorst value)? erorrst,
    TResult? Function(Success value)? success,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(AddLoading value)? addLoading,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult? Function(EditProductByIdFailure value)? editProductByIdFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Errorst value)? erorrst,
    TResult Function(Success value)? success,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(AddLoading value)? addLoading,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult Function(EditProductByIdFailure value)? editProductByIdFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

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
    extends _$ProductStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ProductState.initial()';
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
    required TResult Function(String errmsg) erorrst,
    required TResult Function(List<Products> products) success,
    required TResult Function(String successmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function() addLoading,
    required TResult Function(String successmsg) deleteSuccess,
    required TResult Function(String errormsg) deleteFailure,
    required TResult Function(String successmsg) editProductByIdSuccess,
    required TResult Function(String errmsg) editProductByIdFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errmsg)? erorrst,
    TResult? Function(List<Products> products)? success,
    TResult? Function(String successmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function()? addLoading,
    TResult? Function(String successmsg)? deleteSuccess,
    TResult? Function(String errormsg)? deleteFailure,
    TResult? Function(String successmsg)? editProductByIdSuccess,
    TResult? Function(String errmsg)? editProductByIdFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errmsg)? erorrst,
    TResult Function(List<Products> products)? success,
    TResult Function(String successmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function()? addLoading,
    TResult Function(String successmsg)? deleteSuccess,
    TResult Function(String errormsg)? deleteFailure,
    TResult Function(String successmsg)? editProductByIdSuccess,
    TResult Function(String errmsg)? editProductByIdFailure,
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
    required TResult Function(Errorst value) erorrst,
    required TResult Function(Success value) success,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(AddLoading value) addLoading,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(EditProductByIdSuccess value)
        editProductByIdSuccess,
    required TResult Function(EditProductByIdFailure value)
        editProductByIdFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Errorst value)? erorrst,
    TResult? Function(Success value)? success,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(AddLoading value)? addLoading,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult? Function(EditProductByIdFailure value)? editProductByIdFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Errorst value)? erorrst,
    TResult Function(Success value)? success,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(AddLoading value)? addLoading,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult Function(EditProductByIdFailure value)? editProductByIdFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProductState {
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
    extends _$ProductStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'ProductState.loading()';
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
    required TResult Function(String errmsg) erorrst,
    required TResult Function(List<Products> products) success,
    required TResult Function(String successmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function() addLoading,
    required TResult Function(String successmsg) deleteSuccess,
    required TResult Function(String errormsg) deleteFailure,
    required TResult Function(String successmsg) editProductByIdSuccess,
    required TResult Function(String errmsg) editProductByIdFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errmsg)? erorrst,
    TResult? Function(List<Products> products)? success,
    TResult? Function(String successmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function()? addLoading,
    TResult? Function(String successmsg)? deleteSuccess,
    TResult? Function(String errormsg)? deleteFailure,
    TResult? Function(String successmsg)? editProductByIdSuccess,
    TResult? Function(String errmsg)? editProductByIdFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errmsg)? erorrst,
    TResult Function(List<Products> products)? success,
    TResult Function(String successmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function()? addLoading,
    TResult Function(String successmsg)? deleteSuccess,
    TResult Function(String errormsg)? deleteFailure,
    TResult Function(String successmsg)? editProductByIdSuccess,
    TResult Function(String errmsg)? editProductByIdFailure,
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
    required TResult Function(Errorst value) erorrst,
    required TResult Function(Success value) success,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(AddLoading value) addLoading,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(EditProductByIdSuccess value)
        editProductByIdSuccess,
    required TResult Function(EditProductByIdFailure value)
        editProductByIdFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Errorst value)? erorrst,
    TResult? Function(Success value)? success,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(AddLoading value)? addLoading,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult? Function(EditProductByIdFailure value)? editProductByIdFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Errorst value)? erorrst,
    TResult Function(Success value)? success,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(AddLoading value)? addLoading,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult Function(EditProductByIdFailure value)? editProductByIdFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ProductState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorstImplCopyWith<$Res> {
  factory _$$ErrorstImplCopyWith(
          _$ErrorstImpl value, $Res Function(_$ErrorstImpl) then) =
      __$$ErrorstImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errmsg});
}

/// @nodoc
class __$$ErrorstImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ErrorstImpl>
    implements _$$ErrorstImplCopyWith<$Res> {
  __$$ErrorstImplCopyWithImpl(
      _$ErrorstImpl _value, $Res Function(_$ErrorstImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errmsg = null,
  }) {
    return _then(_$ErrorstImpl(
      null == errmsg
          ? _value.errmsg
          : errmsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorstImpl implements Errorst {
  const _$ErrorstImpl(this.errmsg);

  @override
  final String errmsg;

  @override
  String toString() {
    return 'ProductState.erorrst(errmsg: $errmsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorstImpl &&
            (identical(other.errmsg, errmsg) || other.errmsg == errmsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errmsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorstImplCopyWith<_$ErrorstImpl> get copyWith =>
      __$$ErrorstImplCopyWithImpl<_$ErrorstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errmsg) erorrst,
    required TResult Function(List<Products> products) success,
    required TResult Function(String successmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function() addLoading,
    required TResult Function(String successmsg) deleteSuccess,
    required TResult Function(String errormsg) deleteFailure,
    required TResult Function(String successmsg) editProductByIdSuccess,
    required TResult Function(String errmsg) editProductByIdFailure,
  }) {
    return erorrst(errmsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errmsg)? erorrst,
    TResult? Function(List<Products> products)? success,
    TResult? Function(String successmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function()? addLoading,
    TResult? Function(String successmsg)? deleteSuccess,
    TResult? Function(String errormsg)? deleteFailure,
    TResult? Function(String successmsg)? editProductByIdSuccess,
    TResult? Function(String errmsg)? editProductByIdFailure,
  }) {
    return erorrst?.call(errmsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errmsg)? erorrst,
    TResult Function(List<Products> products)? success,
    TResult Function(String successmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function()? addLoading,
    TResult Function(String successmsg)? deleteSuccess,
    TResult Function(String errormsg)? deleteFailure,
    TResult Function(String successmsg)? editProductByIdSuccess,
    TResult Function(String errmsg)? editProductByIdFailure,
    required TResult orElse(),
  }) {
    if (erorrst != null) {
      return erorrst(errmsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Errorst value) erorrst,
    required TResult Function(Success value) success,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(AddLoading value) addLoading,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(EditProductByIdSuccess value)
        editProductByIdSuccess,
    required TResult Function(EditProductByIdFailure value)
        editProductByIdFailure,
  }) {
    return erorrst(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Errorst value)? erorrst,
    TResult? Function(Success value)? success,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(AddLoading value)? addLoading,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult? Function(EditProductByIdFailure value)? editProductByIdFailure,
  }) {
    return erorrst?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Errorst value)? erorrst,
    TResult Function(Success value)? success,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(AddLoading value)? addLoading,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult Function(EditProductByIdFailure value)? editProductByIdFailure,
    required TResult orElse(),
  }) {
    if (erorrst != null) {
      return erorrst(this);
    }
    return orElse();
  }
}

abstract class Errorst implements ProductState {
  const factory Errorst(final String errmsg) = _$ErrorstImpl;

  String get errmsg;
  @JsonKey(ignore: true)
  _$$ErrorstImplCopyWith<_$ErrorstImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Products> products});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$SuccessImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Products>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl(final List<Products> products) : _products = products;

  final List<Products> _products;
  @override
  List<Products> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductState.success(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

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
    required TResult Function(String errmsg) erorrst,
    required TResult Function(List<Products> products) success,
    required TResult Function(String successmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function() addLoading,
    required TResult Function(String successmsg) deleteSuccess,
    required TResult Function(String errormsg) deleteFailure,
    required TResult Function(String successmsg) editProductByIdSuccess,
    required TResult Function(String errmsg) editProductByIdFailure,
  }) {
    return success(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errmsg)? erorrst,
    TResult? Function(List<Products> products)? success,
    TResult? Function(String successmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function()? addLoading,
    TResult? Function(String successmsg)? deleteSuccess,
    TResult? Function(String errormsg)? deleteFailure,
    TResult? Function(String successmsg)? editProductByIdSuccess,
    TResult? Function(String errmsg)? editProductByIdFailure,
  }) {
    return success?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errmsg)? erorrst,
    TResult Function(List<Products> products)? success,
    TResult Function(String successmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function()? addLoading,
    TResult Function(String successmsg)? deleteSuccess,
    TResult Function(String errormsg)? deleteFailure,
    TResult Function(String successmsg)? editProductByIdSuccess,
    TResult Function(String errmsg)? editProductByIdFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Errorst value) erorrst,
    required TResult Function(Success value) success,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(AddLoading value) addLoading,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(EditProductByIdSuccess value)
        editProductByIdSuccess,
    required TResult Function(EditProductByIdFailure value)
        editProductByIdFailure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Errorst value)? erorrst,
    TResult? Function(Success value)? success,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(AddLoading value)? addLoading,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult? Function(EditProductByIdFailure value)? editProductByIdFailure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Errorst value)? erorrst,
    TResult Function(Success value)? success,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(AddLoading value)? addLoading,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult Function(EditProductByIdFailure value)? editProductByIdFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements ProductState {
  const factory Success(final List<Products> products) = _$SuccessImpl;

  List<Products> get products;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSuccessImplCopyWith<$Res> {
  factory _$$AddSuccessImplCopyWith(
          _$AddSuccessImpl value, $Res Function(_$AddSuccessImpl) then) =
      __$$AddSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String successmsg});
}

/// @nodoc
class __$$AddSuccessImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$AddSuccessImpl>
    implements _$$AddSuccessImplCopyWith<$Res> {
  __$$AddSuccessImplCopyWithImpl(
      _$AddSuccessImpl _value, $Res Function(_$AddSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successmsg = null,
  }) {
    return _then(_$AddSuccessImpl(
      null == successmsg
          ? _value.successmsg
          : successmsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddSuccessImpl implements AddSuccess {
  const _$AddSuccessImpl(this.successmsg);

  @override
  final String successmsg;

  @override
  String toString() {
    return 'ProductState.addSuccess(successmsg: $successmsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSuccessImpl &&
            (identical(other.successmsg, successmsg) ||
                other.successmsg == successmsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successmsg);

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
    required TResult Function(String errmsg) erorrst,
    required TResult Function(List<Products> products) success,
    required TResult Function(String successmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function() addLoading,
    required TResult Function(String successmsg) deleteSuccess,
    required TResult Function(String errormsg) deleteFailure,
    required TResult Function(String successmsg) editProductByIdSuccess,
    required TResult Function(String errmsg) editProductByIdFailure,
  }) {
    return addSuccess(successmsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errmsg)? erorrst,
    TResult? Function(List<Products> products)? success,
    TResult? Function(String successmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function()? addLoading,
    TResult? Function(String successmsg)? deleteSuccess,
    TResult? Function(String errormsg)? deleteFailure,
    TResult? Function(String successmsg)? editProductByIdSuccess,
    TResult? Function(String errmsg)? editProductByIdFailure,
  }) {
    return addSuccess?.call(successmsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errmsg)? erorrst,
    TResult Function(List<Products> products)? success,
    TResult Function(String successmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function()? addLoading,
    TResult Function(String successmsg)? deleteSuccess,
    TResult Function(String errormsg)? deleteFailure,
    TResult Function(String successmsg)? editProductByIdSuccess,
    TResult Function(String errmsg)? editProductByIdFailure,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess(successmsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Errorst value) erorrst,
    required TResult Function(Success value) success,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(AddLoading value) addLoading,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(EditProductByIdSuccess value)
        editProductByIdSuccess,
    required TResult Function(EditProductByIdFailure value)
        editProductByIdFailure,
  }) {
    return addSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Errorst value)? erorrst,
    TResult? Function(Success value)? success,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(AddLoading value)? addLoading,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult? Function(EditProductByIdFailure value)? editProductByIdFailure,
  }) {
    return addSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Errorst value)? erorrst,
    TResult Function(Success value)? success,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(AddLoading value)? addLoading,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult Function(EditProductByIdFailure value)? editProductByIdFailure,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess(this);
    }
    return orElse();
  }
}

abstract class AddSuccess implements ProductState {
  const factory AddSuccess(final String successmsg) = _$AddSuccessImpl;

  String get successmsg;
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
    extends _$ProductStateCopyWithImpl<$Res, _$AddFailureImpl>
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
    return 'ProductState.addFailure(failuremsg: $failuremsg)';
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
    required TResult Function(String errmsg) erorrst,
    required TResult Function(List<Products> products) success,
    required TResult Function(String successmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function() addLoading,
    required TResult Function(String successmsg) deleteSuccess,
    required TResult Function(String errormsg) deleteFailure,
    required TResult Function(String successmsg) editProductByIdSuccess,
    required TResult Function(String errmsg) editProductByIdFailure,
  }) {
    return addFailure(failuremsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errmsg)? erorrst,
    TResult? Function(List<Products> products)? success,
    TResult? Function(String successmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function()? addLoading,
    TResult? Function(String successmsg)? deleteSuccess,
    TResult? Function(String errormsg)? deleteFailure,
    TResult? Function(String successmsg)? editProductByIdSuccess,
    TResult? Function(String errmsg)? editProductByIdFailure,
  }) {
    return addFailure?.call(failuremsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errmsg)? erorrst,
    TResult Function(List<Products> products)? success,
    TResult Function(String successmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function()? addLoading,
    TResult Function(String successmsg)? deleteSuccess,
    TResult Function(String errormsg)? deleteFailure,
    TResult Function(String successmsg)? editProductByIdSuccess,
    TResult Function(String errmsg)? editProductByIdFailure,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Errorst value) erorrst,
    required TResult Function(Success value) success,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(AddLoading value) addLoading,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(EditProductByIdSuccess value)
        editProductByIdSuccess,
    required TResult Function(EditProductByIdFailure value)
        editProductByIdFailure,
  }) {
    return addFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Errorst value)? erorrst,
    TResult? Function(Success value)? success,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(AddLoading value)? addLoading,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult? Function(EditProductByIdFailure value)? editProductByIdFailure,
  }) {
    return addFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Errorst value)? erorrst,
    TResult Function(Success value)? success,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(AddLoading value)? addLoading,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult Function(EditProductByIdFailure value)? editProductByIdFailure,
    required TResult orElse(),
  }) {
    if (addFailure != null) {
      return addFailure(this);
    }
    return orElse();
  }
}

abstract class AddFailure implements ProductState {
  const factory AddFailure(final String failuremsg) = _$AddFailureImpl;

  String get failuremsg;
  @JsonKey(ignore: true)
  _$$AddFailureImplCopyWith<_$AddFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddLoadingImplCopyWith<$Res> {
  factory _$$AddLoadingImplCopyWith(
          _$AddLoadingImpl value, $Res Function(_$AddLoadingImpl) then) =
      __$$AddLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddLoadingImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$AddLoadingImpl>
    implements _$$AddLoadingImplCopyWith<$Res> {
  __$$AddLoadingImplCopyWithImpl(
      _$AddLoadingImpl _value, $Res Function(_$AddLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddLoadingImpl implements AddLoading {
  const _$AddLoadingImpl();

  @override
  String toString() {
    return 'ProductState.addLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errmsg) erorrst,
    required TResult Function(List<Products> products) success,
    required TResult Function(String successmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function() addLoading,
    required TResult Function(String successmsg) deleteSuccess,
    required TResult Function(String errormsg) deleteFailure,
    required TResult Function(String successmsg) editProductByIdSuccess,
    required TResult Function(String errmsg) editProductByIdFailure,
  }) {
    return addLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errmsg)? erorrst,
    TResult? Function(List<Products> products)? success,
    TResult? Function(String successmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function()? addLoading,
    TResult? Function(String successmsg)? deleteSuccess,
    TResult? Function(String errormsg)? deleteFailure,
    TResult? Function(String successmsg)? editProductByIdSuccess,
    TResult? Function(String errmsg)? editProductByIdFailure,
  }) {
    return addLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errmsg)? erorrst,
    TResult Function(List<Products> products)? success,
    TResult Function(String successmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function()? addLoading,
    TResult Function(String successmsg)? deleteSuccess,
    TResult Function(String errormsg)? deleteFailure,
    TResult Function(String successmsg)? editProductByIdSuccess,
    TResult Function(String errmsg)? editProductByIdFailure,
    required TResult orElse(),
  }) {
    if (addLoading != null) {
      return addLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Errorst value) erorrst,
    required TResult Function(Success value) success,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(AddLoading value) addLoading,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(EditProductByIdSuccess value)
        editProductByIdSuccess,
    required TResult Function(EditProductByIdFailure value)
        editProductByIdFailure,
  }) {
    return addLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Errorst value)? erorrst,
    TResult? Function(Success value)? success,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(AddLoading value)? addLoading,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult? Function(EditProductByIdFailure value)? editProductByIdFailure,
  }) {
    return addLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Errorst value)? erorrst,
    TResult Function(Success value)? success,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(AddLoading value)? addLoading,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult Function(EditProductByIdFailure value)? editProductByIdFailure,
    required TResult orElse(),
  }) {
    if (addLoading != null) {
      return addLoading(this);
    }
    return orElse();
  }
}

abstract class AddLoading implements ProductState {
  const factory AddLoading() = _$AddLoadingImpl;
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
    extends _$ProductStateCopyWithImpl<$Res, _$DeleteSuccessImpl>
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
    return 'ProductState.deleteSuccess(successmsg: $successmsg)';
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
    required TResult Function(String errmsg) erorrst,
    required TResult Function(List<Products> products) success,
    required TResult Function(String successmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function() addLoading,
    required TResult Function(String successmsg) deleteSuccess,
    required TResult Function(String errormsg) deleteFailure,
    required TResult Function(String successmsg) editProductByIdSuccess,
    required TResult Function(String errmsg) editProductByIdFailure,
  }) {
    return deleteSuccess(successmsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errmsg)? erorrst,
    TResult? Function(List<Products> products)? success,
    TResult? Function(String successmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function()? addLoading,
    TResult? Function(String successmsg)? deleteSuccess,
    TResult? Function(String errormsg)? deleteFailure,
    TResult? Function(String successmsg)? editProductByIdSuccess,
    TResult? Function(String errmsg)? editProductByIdFailure,
  }) {
    return deleteSuccess?.call(successmsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errmsg)? erorrst,
    TResult Function(List<Products> products)? success,
    TResult Function(String successmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function()? addLoading,
    TResult Function(String successmsg)? deleteSuccess,
    TResult Function(String errormsg)? deleteFailure,
    TResult Function(String successmsg)? editProductByIdSuccess,
    TResult Function(String errmsg)? editProductByIdFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(successmsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Errorst value) erorrst,
    required TResult Function(Success value) success,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(AddLoading value) addLoading,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(EditProductByIdSuccess value)
        editProductByIdSuccess,
    required TResult Function(EditProductByIdFailure value)
        editProductByIdFailure,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Errorst value)? erorrst,
    TResult? Function(Success value)? success,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(AddLoading value)? addLoading,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult? Function(EditProductByIdFailure value)? editProductByIdFailure,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Errorst value)? erorrst,
    TResult Function(Success value)? success,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(AddLoading value)? addLoading,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult Function(EditProductByIdFailure value)? editProductByIdFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteSuccess implements ProductState {
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
  $Res call({String errormsg});
}

/// @nodoc
class __$$DeleteFailureImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$DeleteFailureImpl>
    implements _$$DeleteFailureImplCopyWith<$Res> {
  __$$DeleteFailureImplCopyWithImpl(
      _$DeleteFailureImpl _value, $Res Function(_$DeleteFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errormsg = null,
  }) {
    return _then(_$DeleteFailureImpl(
      null == errormsg
          ? _value.errormsg
          : errormsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteFailureImpl implements DeleteFailure {
  const _$DeleteFailureImpl(this.errormsg);

  @override
  final String errormsg;

  @override
  String toString() {
    return 'ProductState.deleteFailure(errormsg: $errormsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFailureImpl &&
            (identical(other.errormsg, errormsg) ||
                other.errormsg == errormsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errormsg);

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
    required TResult Function(String errmsg) erorrst,
    required TResult Function(List<Products> products) success,
    required TResult Function(String successmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function() addLoading,
    required TResult Function(String successmsg) deleteSuccess,
    required TResult Function(String errormsg) deleteFailure,
    required TResult Function(String successmsg) editProductByIdSuccess,
    required TResult Function(String errmsg) editProductByIdFailure,
  }) {
    return deleteFailure(errormsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errmsg)? erorrst,
    TResult? Function(List<Products> products)? success,
    TResult? Function(String successmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function()? addLoading,
    TResult? Function(String successmsg)? deleteSuccess,
    TResult? Function(String errormsg)? deleteFailure,
    TResult? Function(String successmsg)? editProductByIdSuccess,
    TResult? Function(String errmsg)? editProductByIdFailure,
  }) {
    return deleteFailure?.call(errormsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errmsg)? erorrst,
    TResult Function(List<Products> products)? success,
    TResult Function(String successmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function()? addLoading,
    TResult Function(String successmsg)? deleteSuccess,
    TResult Function(String errormsg)? deleteFailure,
    TResult Function(String successmsg)? editProductByIdSuccess,
    TResult Function(String errmsg)? editProductByIdFailure,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(errormsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Errorst value) erorrst,
    required TResult Function(Success value) success,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(AddLoading value) addLoading,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(EditProductByIdSuccess value)
        editProductByIdSuccess,
    required TResult Function(EditProductByIdFailure value)
        editProductByIdFailure,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Errorst value)? erorrst,
    TResult? Function(Success value)? success,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(AddLoading value)? addLoading,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult? Function(EditProductByIdFailure value)? editProductByIdFailure,
  }) {
    return deleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Errorst value)? erorrst,
    TResult Function(Success value)? success,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(AddLoading value)? addLoading,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult Function(EditProductByIdFailure value)? editProductByIdFailure,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class DeleteFailure implements ProductState {
  const factory DeleteFailure(final String errormsg) = _$DeleteFailureImpl;

  String get errormsg;
  @JsonKey(ignore: true)
  _$$DeleteFailureImplCopyWith<_$DeleteFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProductByIdSuccessImplCopyWith<$Res> {
  factory _$$EditProductByIdSuccessImplCopyWith(
          _$EditProductByIdSuccessImpl value,
          $Res Function(_$EditProductByIdSuccessImpl) then) =
      __$$EditProductByIdSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String successmsg});
}

/// @nodoc
class __$$EditProductByIdSuccessImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$EditProductByIdSuccessImpl>
    implements _$$EditProductByIdSuccessImplCopyWith<$Res> {
  __$$EditProductByIdSuccessImplCopyWithImpl(
      _$EditProductByIdSuccessImpl _value,
      $Res Function(_$EditProductByIdSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successmsg = null,
  }) {
    return _then(_$EditProductByIdSuccessImpl(
      null == successmsg
          ? _value.successmsg
          : successmsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditProductByIdSuccessImpl implements EditProductByIdSuccess {
  const _$EditProductByIdSuccessImpl(this.successmsg);

  @override
  final String successmsg;

  @override
  String toString() {
    return 'ProductState.editProductByIdSuccess(successmsg: $successmsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProductByIdSuccessImpl &&
            (identical(other.successmsg, successmsg) ||
                other.successmsg == successmsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successmsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProductByIdSuccessImplCopyWith<_$EditProductByIdSuccessImpl>
      get copyWith => __$$EditProductByIdSuccessImplCopyWithImpl<
          _$EditProductByIdSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errmsg) erorrst,
    required TResult Function(List<Products> products) success,
    required TResult Function(String successmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function() addLoading,
    required TResult Function(String successmsg) deleteSuccess,
    required TResult Function(String errormsg) deleteFailure,
    required TResult Function(String successmsg) editProductByIdSuccess,
    required TResult Function(String errmsg) editProductByIdFailure,
  }) {
    return editProductByIdSuccess(successmsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errmsg)? erorrst,
    TResult? Function(List<Products> products)? success,
    TResult? Function(String successmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function()? addLoading,
    TResult? Function(String successmsg)? deleteSuccess,
    TResult? Function(String errormsg)? deleteFailure,
    TResult? Function(String successmsg)? editProductByIdSuccess,
    TResult? Function(String errmsg)? editProductByIdFailure,
  }) {
    return editProductByIdSuccess?.call(successmsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errmsg)? erorrst,
    TResult Function(List<Products> products)? success,
    TResult Function(String successmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function()? addLoading,
    TResult Function(String successmsg)? deleteSuccess,
    TResult Function(String errormsg)? deleteFailure,
    TResult Function(String successmsg)? editProductByIdSuccess,
    TResult Function(String errmsg)? editProductByIdFailure,
    required TResult orElse(),
  }) {
    if (editProductByIdSuccess != null) {
      return editProductByIdSuccess(successmsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Errorst value) erorrst,
    required TResult Function(Success value) success,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(AddLoading value) addLoading,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(EditProductByIdSuccess value)
        editProductByIdSuccess,
    required TResult Function(EditProductByIdFailure value)
        editProductByIdFailure,
  }) {
    return editProductByIdSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Errorst value)? erorrst,
    TResult? Function(Success value)? success,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(AddLoading value)? addLoading,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult? Function(EditProductByIdFailure value)? editProductByIdFailure,
  }) {
    return editProductByIdSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Errorst value)? erorrst,
    TResult Function(Success value)? success,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(AddLoading value)? addLoading,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult Function(EditProductByIdFailure value)? editProductByIdFailure,
    required TResult orElse(),
  }) {
    if (editProductByIdSuccess != null) {
      return editProductByIdSuccess(this);
    }
    return orElse();
  }
}

abstract class EditProductByIdSuccess implements ProductState {
  const factory EditProductByIdSuccess(final String successmsg) =
      _$EditProductByIdSuccessImpl;

  String get successmsg;
  @JsonKey(ignore: true)
  _$$EditProductByIdSuccessImplCopyWith<_$EditProductByIdSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProductByIdFailureImplCopyWith<$Res> {
  factory _$$EditProductByIdFailureImplCopyWith(
          _$EditProductByIdFailureImpl value,
          $Res Function(_$EditProductByIdFailureImpl) then) =
      __$$EditProductByIdFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errmsg});
}

/// @nodoc
class __$$EditProductByIdFailureImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$EditProductByIdFailureImpl>
    implements _$$EditProductByIdFailureImplCopyWith<$Res> {
  __$$EditProductByIdFailureImplCopyWithImpl(
      _$EditProductByIdFailureImpl _value,
      $Res Function(_$EditProductByIdFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errmsg = null,
  }) {
    return _then(_$EditProductByIdFailureImpl(
      null == errmsg
          ? _value.errmsg
          : errmsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditProductByIdFailureImpl implements EditProductByIdFailure {
  const _$EditProductByIdFailureImpl(this.errmsg);

  @override
  final String errmsg;

  @override
  String toString() {
    return 'ProductState.editProductByIdFailure(errmsg: $errmsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProductByIdFailureImpl &&
            (identical(other.errmsg, errmsg) || other.errmsg == errmsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errmsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProductByIdFailureImplCopyWith<_$EditProductByIdFailureImpl>
      get copyWith => __$$EditProductByIdFailureImplCopyWithImpl<
          _$EditProductByIdFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errmsg) erorrst,
    required TResult Function(List<Products> products) success,
    required TResult Function(String successmsg) addSuccess,
    required TResult Function(String failuremsg) addFailure,
    required TResult Function() addLoading,
    required TResult Function(String successmsg) deleteSuccess,
    required TResult Function(String errormsg) deleteFailure,
    required TResult Function(String successmsg) editProductByIdSuccess,
    required TResult Function(String errmsg) editProductByIdFailure,
  }) {
    return editProductByIdFailure(errmsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errmsg)? erorrst,
    TResult? Function(List<Products> products)? success,
    TResult? Function(String successmsg)? addSuccess,
    TResult? Function(String failuremsg)? addFailure,
    TResult? Function()? addLoading,
    TResult? Function(String successmsg)? deleteSuccess,
    TResult? Function(String errormsg)? deleteFailure,
    TResult? Function(String successmsg)? editProductByIdSuccess,
    TResult? Function(String errmsg)? editProductByIdFailure,
  }) {
    return editProductByIdFailure?.call(errmsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errmsg)? erorrst,
    TResult Function(List<Products> products)? success,
    TResult Function(String successmsg)? addSuccess,
    TResult Function(String failuremsg)? addFailure,
    TResult Function()? addLoading,
    TResult Function(String successmsg)? deleteSuccess,
    TResult Function(String errormsg)? deleteFailure,
    TResult Function(String successmsg)? editProductByIdSuccess,
    TResult Function(String errmsg)? editProductByIdFailure,
    required TResult orElse(),
  }) {
    if (editProductByIdFailure != null) {
      return editProductByIdFailure(errmsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Errorst value) erorrst,
    required TResult Function(Success value) success,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(AddFailure value) addFailure,
    required TResult Function(AddLoading value) addLoading,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(EditProductByIdSuccess value)
        editProductByIdSuccess,
    required TResult Function(EditProductByIdFailure value)
        editProductByIdFailure,
  }) {
    return editProductByIdFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Errorst value)? erorrst,
    TResult? Function(Success value)? success,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(AddFailure value)? addFailure,
    TResult? Function(AddLoading value)? addLoading,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult? Function(EditProductByIdFailure value)? editProductByIdFailure,
  }) {
    return editProductByIdFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Errorst value)? erorrst,
    TResult Function(Success value)? success,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(AddFailure value)? addFailure,
    TResult Function(AddLoading value)? addLoading,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(EditProductByIdSuccess value)? editProductByIdSuccess,
    TResult Function(EditProductByIdFailure value)? editProductByIdFailure,
    required TResult orElse(),
  }) {
    if (editProductByIdFailure != null) {
      return editProductByIdFailure(this);
    }
    return orElse();
  }
}

abstract class EditProductByIdFailure implements ProductState {
  const factory EditProductByIdFailure(final String errmsg) =
      _$EditProductByIdFailureImpl;

  String get errmsg;
  @JsonKey(ignore: true)
  _$$EditProductByIdFailureImplCopyWith<_$EditProductByIdFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
