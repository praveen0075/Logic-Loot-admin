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
    required TResult Function(String category, String description) addCategory,
    required TResult Function() getCategory,
    required TResult Function(int id) deleteCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String description)? addCategory,
    TResult? Function()? getCategory,
    TResult? Function(int id)? deleteCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String description)? addCategory,
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
  $Res call({String category, String description});
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
    Object? category = null,
    Object? description = null,
  }) {
    return _then(_$AddCategoryImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddCategoryImpl implements _AddCategory {
  const _$AddCategoryImpl({required this.category, required this.description});

  @override
  final String category;
  @override
  final String description;

  @override
  String toString() {
    return 'CategoryEvent.addCategory(category: $category, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCategoryImplCopyWith<_$AddCategoryImpl> get copyWith =>
      __$$AddCategoryImplCopyWithImpl<_$AddCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category, String description) addCategory,
    required TResult Function() getCategory,
    required TResult Function(int id) deleteCategory,
  }) {
    return addCategory(category, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String description)? addCategory,
    TResult? Function()? getCategory,
    TResult? Function(int id)? deleteCategory,
  }) {
    return addCategory?.call(category, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String description)? addCategory,
    TResult Function()? getCategory,
    TResult Function(int id)? deleteCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(category, description);
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
      {required final String category,
      required final String description}) = _$AddCategoryImpl;

  String get category;
  String get description;
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

class _$GetCategoryImpl implements _GetCategory {
  const _$GetCategoryImpl();

  @override
  String toString() {
    return 'CategoryEvent.getCategory()';
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
    required TResult Function(String category, String description) addCategory,
    required TResult Function() getCategory,
    required TResult Function(int id) deleteCategory,
  }) {
    return getCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String description)? addCategory,
    TResult? Function()? getCategory,
    TResult? Function(int id)? deleteCategory,
  }) {
    return getCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String description)? addCategory,
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

class _$DeleteCategoryImpl implements _DeleteCategory {
  const _$DeleteCategoryImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CategoryEvent.deleteCategory(id: $id)';
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
    required TResult Function(String category, String description) addCategory,
    required TResult Function() getCategory,
    required TResult Function(int id) deleteCategory,
  }) {
    return deleteCategory(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String description)? addCategory,
    TResult? Function()? getCategory,
    TResult? Function(int id)? deleteCategory,
  }) {
    return deleteCategory?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String description)? addCategory,
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
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isAddcateHasError => throw _privateConstructorUsedError;
  bool get isAddCategorySuccess => throw _privateConstructorUsedError;
  bool get isGetCategoryHasError => throw _privateConstructorUsedError;
  bool get isGEtCategorySuccess => throw _privateConstructorUsedError;
  bool get isDeleteCategoryhasErro => throw _privateConstructorUsedError;
  bool get isDeleteCategorySuccess => throw _privateConstructorUsedError;
  GetAllCategories? get getallCategory => throw _privateConstructorUsedError;
  String? get messag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isAddcateHasError,
      bool isAddCategorySuccess,
      bool isGetCategoryHasError,
      bool isGEtCategorySuccess,
      bool isDeleteCategoryhasErro,
      bool isDeleteCategorySuccess,
      GetAllCategories? getallCategory,
      String? messag});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isAddcateHasError = null,
    Object? isAddCategorySuccess = null,
    Object? isGetCategoryHasError = null,
    Object? isGEtCategorySuccess = null,
    Object? isDeleteCategoryhasErro = null,
    Object? isDeleteCategorySuccess = null,
    Object? getallCategory = freezed,
    Object? messag = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddcateHasError: null == isAddcateHasError
          ? _value.isAddcateHasError
          : isAddcateHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddCategorySuccess: null == isAddCategorySuccess
          ? _value.isAddCategorySuccess
          : isAddCategorySuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetCategoryHasError: null == isGetCategoryHasError
          ? _value.isGetCategoryHasError
          : isGetCategoryHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isGEtCategorySuccess: null == isGEtCategorySuccess
          ? _value.isGEtCategorySuccess
          : isGEtCategorySuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteCategoryhasErro: null == isDeleteCategoryhasErro
          ? _value.isDeleteCategoryhasErro
          : isDeleteCategoryhasErro // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteCategorySuccess: null == isDeleteCategorySuccess
          ? _value.isDeleteCategorySuccess
          : isDeleteCategorySuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      getallCategory: freezed == getallCategory
          ? _value.getallCategory
          : getallCategory // ignore: cast_nullable_to_non_nullable
              as GetAllCategories?,
      messag: freezed == messag
          ? _value.messag
          : messag // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryStateImplCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$CategoryStateImplCopyWith(
          _$CategoryStateImpl value, $Res Function(_$CategoryStateImpl) then) =
      __$$CategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isAddcateHasError,
      bool isAddCategorySuccess,
      bool isGetCategoryHasError,
      bool isGEtCategorySuccess,
      bool isDeleteCategoryhasErro,
      bool isDeleteCategorySuccess,
      GetAllCategories? getallCategory,
      String? messag});
}

/// @nodoc
class __$$CategoryStateImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryStateImpl>
    implements _$$CategoryStateImplCopyWith<$Res> {
  __$$CategoryStateImplCopyWithImpl(
      _$CategoryStateImpl _value, $Res Function(_$CategoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isAddcateHasError = null,
    Object? isAddCategorySuccess = null,
    Object? isGetCategoryHasError = null,
    Object? isGEtCategorySuccess = null,
    Object? isDeleteCategoryhasErro = null,
    Object? isDeleteCategorySuccess = null,
    Object? getallCategory = freezed,
    Object? messag = freezed,
  }) {
    return _then(_$CategoryStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddcateHasError: null == isAddcateHasError
          ? _value.isAddcateHasError
          : isAddcateHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddCategorySuccess: null == isAddCategorySuccess
          ? _value.isAddCategorySuccess
          : isAddCategorySuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetCategoryHasError: null == isGetCategoryHasError
          ? _value.isGetCategoryHasError
          : isGetCategoryHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isGEtCategorySuccess: null == isGEtCategorySuccess
          ? _value.isGEtCategorySuccess
          : isGEtCategorySuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteCategoryhasErro: null == isDeleteCategoryhasErro
          ? _value.isDeleteCategoryhasErro
          : isDeleteCategoryhasErro // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteCategorySuccess: null == isDeleteCategorySuccess
          ? _value.isDeleteCategorySuccess
          : isDeleteCategorySuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      getallCategory: freezed == getallCategory
          ? _value.getallCategory
          : getallCategory // ignore: cast_nullable_to_non_nullable
              as GetAllCategories?,
      messag: freezed == messag
          ? _value.messag
          : messag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CategoryStateImpl implements _CategoryState {
  const _$CategoryStateImpl(
      {required this.isLoading,
      required this.isAddcateHasError,
      required this.isAddCategorySuccess,
      required this.isGetCategoryHasError,
      required this.isGEtCategorySuccess,
      required this.isDeleteCategoryhasErro,
      required this.isDeleteCategorySuccess,
      this.getallCategory,
      this.messag});

  @override
  final bool isLoading;
  @override
  final bool isAddcateHasError;
  @override
  final bool isAddCategorySuccess;
  @override
  final bool isGetCategoryHasError;
  @override
  final bool isGEtCategorySuccess;
  @override
  final bool isDeleteCategoryhasErro;
  @override
  final bool isDeleteCategorySuccess;
  @override
  final GetAllCategories? getallCategory;
  @override
  final String? messag;

  @override
  String toString() {
    return 'CategoryState(isLoading: $isLoading, isAddcateHasError: $isAddcateHasError, isAddCategorySuccess: $isAddCategorySuccess, isGetCategoryHasError: $isGetCategoryHasError, isGEtCategorySuccess: $isGEtCategorySuccess, isDeleteCategoryhasErro: $isDeleteCategoryhasErro, isDeleteCategorySuccess: $isDeleteCategorySuccess, getallCategory: $getallCategory, messag: $messag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isAddcateHasError, isAddcateHasError) ||
                other.isAddcateHasError == isAddcateHasError) &&
            (identical(other.isAddCategorySuccess, isAddCategorySuccess) ||
                other.isAddCategorySuccess == isAddCategorySuccess) &&
            (identical(other.isGetCategoryHasError, isGetCategoryHasError) ||
                other.isGetCategoryHasError == isGetCategoryHasError) &&
            (identical(other.isGEtCategorySuccess, isGEtCategorySuccess) ||
                other.isGEtCategorySuccess == isGEtCategorySuccess) &&
            (identical(
                    other.isDeleteCategoryhasErro, isDeleteCategoryhasErro) ||
                other.isDeleteCategoryhasErro == isDeleteCategoryhasErro) &&
            (identical(
                    other.isDeleteCategorySuccess, isDeleteCategorySuccess) ||
                other.isDeleteCategorySuccess == isDeleteCategorySuccess) &&
            (identical(other.getallCategory, getallCategory) ||
                other.getallCategory == getallCategory) &&
            (identical(other.messag, messag) || other.messag == messag));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isAddcateHasError,
      isAddCategorySuccess,
      isGetCategoryHasError,
      isGEtCategorySuccess,
      isDeleteCategoryhasErro,
      isDeleteCategorySuccess,
      getallCategory,
      messag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryStateImplCopyWith<_$CategoryStateImpl> get copyWith =>
      __$$CategoryStateImplCopyWithImpl<_$CategoryStateImpl>(this, _$identity);
}

abstract class _CategoryState implements CategoryState {
  const factory _CategoryState(
      {required final bool isLoading,
      required final bool isAddcateHasError,
      required final bool isAddCategorySuccess,
      required final bool isGetCategoryHasError,
      required final bool isGEtCategorySuccess,
      required final bool isDeleteCategoryhasErro,
      required final bool isDeleteCategorySuccess,
      final GetAllCategories? getallCategory,
      final String? messag}) = _$CategoryStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isAddcateHasError;
  @override
  bool get isAddCategorySuccess;
  @override
  bool get isGetCategoryHasError;
  @override
  bool get isGEtCategorySuccess;
  @override
  bool get isDeleteCategoryhasErro;
  @override
  bool get isDeleteCategorySuccess;
  @override
  GetAllCategories? get getallCategory;
  @override
  String? get messag;
  @override
  @JsonKey(ignore: true)
  _$$CategoryStateImplCopyWith<_$CategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
