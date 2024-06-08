// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String categoryNameValue, String categoryDescriptionValue)
        addCategory,
    required TResult Function() getCategory,
    required TResult Function(int id) deleteCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String categoryNameValue, String categoryDescriptionValue)?
        addCategory,
    TResult? Function()? getCategory,
    TResult? Function(int id)? deleteCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryNameValue, String categoryDescriptionValue)?
        addCategory,
    TResult Function()? getCategory,
    TResult Function(int id)? deleteCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_GetCategory value) getCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_GetCategory value)? getCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_GetCategory value)? getCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddCategoryImplCopyWith<$Res> {
  factory _$$AddCategoryImplCopyWith(
          _$AddCategoryImpl value, $Res Function(_$AddCategoryImpl) then) =
      __$$AddCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryNameValue, String categoryDescriptionValue});
}

/// @nodoc
class __$$AddCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$AddCategoryImpl>
    implements _$$AddCategoryImplCopyWith<$Res> {
  __$$AddCategoryImplCopyWithImpl(
      _$AddCategoryImpl _value, $Res Function(_$AddCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryNameValue = null,
    Object? categoryDescriptionValue = null,
  }) {
    return _then(_$AddCategoryImpl(
      categoryNameValue: null == categoryNameValue
          ? _value.categoryNameValue
          : categoryNameValue // ignore: cast_nullable_to_non_nullable
              as String,
      categoryDescriptionValue: null == categoryDescriptionValue
          ? _value.categoryDescriptionValue
          : categoryDescriptionValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddCategoryImpl with DiagnosticableTreeMixin implements _AddCategory {
  const _$AddCategoryImpl(
      {required this.categoryNameValue,
      required this.categoryDescriptionValue});

  @override
  final String categoryNameValue;
  @override
  final String categoryDescriptionValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.addCategory(categoryNameValue: $categoryNameValue, categoryDescriptionValue: $categoryDescriptionValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryEvent.addCategory'))
      ..add(DiagnosticsProperty('categoryNameValue', categoryNameValue))
      ..add(DiagnosticsProperty(
          'categoryDescriptionValue', categoryDescriptionValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCategoryImpl &&
            (identical(other.categoryNameValue, categoryNameValue) ||
                other.categoryNameValue == categoryNameValue) &&
            (identical(
                    other.categoryDescriptionValue, categoryDescriptionValue) ||
                other.categoryDescriptionValue == categoryDescriptionValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, categoryNameValue, categoryDescriptionValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCategoryImplCopyWith<_$AddCategoryImpl> get copyWith =>
      __$$AddCategoryImplCopyWithImpl<_$AddCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String categoryNameValue, String categoryDescriptionValue)
        addCategory,
    required TResult Function() getCategory,
    required TResult Function(int id) deleteCategory,
  }) {
    return addCategory(categoryNameValue, categoryDescriptionValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String categoryNameValue, String categoryDescriptionValue)?
        addCategory,
    TResult? Function()? getCategory,
    TResult? Function(int id)? deleteCategory,
  }) {
    return addCategory?.call(categoryNameValue, categoryDescriptionValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryNameValue, String categoryDescriptionValue)?
        addCategory,
    TResult Function()? getCategory,
    TResult Function(int id)? deleteCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(categoryNameValue, categoryDescriptionValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_GetCategory value) getCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_GetCategory value)? getCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
  }) {
    return addCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_GetCategory value)? getCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(this);
    }
    return orElse();
  }
}

abstract class _AddCategory implements CategoryEvent {
  const factory _AddCategory(
      {required final String categoryNameValue,
      required final String categoryDescriptionValue}) = _$AddCategoryImpl;

  String get categoryNameValue;
  String get categoryDescriptionValue;
  @JsonKey(ignore: true)
  _$$AddCategoryImplCopyWith<_$AddCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCategoryImplCopyWith<$Res> {
  factory _$$GetCategoryImplCopyWith(
          _$GetCategoryImpl value, $Res Function(_$GetCategoryImpl) then) =
      __$$GetCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$GetCategoryImpl>
    implements _$$GetCategoryImplCopyWith<$Res> {
  __$$GetCategoryImplCopyWithImpl(
      _$GetCategoryImpl _value, $Res Function(_$GetCategoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCategoryImpl with DiagnosticableTreeMixin implements _GetCategory {
  const _$GetCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.getCategory()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CategoryEvent.getCategory'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String categoryNameValue, String categoryDescriptionValue)
        addCategory,
    required TResult Function() getCategory,
    required TResult Function(int id) deleteCategory,
  }) {
    return getCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String categoryNameValue, String categoryDescriptionValue)?
        addCategory,
    TResult? Function()? getCategory,
    TResult? Function(int id)? deleteCategory,
  }) {
    return getCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryNameValue, String categoryDescriptionValue)?
        addCategory,
    TResult Function()? getCategory,
    TResult Function(int id)? deleteCategory,
    required TResult orElse(),
  }) {
    if (getCategory != null) {
      return getCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_GetCategory value) getCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
  }) {
    return getCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_GetCategory value)? getCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
  }) {
    return getCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_GetCategory value)? getCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    required TResult orElse(),
  }) {
    if (getCategory != null) {
      return getCategory(this);
    }
    return orElse();
  }
}

abstract class _GetCategory implements CategoryEvent {
  const factory _GetCategory() = _$GetCategoryImpl;
}

/// @nodoc
abstract class _$$DeleteCategoryImplCopyWith<$Res> {
  factory _$$DeleteCategoryImplCopyWith(_$DeleteCategoryImpl value,
          $Res Function(_$DeleteCategoryImpl) then) =
      __$$DeleteCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$DeleteCategoryImpl>
    implements _$$DeleteCategoryImplCopyWith<$Res> {
  __$$DeleteCategoryImplCopyWithImpl(
      _$DeleteCategoryImpl _value, $Res Function(_$DeleteCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteCategoryImpl
    with DiagnosticableTreeMixin
    implements _DeleteCategory {
  const _$DeleteCategoryImpl({required this.id});

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.deleteCategory(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryEvent.deleteCategory'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCategoryImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCategoryImplCopyWith<_$DeleteCategoryImpl> get copyWith =>
      __$$DeleteCategoryImplCopyWithImpl<_$DeleteCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String categoryNameValue, String categoryDescriptionValue)
        addCategory,
    required TResult Function() getCategory,
    required TResult Function(int id) deleteCategory,
  }) {
    return deleteCategory(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String categoryNameValue, String categoryDescriptionValue)?
        addCategory,
    TResult? Function()? getCategory,
    TResult? Function(int id)? deleteCategory,
  }) {
    return deleteCategory?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryNameValue, String categoryDescriptionValue)?
        addCategory,
    TResult Function()? getCategory,
    TResult Function(int id)? deleteCategory,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_GetCategory value) getCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
  }) {
    return deleteCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_GetCategory value)? getCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
  }) {
    return deleteCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_GetCategory value)? getCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(this);
    }
    return orElse();
  }
}

abstract class _DeleteCategory implements CategoryEvent {
  const factory _DeleteCategory({required final int id}) = _$DeleteCategoryImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteCategoryImplCopyWith<_$DeleteCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryAll> categories) success,
    required TResult Function(String errmessage) errorst,
    required TResult Function() deleteSuccess,
    required TResult Function(String successmsg) addCategorySuccess,
    required TResult Function(String msg) addFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryAll> categories)? success,
    TResult? Function(String errmessage)? errorst,
    TResult? Function()? deleteSuccess,
    TResult? Function(String successmsg)? addCategorySuccess,
    TResult? Function(String msg)? addFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryAll> categories)? success,
    TResult Function(String errmessage)? errorst,
    TResult Function()? deleteSuccess,
    TResult Function(String successmsg)? addCategorySuccess,
    TResult Function(String msg)? addFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(GetCategorySuccess value) success,
    required TResult Function(GetCategoryErrorst value) errorst,
    required TResult Function(DeleteSucces value) deleteSuccess,
    required TResult Function(AddCateSucces value) addCategorySuccess,
    required TResult Function(AddCategoryFailure value) addFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CategoryLoading value)? loading,
    TResult? Function(GetCategorySuccess value)? success,
    TResult? Function(GetCategoryErrorst value)? errorst,
    TResult? Function(DeleteSucces value)? deleteSuccess,
    TResult? Function(AddCateSucces value)? addCategorySuccess,
    TResult? Function(AddCategoryFailure value)? addFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(GetCategorySuccess value)? success,
    TResult Function(GetCategoryErrorst value)? errorst,
    TResult Function(DeleteSucces value)? deleteSuccess,
    TResult Function(AddCateSucces value)? addCategorySuccess,
    TResult Function(AddCategoryFailure value)? addFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

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
    extends _$CategoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CategoryState.initial'));
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
    required TResult Function(List<CategoryAll> categories) success,
    required TResult Function(String errmessage) errorst,
    required TResult Function() deleteSuccess,
    required TResult Function(String successmsg) addCategorySuccess,
    required TResult Function(String msg) addFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryAll> categories)? success,
    TResult? Function(String errmessage)? errorst,
    TResult? Function()? deleteSuccess,
    TResult? Function(String successmsg)? addCategorySuccess,
    TResult? Function(String msg)? addFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryAll> categories)? success,
    TResult Function(String errmessage)? errorst,
    TResult Function()? deleteSuccess,
    TResult Function(String successmsg)? addCategorySuccess,
    TResult Function(String msg)? addFailure,
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
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(GetCategorySuccess value) success,
    required TResult Function(GetCategoryErrorst value) errorst,
    required TResult Function(DeleteSucces value) deleteSuccess,
    required TResult Function(AddCateSucces value) addCategorySuccess,
    required TResult Function(AddCategoryFailure value) addFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CategoryLoading value)? loading,
    TResult? Function(GetCategorySuccess value)? success,
    TResult? Function(GetCategoryErrorst value)? errorst,
    TResult? Function(DeleteSucces value)? deleteSuccess,
    TResult? Function(AddCateSucces value)? addCategorySuccess,
    TResult? Function(AddCategoryFailure value)? addFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(GetCategorySuccess value)? success,
    TResult Function(GetCategoryErrorst value)? errorst,
    TResult Function(DeleteSucces value)? deleteSuccess,
    TResult Function(AddCateSucces value)? addCategorySuccess,
    TResult Function(AddCategoryFailure value)? addFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CategoryState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CategoryLoadingImplCopyWith<$Res> {
  factory _$$CategoryLoadingImplCopyWith(_$CategoryLoadingImpl value,
          $Res Function(_$CategoryLoadingImpl) then) =
      __$$CategoryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryLoadingImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryLoadingImpl>
    implements _$$CategoryLoadingImplCopyWith<$Res> {
  __$$CategoryLoadingImplCopyWithImpl(
      _$CategoryLoadingImpl _value, $Res Function(_$CategoryLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoryLoadingImpl
    with DiagnosticableTreeMixin
    implements CategoryLoading {
  const _$CategoryLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CategoryState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryAll> categories) success,
    required TResult Function(String errmessage) errorst,
    required TResult Function() deleteSuccess,
    required TResult Function(String successmsg) addCategorySuccess,
    required TResult Function(String msg) addFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryAll> categories)? success,
    TResult? Function(String errmessage)? errorst,
    TResult? Function()? deleteSuccess,
    TResult? Function(String successmsg)? addCategorySuccess,
    TResult? Function(String msg)? addFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryAll> categories)? success,
    TResult Function(String errmessage)? errorst,
    TResult Function()? deleteSuccess,
    TResult Function(String successmsg)? addCategorySuccess,
    TResult Function(String msg)? addFailure,
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
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(GetCategorySuccess value) success,
    required TResult Function(GetCategoryErrorst value) errorst,
    required TResult Function(DeleteSucces value) deleteSuccess,
    required TResult Function(AddCateSucces value) addCategorySuccess,
    required TResult Function(AddCategoryFailure value) addFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CategoryLoading value)? loading,
    TResult? Function(GetCategorySuccess value)? success,
    TResult? Function(GetCategoryErrorst value)? errorst,
    TResult? Function(DeleteSucces value)? deleteSuccess,
    TResult? Function(AddCateSucces value)? addCategorySuccess,
    TResult? Function(AddCategoryFailure value)? addFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(GetCategorySuccess value)? success,
    TResult Function(GetCategoryErrorst value)? errorst,
    TResult Function(DeleteSucces value)? deleteSuccess,
    TResult Function(AddCateSucces value)? addCategorySuccess,
    TResult Function(AddCategoryFailure value)? addFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CategoryLoading implements CategoryState {
  const factory CategoryLoading() = _$CategoryLoadingImpl;
}

/// @nodoc
abstract class _$$GetCategorySuccessImplCopyWith<$Res> {
  factory _$$GetCategorySuccessImplCopyWith(_$GetCategorySuccessImpl value,
          $Res Function(_$GetCategorySuccessImpl) then) =
      __$$GetCategorySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryAll> categories});
}

/// @nodoc
class __$$GetCategorySuccessImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$GetCategorySuccessImpl>
    implements _$$GetCategorySuccessImplCopyWith<$Res> {
  __$$GetCategorySuccessImplCopyWithImpl(_$GetCategorySuccessImpl _value,
      $Res Function(_$GetCategorySuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$GetCategorySuccessImpl(
      null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryAll>,
    ));
  }
}

/// @nodoc

class _$GetCategorySuccessImpl
    with DiagnosticableTreeMixin
    implements GetCategorySuccess {
  const _$GetCategorySuccessImpl(final List<CategoryAll> categories)
      : _categories = categories;

  final List<CategoryAll> _categories;
  @override
  List<CategoryAll> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryState.success(categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryState.success'))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategorySuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategorySuccessImplCopyWith<_$GetCategorySuccessImpl> get copyWith =>
      __$$GetCategorySuccessImplCopyWithImpl<_$GetCategorySuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryAll> categories) success,
    required TResult Function(String errmessage) errorst,
    required TResult Function() deleteSuccess,
    required TResult Function(String successmsg) addCategorySuccess,
    required TResult Function(String msg) addFailure,
  }) {
    return success(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryAll> categories)? success,
    TResult? Function(String errmessage)? errorst,
    TResult? Function()? deleteSuccess,
    TResult? Function(String successmsg)? addCategorySuccess,
    TResult? Function(String msg)? addFailure,
  }) {
    return success?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryAll> categories)? success,
    TResult Function(String errmessage)? errorst,
    TResult Function()? deleteSuccess,
    TResult Function(String successmsg)? addCategorySuccess,
    TResult Function(String msg)? addFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(GetCategorySuccess value) success,
    required TResult Function(GetCategoryErrorst value) errorst,
    required TResult Function(DeleteSucces value) deleteSuccess,
    required TResult Function(AddCateSucces value) addCategorySuccess,
    required TResult Function(AddCategoryFailure value) addFailure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CategoryLoading value)? loading,
    TResult? Function(GetCategorySuccess value)? success,
    TResult? Function(GetCategoryErrorst value)? errorst,
    TResult? Function(DeleteSucces value)? deleteSuccess,
    TResult? Function(AddCateSucces value)? addCategorySuccess,
    TResult? Function(AddCategoryFailure value)? addFailure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(GetCategorySuccess value)? success,
    TResult Function(GetCategoryErrorst value)? errorst,
    TResult Function(DeleteSucces value)? deleteSuccess,
    TResult Function(AddCateSucces value)? addCategorySuccess,
    TResult Function(AddCategoryFailure value)? addFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GetCategorySuccess implements CategoryState {
  const factory GetCategorySuccess(final List<CategoryAll> categories) =
      _$GetCategorySuccessImpl;

  List<CategoryAll> get categories;
  @JsonKey(ignore: true)
  _$$GetCategorySuccessImplCopyWith<_$GetCategorySuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCategoryErrorstImplCopyWith<$Res> {
  factory _$$GetCategoryErrorstImplCopyWith(_$GetCategoryErrorstImpl value,
          $Res Function(_$GetCategoryErrorstImpl) then) =
      __$$GetCategoryErrorstImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errmessage});
}

/// @nodoc
class __$$GetCategoryErrorstImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$GetCategoryErrorstImpl>
    implements _$$GetCategoryErrorstImplCopyWith<$Res> {
  __$$GetCategoryErrorstImplCopyWithImpl(_$GetCategoryErrorstImpl _value,
      $Res Function(_$GetCategoryErrorstImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errmessage = null,
  }) {
    return _then(_$GetCategoryErrorstImpl(
      null == errmessage
          ? _value.errmessage
          : errmessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCategoryErrorstImpl
    with DiagnosticableTreeMixin
    implements GetCategoryErrorst {
  const _$GetCategoryErrorstImpl(this.errmessage);

  @override
  final String errmessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryState.errorst(errmessage: $errmessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryState.errorst'))
      ..add(DiagnosticsProperty('errmessage', errmessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoryErrorstImpl &&
            (identical(other.errmessage, errmessage) ||
                other.errmessage == errmessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errmessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoryErrorstImplCopyWith<_$GetCategoryErrorstImpl> get copyWith =>
      __$$GetCategoryErrorstImplCopyWithImpl<_$GetCategoryErrorstImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryAll> categories) success,
    required TResult Function(String errmessage) errorst,
    required TResult Function() deleteSuccess,
    required TResult Function(String successmsg) addCategorySuccess,
    required TResult Function(String msg) addFailure,
  }) {
    return errorst(errmessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryAll> categories)? success,
    TResult? Function(String errmessage)? errorst,
    TResult? Function()? deleteSuccess,
    TResult? Function(String successmsg)? addCategorySuccess,
    TResult? Function(String msg)? addFailure,
  }) {
    return errorst?.call(errmessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryAll> categories)? success,
    TResult Function(String errmessage)? errorst,
    TResult Function()? deleteSuccess,
    TResult Function(String successmsg)? addCategorySuccess,
    TResult Function(String msg)? addFailure,
    required TResult orElse(),
  }) {
    if (errorst != null) {
      return errorst(errmessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(GetCategorySuccess value) success,
    required TResult Function(GetCategoryErrorst value) errorst,
    required TResult Function(DeleteSucces value) deleteSuccess,
    required TResult Function(AddCateSucces value) addCategorySuccess,
    required TResult Function(AddCategoryFailure value) addFailure,
  }) {
    return errorst(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CategoryLoading value)? loading,
    TResult? Function(GetCategorySuccess value)? success,
    TResult? Function(GetCategoryErrorst value)? errorst,
    TResult? Function(DeleteSucces value)? deleteSuccess,
    TResult? Function(AddCateSucces value)? addCategorySuccess,
    TResult? Function(AddCategoryFailure value)? addFailure,
  }) {
    return errorst?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(GetCategorySuccess value)? success,
    TResult Function(GetCategoryErrorst value)? errorst,
    TResult Function(DeleteSucces value)? deleteSuccess,
    TResult Function(AddCateSucces value)? addCategorySuccess,
    TResult Function(AddCategoryFailure value)? addFailure,
    required TResult orElse(),
  }) {
    if (errorst != null) {
      return errorst(this);
    }
    return orElse();
  }
}

abstract class GetCategoryErrorst implements CategoryState {
  const factory GetCategoryErrorst(final String errmessage) =
      _$GetCategoryErrorstImpl;

  String get errmessage;
  @JsonKey(ignore: true)
  _$$GetCategoryErrorstImplCopyWith<_$GetCategoryErrorstImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSuccesImplCopyWith<$Res> {
  factory _$$DeleteSuccesImplCopyWith(
          _$DeleteSuccesImpl value, $Res Function(_$DeleteSuccesImpl) then) =
      __$$DeleteSuccesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteSuccesImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$DeleteSuccesImpl>
    implements _$$DeleteSuccesImplCopyWith<$Res> {
  __$$DeleteSuccesImplCopyWithImpl(
      _$DeleteSuccesImpl _value, $Res Function(_$DeleteSuccesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteSuccesImpl with DiagnosticableTreeMixin implements DeleteSucces {
  const _$DeleteSuccesImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryState.deleteSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CategoryState.deleteSuccess'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteSuccesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryAll> categories) success,
    required TResult Function(String errmessage) errorst,
    required TResult Function() deleteSuccess,
    required TResult Function(String successmsg) addCategorySuccess,
    required TResult Function(String msg) addFailure,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryAll> categories)? success,
    TResult? Function(String errmessage)? errorst,
    TResult? Function()? deleteSuccess,
    TResult? Function(String successmsg)? addCategorySuccess,
    TResult? Function(String msg)? addFailure,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryAll> categories)? success,
    TResult Function(String errmessage)? errorst,
    TResult Function()? deleteSuccess,
    TResult Function(String successmsg)? addCategorySuccess,
    TResult Function(String msg)? addFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(GetCategorySuccess value) success,
    required TResult Function(GetCategoryErrorst value) errorst,
    required TResult Function(DeleteSucces value) deleteSuccess,
    required TResult Function(AddCateSucces value) addCategorySuccess,
    required TResult Function(AddCategoryFailure value) addFailure,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CategoryLoading value)? loading,
    TResult? Function(GetCategorySuccess value)? success,
    TResult? Function(GetCategoryErrorst value)? errorst,
    TResult? Function(DeleteSucces value)? deleteSuccess,
    TResult? Function(AddCateSucces value)? addCategorySuccess,
    TResult? Function(AddCategoryFailure value)? addFailure,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(GetCategorySuccess value)? success,
    TResult Function(GetCategoryErrorst value)? errorst,
    TResult Function(DeleteSucces value)? deleteSuccess,
    TResult Function(AddCateSucces value)? addCategorySuccess,
    TResult Function(AddCategoryFailure value)? addFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteSucces implements CategoryState {
  const factory DeleteSucces() = _$DeleteSuccesImpl;
}

/// @nodoc
abstract class _$$AddCateSuccesImplCopyWith<$Res> {
  factory _$$AddCateSuccesImplCopyWith(
          _$AddCateSuccesImpl value, $Res Function(_$AddCateSuccesImpl) then) =
      __$$AddCateSuccesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String successmsg});
}

/// @nodoc
class __$$AddCateSuccesImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$AddCateSuccesImpl>
    implements _$$AddCateSuccesImplCopyWith<$Res> {
  __$$AddCateSuccesImplCopyWithImpl(
      _$AddCateSuccesImpl _value, $Res Function(_$AddCateSuccesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successmsg = null,
  }) {
    return _then(_$AddCateSuccesImpl(
      null == successmsg
          ? _value.successmsg
          : successmsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddCateSuccesImpl
    with DiagnosticableTreeMixin
    implements AddCateSucces {
  const _$AddCateSuccesImpl(this.successmsg);

  @override
  final String successmsg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryState.addCategorySuccess(successmsg: $successmsg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryState.addCategorySuccess'))
      ..add(DiagnosticsProperty('successmsg', successmsg));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCateSuccesImpl &&
            (identical(other.successmsg, successmsg) ||
                other.successmsg == successmsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successmsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCateSuccesImplCopyWith<_$AddCateSuccesImpl> get copyWith =>
      __$$AddCateSuccesImplCopyWithImpl<_$AddCateSuccesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryAll> categories) success,
    required TResult Function(String errmessage) errorst,
    required TResult Function() deleteSuccess,
    required TResult Function(String successmsg) addCategorySuccess,
    required TResult Function(String msg) addFailure,
  }) {
    return addCategorySuccess(successmsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryAll> categories)? success,
    TResult? Function(String errmessage)? errorst,
    TResult? Function()? deleteSuccess,
    TResult? Function(String successmsg)? addCategorySuccess,
    TResult? Function(String msg)? addFailure,
  }) {
    return addCategorySuccess?.call(successmsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryAll> categories)? success,
    TResult Function(String errmessage)? errorst,
    TResult Function()? deleteSuccess,
    TResult Function(String successmsg)? addCategorySuccess,
    TResult Function(String msg)? addFailure,
    required TResult orElse(),
  }) {
    if (addCategorySuccess != null) {
      return addCategorySuccess(successmsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(GetCategorySuccess value) success,
    required TResult Function(GetCategoryErrorst value) errorst,
    required TResult Function(DeleteSucces value) deleteSuccess,
    required TResult Function(AddCateSucces value) addCategorySuccess,
    required TResult Function(AddCategoryFailure value) addFailure,
  }) {
    return addCategorySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CategoryLoading value)? loading,
    TResult? Function(GetCategorySuccess value)? success,
    TResult? Function(GetCategoryErrorst value)? errorst,
    TResult? Function(DeleteSucces value)? deleteSuccess,
    TResult? Function(AddCateSucces value)? addCategorySuccess,
    TResult? Function(AddCategoryFailure value)? addFailure,
  }) {
    return addCategorySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(GetCategorySuccess value)? success,
    TResult Function(GetCategoryErrorst value)? errorst,
    TResult Function(DeleteSucces value)? deleteSuccess,
    TResult Function(AddCateSucces value)? addCategorySuccess,
    TResult Function(AddCategoryFailure value)? addFailure,
    required TResult orElse(),
  }) {
    if (addCategorySuccess != null) {
      return addCategorySuccess(this);
    }
    return orElse();
  }
}

abstract class AddCateSucces implements CategoryState {
  const factory AddCateSucces(final String successmsg) = _$AddCateSuccesImpl;

  String get successmsg;
  @JsonKey(ignore: true)
  _$$AddCateSuccesImplCopyWith<_$AddCateSuccesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCategoryFailureImplCopyWith<$Res> {
  factory _$$AddCategoryFailureImplCopyWith(_$AddCategoryFailureImpl value,
          $Res Function(_$AddCategoryFailureImpl) then) =
      __$$AddCategoryFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$AddCategoryFailureImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$AddCategoryFailureImpl>
    implements _$$AddCategoryFailureImplCopyWith<$Res> {
  __$$AddCategoryFailureImplCopyWithImpl(_$AddCategoryFailureImpl _value,
      $Res Function(_$AddCategoryFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$AddCategoryFailureImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddCategoryFailureImpl
    with DiagnosticableTreeMixin
    implements AddCategoryFailure {
  const _$AddCategoryFailureImpl(this.msg);

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryState.addFailure(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryState.addFailure'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCategoryFailureImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCategoryFailureImplCopyWith<_$AddCategoryFailureImpl> get copyWith =>
      __$$AddCategoryFailureImplCopyWithImpl<_$AddCategoryFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryAll> categories) success,
    required TResult Function(String errmessage) errorst,
    required TResult Function() deleteSuccess,
    required TResult Function(String successmsg) addCategorySuccess,
    required TResult Function(String msg) addFailure,
  }) {
    return addFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryAll> categories)? success,
    TResult? Function(String errmessage)? errorst,
    TResult? Function()? deleteSuccess,
    TResult? Function(String successmsg)? addCategorySuccess,
    TResult? Function(String msg)? addFailure,
  }) {
    return addFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryAll> categories)? success,
    TResult Function(String errmessage)? errorst,
    TResult Function()? deleteSuccess,
    TResult Function(String successmsg)? addCategorySuccess,
    TResult Function(String msg)? addFailure,
    required TResult orElse(),
  }) {
    if (addFailure != null) {
      return addFailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(GetCategorySuccess value) success,
    required TResult Function(GetCategoryErrorst value) errorst,
    required TResult Function(DeleteSucces value) deleteSuccess,
    required TResult Function(AddCateSucces value) addCategorySuccess,
    required TResult Function(AddCategoryFailure value) addFailure,
  }) {
    return addFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CategoryLoading value)? loading,
    TResult? Function(GetCategorySuccess value)? success,
    TResult? Function(GetCategoryErrorst value)? errorst,
    TResult? Function(DeleteSucces value)? deleteSuccess,
    TResult? Function(AddCateSucces value)? addCategorySuccess,
    TResult? Function(AddCategoryFailure value)? addFailure,
  }) {
    return addFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(GetCategorySuccess value)? success,
    TResult Function(GetCategoryErrorst value)? errorst,
    TResult Function(DeleteSucces value)? deleteSuccess,
    TResult Function(AddCateSucces value)? addCategorySuccess,
    TResult Function(AddCategoryFailure value)? addFailure,
    required TResult orElse(),
  }) {
    if (addFailure != null) {
      return addFailure(this);
    }
    return orElse();
  }
}

abstract class AddCategoryFailure implements CategoryState {
  const factory AddCategoryFailure(final String msg) = _$AddCategoryFailureImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$AddCategoryFailureImplCopyWith<_$AddCategoryFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
