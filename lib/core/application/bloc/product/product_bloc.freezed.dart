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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddproductModel productModel)? addProductEvent,
    TResult? Function()? getAllProductEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddproductModel productModel)? addProductEvent,
    TResult Function()? getAllProductEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddproductEvent value) addProductEvent,
    required TResult Function(_GetAllProductEvent value) getAllProductEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddproductEvent value)? addProductEvent,
    TResult? Function(_GetAllProductEvent value)? getAllProductEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddproductEvent value)? addProductEvent,
    TResult Function(_GetAllProductEvent value)? getAllProductEvent,
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
  }) {
    return addProductEvent(productModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddproductModel productModel)? addProductEvent,
    TResult? Function()? getAllProductEvent,
  }) {
    return addProductEvent?.call(productModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddproductModel productModel)? addProductEvent,
    TResult Function()? getAllProductEvent,
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
  }) {
    return addProductEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddproductEvent value)? addProductEvent,
    TResult? Function(_GetAllProductEvent value)? getAllProductEvent,
  }) {
    return addProductEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddproductEvent value)? addProductEvent,
    TResult Function(_GetAllProductEvent value)? getAllProductEvent,
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
  }) {
    return getAllProductEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddproductModel productModel)? addProductEvent,
    TResult? Function()? getAllProductEvent,
  }) {
    return getAllProductEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddproductModel productModel)? addProductEvent,
    TResult Function()? getAllProductEvent,
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
  }) {
    return getAllProductEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddproductEvent value)? addProductEvent,
    TResult? Function(_GetAllProductEvent value)? getAllProductEvent,
  }) {
    return getAllProductEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddproductEvent value)? addProductEvent,
    TResult Function(_GetAllProductEvent value)? getAllProductEvent,
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
mixin _$ProductState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isAddProductHasError => throw _privateConstructorUsedError;
  bool get isAddProductSuccess => throw _privateConstructorUsedError;
  bool get isGetAllProductHasError => throw _privateConstructorUsedError;
  bool get isGetAllProductSuccess => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  AddproductResponseModel? get model => throw _privateConstructorUsedError;
  GetAllproductResponseModel? get prouctModel =>
      throw _privateConstructorUsedError;

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
      String? message,
      AddproductResponseModel? model,
      GetAllproductResponseModel? prouctModel});
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
    Object? message = freezed,
    Object? model = freezed,
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
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AddproductResponseModel?,
      prouctModel: freezed == prouctModel
          ? _value.prouctModel
          : prouctModel // ignore: cast_nullable_to_non_nullable
              as GetAllproductResponseModel?,
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
      String? message,
      AddproductResponseModel? model,
      GetAllproductResponseModel? prouctModel});
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
    Object? message = freezed,
    Object? model = freezed,
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
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AddproductResponseModel?,
      prouctModel: freezed == prouctModel
          ? _value.prouctModel
          : prouctModel // ignore: cast_nullable_to_non_nullable
              as GetAllproductResponseModel?,
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
      this.message,
      this.model,
      this.prouctModel});

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
  final String? message;
  @override
  final AddproductResponseModel? model;
  @override
  final GetAllproductResponseModel? prouctModel;

  @override
  String toString() {
    return 'ProductState(isLoading: $isLoading, isAddProductHasError: $isAddProductHasError, isAddProductSuccess: $isAddProductSuccess, isGetAllProductHasError: $isGetAllProductHasError, isGetAllProductSuccess: $isGetAllProductSuccess, message: $message, model: $model, prouctModel: $prouctModel)';
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
            (identical(
                    other.isGetAllProductHasError, isGetAllProductHasError) ||
                other.isGetAllProductHasError == isGetAllProductHasError) &&
            (identical(other.isGetAllProductSuccess, isGetAllProductSuccess) ||
                other.isGetAllProductSuccess == isGetAllProductSuccess) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.prouctModel, prouctModel) ||
                other.prouctModel == prouctModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isAddProductHasError,
      isAddProductSuccess,
      isGetAllProductHasError,
      isGetAllProductSuccess,
      message,
      model,
      prouctModel);

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
      final String? message,
      final AddproductResponseModel? model,
      final GetAllproductResponseModel? prouctModel}) = _$ProductStateImpl;

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
  String? get message;
  @override
  AddproductResponseModel? get model;
  @override
  GetAllproductResponseModel? get prouctModel;
  @override
  @JsonKey(ignore: true)
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
