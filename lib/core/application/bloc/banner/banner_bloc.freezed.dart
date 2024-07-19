// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BannerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File imageUrl) addBanner,
    required TResult Function() getBanner,
    required TResult Function(String bannerId) deleteBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File imageUrl)? addBanner,
    TResult? Function()? getBanner,
    TResult? Function(String bannerId)? deleteBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File imageUrl)? addBanner,
    TResult Function()? getBanner,
    TResult Function(String bannerId)? deleteBanner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addBanner value) addBanner,
    required TResult Function(getBanner value) getBanner,
    required TResult Function(deleteBanner value) deleteBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addBanner value)? addBanner,
    TResult? Function(getBanner value)? getBanner,
    TResult? Function(deleteBanner value)? deleteBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addBanner value)? addBanner,
    TResult Function(getBanner value)? getBanner,
    TResult Function(deleteBanner value)? deleteBanner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerEventCopyWith<$Res> {
  factory $BannerEventCopyWith(
          BannerEvent value, $Res Function(BannerEvent) then) =
      _$BannerEventCopyWithImpl<$Res, BannerEvent>;
}

/// @nodoc
class _$BannerEventCopyWithImpl<$Res, $Val extends BannerEvent>
    implements $BannerEventCopyWith<$Res> {
  _$BannerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$addBannerImplCopyWith<$Res> {
  factory _$$addBannerImplCopyWith(
          _$addBannerImpl value, $Res Function(_$addBannerImpl) then) =
      __$$addBannerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File imageUrl});
}

/// @nodoc
class __$$addBannerImplCopyWithImpl<$Res>
    extends _$BannerEventCopyWithImpl<$Res, _$addBannerImpl>
    implements _$$addBannerImplCopyWith<$Res> {
  __$$addBannerImplCopyWithImpl(
      _$addBannerImpl _value, $Res Function(_$addBannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$addBannerImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$addBannerImpl implements addBanner {
  const _$addBannerImpl({required this.imageUrl});

  @override
  final File imageUrl;

  @override
  String toString() {
    return 'BannerEvent.addBanner(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addBannerImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addBannerImplCopyWith<_$addBannerImpl> get copyWith =>
      __$$addBannerImplCopyWithImpl<_$addBannerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File imageUrl) addBanner,
    required TResult Function() getBanner,
    required TResult Function(String bannerId) deleteBanner,
  }) {
    return addBanner(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File imageUrl)? addBanner,
    TResult? Function()? getBanner,
    TResult? Function(String bannerId)? deleteBanner,
  }) {
    return addBanner?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File imageUrl)? addBanner,
    TResult Function()? getBanner,
    TResult Function(String bannerId)? deleteBanner,
    required TResult orElse(),
  }) {
    if (addBanner != null) {
      return addBanner(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addBanner value) addBanner,
    required TResult Function(getBanner value) getBanner,
    required TResult Function(deleteBanner value) deleteBanner,
  }) {
    return addBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addBanner value)? addBanner,
    TResult? Function(getBanner value)? getBanner,
    TResult? Function(deleteBanner value)? deleteBanner,
  }) {
    return addBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addBanner value)? addBanner,
    TResult Function(getBanner value)? getBanner,
    TResult Function(deleteBanner value)? deleteBanner,
    required TResult orElse(),
  }) {
    if (addBanner != null) {
      return addBanner(this);
    }
    return orElse();
  }
}

abstract class addBanner implements BannerEvent {
  const factory addBanner({required final File imageUrl}) = _$addBannerImpl;

  File get imageUrl;
  @JsonKey(ignore: true)
  _$$addBannerImplCopyWith<_$addBannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getBannerImplCopyWith<$Res> {
  factory _$$getBannerImplCopyWith(
          _$getBannerImpl value, $Res Function(_$getBannerImpl) then) =
      __$$getBannerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getBannerImplCopyWithImpl<$Res>
    extends _$BannerEventCopyWithImpl<$Res, _$getBannerImpl>
    implements _$$getBannerImplCopyWith<$Res> {
  __$$getBannerImplCopyWithImpl(
      _$getBannerImpl _value, $Res Function(_$getBannerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getBannerImpl implements getBanner {
  const _$getBannerImpl();

  @override
  String toString() {
    return 'BannerEvent.getBanner()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getBannerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File imageUrl) addBanner,
    required TResult Function() getBanner,
    required TResult Function(String bannerId) deleteBanner,
  }) {
    return getBanner();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File imageUrl)? addBanner,
    TResult? Function()? getBanner,
    TResult? Function(String bannerId)? deleteBanner,
  }) {
    return getBanner?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File imageUrl)? addBanner,
    TResult Function()? getBanner,
    TResult Function(String bannerId)? deleteBanner,
    required TResult orElse(),
  }) {
    if (getBanner != null) {
      return getBanner();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addBanner value) addBanner,
    required TResult Function(getBanner value) getBanner,
    required TResult Function(deleteBanner value) deleteBanner,
  }) {
    return getBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addBanner value)? addBanner,
    TResult? Function(getBanner value)? getBanner,
    TResult? Function(deleteBanner value)? deleteBanner,
  }) {
    return getBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addBanner value)? addBanner,
    TResult Function(getBanner value)? getBanner,
    TResult Function(deleteBanner value)? deleteBanner,
    required TResult orElse(),
  }) {
    if (getBanner != null) {
      return getBanner(this);
    }
    return orElse();
  }
}

abstract class getBanner implements BannerEvent {
  const factory getBanner() = _$getBannerImpl;
}

/// @nodoc
abstract class _$$deleteBannerImplCopyWith<$Res> {
  factory _$$deleteBannerImplCopyWith(
          _$deleteBannerImpl value, $Res Function(_$deleteBannerImpl) then) =
      __$$deleteBannerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bannerId});
}

/// @nodoc
class __$$deleteBannerImplCopyWithImpl<$Res>
    extends _$BannerEventCopyWithImpl<$Res, _$deleteBannerImpl>
    implements _$$deleteBannerImplCopyWith<$Res> {
  __$$deleteBannerImplCopyWithImpl(
      _$deleteBannerImpl _value, $Res Function(_$deleteBannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannerId = null,
  }) {
    return _then(_$deleteBannerImpl(
      null == bannerId
          ? _value.bannerId
          : bannerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$deleteBannerImpl implements deleteBanner {
  const _$deleteBannerImpl(this.bannerId);

  @override
  final String bannerId;

  @override
  String toString() {
    return 'BannerEvent.deleteBanner(bannerId: $bannerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$deleteBannerImpl &&
            (identical(other.bannerId, bannerId) ||
                other.bannerId == bannerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bannerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$deleteBannerImplCopyWith<_$deleteBannerImpl> get copyWith =>
      __$$deleteBannerImplCopyWithImpl<_$deleteBannerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File imageUrl) addBanner,
    required TResult Function() getBanner,
    required TResult Function(String bannerId) deleteBanner,
  }) {
    return deleteBanner(bannerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File imageUrl)? addBanner,
    TResult? Function()? getBanner,
    TResult? Function(String bannerId)? deleteBanner,
  }) {
    return deleteBanner?.call(bannerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File imageUrl)? addBanner,
    TResult Function()? getBanner,
    TResult Function(String bannerId)? deleteBanner,
    required TResult orElse(),
  }) {
    if (deleteBanner != null) {
      return deleteBanner(bannerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addBanner value) addBanner,
    required TResult Function(getBanner value) getBanner,
    required TResult Function(deleteBanner value) deleteBanner,
  }) {
    return deleteBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addBanner value)? addBanner,
    TResult? Function(getBanner value)? getBanner,
    TResult? Function(deleteBanner value)? deleteBanner,
  }) {
    return deleteBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addBanner value)? addBanner,
    TResult Function(getBanner value)? getBanner,
    TResult Function(deleteBanner value)? deleteBanner,
    required TResult orElse(),
  }) {
    if (deleteBanner != null) {
      return deleteBanner(this);
    }
    return orElse();
  }
}

abstract class deleteBanner implements BannerEvent {
  const factory deleteBanner(final String bannerId) = _$deleteBannerImpl;

  String get bannerId;
  @JsonKey(ignore: true)
  _$$deleteBannerImplCopyWith<_$deleteBannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BannerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successmsg) loaded,
    required TResult Function(String errormsg) errorSt,
    required TResult Function(List<Banner> banners) getBannerSuccess,
    required TResult Function(String dltErrmsg) deleteBannerSuccess,
    required TResult Function(String errormsg) deleteBannerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successmsg)? loaded,
    TResult? Function(String errormsg)? errorSt,
    TResult? Function(List<Banner> banners)? getBannerSuccess,
    TResult? Function(String dltErrmsg)? deleteBannerSuccess,
    TResult? Function(String errormsg)? deleteBannerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successmsg)? loaded,
    TResult Function(String errormsg)? errorSt,
    TResult Function(List<Banner> banners)? getBannerSuccess,
    TResult Function(String dltErrmsg)? deleteBannerSuccess,
    TResult Function(String errormsg)? deleteBannerError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorSt value) errorSt,
    required TResult Function(GetBannerSuccess value) getBannerSuccess,
    required TResult Function(DeleteBannerSuccess value) deleteBannerSuccess,
    required TResult Function(DeleteBannerError value) deleteBannerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorSt value)? errorSt,
    TResult? Function(GetBannerSuccess value)? getBannerSuccess,
    TResult? Function(DeleteBannerSuccess value)? deleteBannerSuccess,
    TResult? Function(DeleteBannerError value)? deleteBannerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorSt value)? errorSt,
    TResult Function(GetBannerSuccess value)? getBannerSuccess,
    TResult Function(DeleteBannerSuccess value)? deleteBannerSuccess,
    TResult Function(DeleteBannerError value)? deleteBannerError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerStateCopyWith<$Res> {
  factory $BannerStateCopyWith(
          BannerState value, $Res Function(BannerState) then) =
      _$BannerStateCopyWithImpl<$Res, BannerState>;
}

/// @nodoc
class _$BannerStateCopyWithImpl<$Res, $Val extends BannerState>
    implements $BannerStateCopyWith<$Res> {
  _$BannerStateCopyWithImpl(this._value, this._then);

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
    extends _$BannerStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'BannerState.initial()';
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
    required TResult Function(String successmsg) loaded,
    required TResult Function(String errormsg) errorSt,
    required TResult Function(List<Banner> banners) getBannerSuccess,
    required TResult Function(String dltErrmsg) deleteBannerSuccess,
    required TResult Function(String errormsg) deleteBannerError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successmsg)? loaded,
    TResult? Function(String errormsg)? errorSt,
    TResult? Function(List<Banner> banners)? getBannerSuccess,
    TResult? Function(String dltErrmsg)? deleteBannerSuccess,
    TResult? Function(String errormsg)? deleteBannerError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successmsg)? loaded,
    TResult Function(String errormsg)? errorSt,
    TResult Function(List<Banner> banners)? getBannerSuccess,
    TResult Function(String dltErrmsg)? deleteBannerSuccess,
    TResult Function(String errormsg)? deleteBannerError,
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
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorSt value) errorSt,
    required TResult Function(GetBannerSuccess value) getBannerSuccess,
    required TResult Function(DeleteBannerSuccess value) deleteBannerSuccess,
    required TResult Function(DeleteBannerError value) deleteBannerError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorSt value)? errorSt,
    TResult? Function(GetBannerSuccess value)? getBannerSuccess,
    TResult? Function(DeleteBannerSuccess value)? deleteBannerSuccess,
    TResult? Function(DeleteBannerError value)? deleteBannerError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorSt value)? errorSt,
    TResult Function(GetBannerSuccess value)? getBannerSuccess,
    TResult Function(DeleteBannerSuccess value)? deleteBannerSuccess,
    TResult Function(DeleteBannerError value)? deleteBannerError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BannerState {
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
    extends _$BannerStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'BannerState.loading()';
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
    required TResult Function(String successmsg) loaded,
    required TResult Function(String errormsg) errorSt,
    required TResult Function(List<Banner> banners) getBannerSuccess,
    required TResult Function(String dltErrmsg) deleteBannerSuccess,
    required TResult Function(String errormsg) deleteBannerError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successmsg)? loaded,
    TResult? Function(String errormsg)? errorSt,
    TResult? Function(List<Banner> banners)? getBannerSuccess,
    TResult? Function(String dltErrmsg)? deleteBannerSuccess,
    TResult? Function(String errormsg)? deleteBannerError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successmsg)? loaded,
    TResult Function(String errormsg)? errorSt,
    TResult Function(List<Banner> banners)? getBannerSuccess,
    TResult Function(String dltErrmsg)? deleteBannerSuccess,
    TResult Function(String errormsg)? deleteBannerError,
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
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorSt value) errorSt,
    required TResult Function(GetBannerSuccess value) getBannerSuccess,
    required TResult Function(DeleteBannerSuccess value) deleteBannerSuccess,
    required TResult Function(DeleteBannerError value) deleteBannerError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorSt value)? errorSt,
    TResult? Function(GetBannerSuccess value)? getBannerSuccess,
    TResult? Function(DeleteBannerSuccess value)? deleteBannerSuccess,
    TResult? Function(DeleteBannerError value)? deleteBannerError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorSt value)? errorSt,
    TResult Function(GetBannerSuccess value)? getBannerSuccess,
    TResult Function(DeleteBannerSuccess value)? deleteBannerSuccess,
    TResult Function(DeleteBannerError value)? deleteBannerError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements BannerState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String successmsg});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successmsg = null,
  }) {
    return _then(_$LoadedImpl(
      successmsg: null == successmsg
          ? _value.successmsg
          : successmsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl({required this.successmsg});

  @override
  final String successmsg;

  @override
  String toString() {
    return 'BannerState.loaded(successmsg: $successmsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.successmsg, successmsg) ||
                other.successmsg == successmsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successmsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successmsg) loaded,
    required TResult Function(String errormsg) errorSt,
    required TResult Function(List<Banner> banners) getBannerSuccess,
    required TResult Function(String dltErrmsg) deleteBannerSuccess,
    required TResult Function(String errormsg) deleteBannerError,
  }) {
    return loaded(successmsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successmsg)? loaded,
    TResult? Function(String errormsg)? errorSt,
    TResult? Function(List<Banner> banners)? getBannerSuccess,
    TResult? Function(String dltErrmsg)? deleteBannerSuccess,
    TResult? Function(String errormsg)? deleteBannerError,
  }) {
    return loaded?.call(successmsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successmsg)? loaded,
    TResult Function(String errormsg)? errorSt,
    TResult Function(List<Banner> banners)? getBannerSuccess,
    TResult Function(String dltErrmsg)? deleteBannerSuccess,
    TResult Function(String errormsg)? deleteBannerError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(successmsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorSt value) errorSt,
    required TResult Function(GetBannerSuccess value) getBannerSuccess,
    required TResult Function(DeleteBannerSuccess value) deleteBannerSuccess,
    required TResult Function(DeleteBannerError value) deleteBannerError,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorSt value)? errorSt,
    TResult? Function(GetBannerSuccess value)? getBannerSuccess,
    TResult? Function(DeleteBannerSuccess value)? deleteBannerSuccess,
    TResult? Function(DeleteBannerError value)? deleteBannerError,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorSt value)? errorSt,
    TResult Function(GetBannerSuccess value)? getBannerSuccess,
    TResult Function(DeleteBannerSuccess value)? deleteBannerSuccess,
    TResult Function(DeleteBannerError value)? deleteBannerError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements BannerState {
  const factory Loaded({required final String successmsg}) = _$LoadedImpl;

  String get successmsg;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStImplCopyWith<$Res> {
  factory _$$ErrorStImplCopyWith(
          _$ErrorStImpl value, $Res Function(_$ErrorStImpl) then) =
      __$$ErrorStImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errormsg});
}

/// @nodoc
class __$$ErrorStImplCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$ErrorStImpl>
    implements _$$ErrorStImplCopyWith<$Res> {
  __$$ErrorStImplCopyWithImpl(
      _$ErrorStImpl _value, $Res Function(_$ErrorStImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errormsg = null,
  }) {
    return _then(_$ErrorStImpl(
      errormsg: null == errormsg
          ? _value.errormsg
          : errormsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStImpl implements ErrorSt {
  const _$ErrorStImpl({required this.errormsg});

  @override
  final String errormsg;

  @override
  String toString() {
    return 'BannerState.errorSt(errormsg: $errormsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStImpl &&
            (identical(other.errormsg, errormsg) ||
                other.errormsg == errormsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errormsg);

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
    required TResult Function(String successmsg) loaded,
    required TResult Function(String errormsg) errorSt,
    required TResult Function(List<Banner> banners) getBannerSuccess,
    required TResult Function(String dltErrmsg) deleteBannerSuccess,
    required TResult Function(String errormsg) deleteBannerError,
  }) {
    return errorSt(errormsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successmsg)? loaded,
    TResult? Function(String errormsg)? errorSt,
    TResult? Function(List<Banner> banners)? getBannerSuccess,
    TResult? Function(String dltErrmsg)? deleteBannerSuccess,
    TResult? Function(String errormsg)? deleteBannerError,
  }) {
    return errorSt?.call(errormsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successmsg)? loaded,
    TResult Function(String errormsg)? errorSt,
    TResult Function(List<Banner> banners)? getBannerSuccess,
    TResult Function(String dltErrmsg)? deleteBannerSuccess,
    TResult Function(String errormsg)? deleteBannerError,
    required TResult orElse(),
  }) {
    if (errorSt != null) {
      return errorSt(errormsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorSt value) errorSt,
    required TResult Function(GetBannerSuccess value) getBannerSuccess,
    required TResult Function(DeleteBannerSuccess value) deleteBannerSuccess,
    required TResult Function(DeleteBannerError value) deleteBannerError,
  }) {
    return errorSt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorSt value)? errorSt,
    TResult? Function(GetBannerSuccess value)? getBannerSuccess,
    TResult? Function(DeleteBannerSuccess value)? deleteBannerSuccess,
    TResult? Function(DeleteBannerError value)? deleteBannerError,
  }) {
    return errorSt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorSt value)? errorSt,
    TResult Function(GetBannerSuccess value)? getBannerSuccess,
    TResult Function(DeleteBannerSuccess value)? deleteBannerSuccess,
    TResult Function(DeleteBannerError value)? deleteBannerError,
    required TResult orElse(),
  }) {
    if (errorSt != null) {
      return errorSt(this);
    }
    return orElse();
  }
}

abstract class ErrorSt implements BannerState {
  const factory ErrorSt({required final String errormsg}) = _$ErrorStImpl;

  String get errormsg;
  @JsonKey(ignore: true)
  _$$ErrorStImplCopyWith<_$ErrorStImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBannerSuccessImplCopyWith<$Res> {
  factory _$$GetBannerSuccessImplCopyWith(_$GetBannerSuccessImpl value,
          $Res Function(_$GetBannerSuccessImpl) then) =
      __$$GetBannerSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Banner> banners});
}

/// @nodoc
class __$$GetBannerSuccessImplCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$GetBannerSuccessImpl>
    implements _$$GetBannerSuccessImplCopyWith<$Res> {
  __$$GetBannerSuccessImplCopyWithImpl(_$GetBannerSuccessImpl _value,
      $Res Function(_$GetBannerSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = null,
  }) {
    return _then(_$GetBannerSuccessImpl(
      banners: null == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<Banner>,
    ));
  }
}

/// @nodoc

class _$GetBannerSuccessImpl implements GetBannerSuccess {
  const _$GetBannerSuccessImpl({required final List<Banner> banners})
      : _banners = banners;

  final List<Banner> _banners;
  @override
  List<Banner> get banners {
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banners);
  }

  @override
  String toString() {
    return 'BannerState.getBannerSuccess(banners: $banners)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBannerSuccessImpl &&
            const DeepCollectionEquality().equals(other._banners, _banners));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_banners));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBannerSuccessImplCopyWith<_$GetBannerSuccessImpl> get copyWith =>
      __$$GetBannerSuccessImplCopyWithImpl<_$GetBannerSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successmsg) loaded,
    required TResult Function(String errormsg) errorSt,
    required TResult Function(List<Banner> banners) getBannerSuccess,
    required TResult Function(String dltErrmsg) deleteBannerSuccess,
    required TResult Function(String errormsg) deleteBannerError,
  }) {
    return getBannerSuccess(banners);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successmsg)? loaded,
    TResult? Function(String errormsg)? errorSt,
    TResult? Function(List<Banner> banners)? getBannerSuccess,
    TResult? Function(String dltErrmsg)? deleteBannerSuccess,
    TResult? Function(String errormsg)? deleteBannerError,
  }) {
    return getBannerSuccess?.call(banners);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successmsg)? loaded,
    TResult Function(String errormsg)? errorSt,
    TResult Function(List<Banner> banners)? getBannerSuccess,
    TResult Function(String dltErrmsg)? deleteBannerSuccess,
    TResult Function(String errormsg)? deleteBannerError,
    required TResult orElse(),
  }) {
    if (getBannerSuccess != null) {
      return getBannerSuccess(banners);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorSt value) errorSt,
    required TResult Function(GetBannerSuccess value) getBannerSuccess,
    required TResult Function(DeleteBannerSuccess value) deleteBannerSuccess,
    required TResult Function(DeleteBannerError value) deleteBannerError,
  }) {
    return getBannerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorSt value)? errorSt,
    TResult? Function(GetBannerSuccess value)? getBannerSuccess,
    TResult? Function(DeleteBannerSuccess value)? deleteBannerSuccess,
    TResult? Function(DeleteBannerError value)? deleteBannerError,
  }) {
    return getBannerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorSt value)? errorSt,
    TResult Function(GetBannerSuccess value)? getBannerSuccess,
    TResult Function(DeleteBannerSuccess value)? deleteBannerSuccess,
    TResult Function(DeleteBannerError value)? deleteBannerError,
    required TResult orElse(),
  }) {
    if (getBannerSuccess != null) {
      return getBannerSuccess(this);
    }
    return orElse();
  }
}

abstract class GetBannerSuccess implements BannerState {
  const factory GetBannerSuccess({required final List<Banner> banners}) =
      _$GetBannerSuccessImpl;

  List<Banner> get banners;
  @JsonKey(ignore: true)
  _$$GetBannerSuccessImplCopyWith<_$GetBannerSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBannerSuccessImplCopyWith<$Res> {
  factory _$$DeleteBannerSuccessImplCopyWith(_$DeleteBannerSuccessImpl value,
          $Res Function(_$DeleteBannerSuccessImpl) then) =
      __$$DeleteBannerSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String dltErrmsg});
}

/// @nodoc
class __$$DeleteBannerSuccessImplCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$DeleteBannerSuccessImpl>
    implements _$$DeleteBannerSuccessImplCopyWith<$Res> {
  __$$DeleteBannerSuccessImplCopyWithImpl(_$DeleteBannerSuccessImpl _value,
      $Res Function(_$DeleteBannerSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dltErrmsg = null,
  }) {
    return _then(_$DeleteBannerSuccessImpl(
      dltErrmsg: null == dltErrmsg
          ? _value.dltErrmsg
          : dltErrmsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteBannerSuccessImpl implements DeleteBannerSuccess {
  const _$DeleteBannerSuccessImpl({required this.dltErrmsg});

  @override
  final String dltErrmsg;

  @override
  String toString() {
    return 'BannerState.deleteBannerSuccess(dltErrmsg: $dltErrmsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBannerSuccessImpl &&
            (identical(other.dltErrmsg, dltErrmsg) ||
                other.dltErrmsg == dltErrmsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dltErrmsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBannerSuccessImplCopyWith<_$DeleteBannerSuccessImpl> get copyWith =>
      __$$DeleteBannerSuccessImplCopyWithImpl<_$DeleteBannerSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successmsg) loaded,
    required TResult Function(String errormsg) errorSt,
    required TResult Function(List<Banner> banners) getBannerSuccess,
    required TResult Function(String dltErrmsg) deleteBannerSuccess,
    required TResult Function(String errormsg) deleteBannerError,
  }) {
    return deleteBannerSuccess(dltErrmsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successmsg)? loaded,
    TResult? Function(String errormsg)? errorSt,
    TResult? Function(List<Banner> banners)? getBannerSuccess,
    TResult? Function(String dltErrmsg)? deleteBannerSuccess,
    TResult? Function(String errormsg)? deleteBannerError,
  }) {
    return deleteBannerSuccess?.call(dltErrmsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successmsg)? loaded,
    TResult Function(String errormsg)? errorSt,
    TResult Function(List<Banner> banners)? getBannerSuccess,
    TResult Function(String dltErrmsg)? deleteBannerSuccess,
    TResult Function(String errormsg)? deleteBannerError,
    required TResult orElse(),
  }) {
    if (deleteBannerSuccess != null) {
      return deleteBannerSuccess(dltErrmsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorSt value) errorSt,
    required TResult Function(GetBannerSuccess value) getBannerSuccess,
    required TResult Function(DeleteBannerSuccess value) deleteBannerSuccess,
    required TResult Function(DeleteBannerError value) deleteBannerError,
  }) {
    return deleteBannerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorSt value)? errorSt,
    TResult? Function(GetBannerSuccess value)? getBannerSuccess,
    TResult? Function(DeleteBannerSuccess value)? deleteBannerSuccess,
    TResult? Function(DeleteBannerError value)? deleteBannerError,
  }) {
    return deleteBannerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorSt value)? errorSt,
    TResult Function(GetBannerSuccess value)? getBannerSuccess,
    TResult Function(DeleteBannerSuccess value)? deleteBannerSuccess,
    TResult Function(DeleteBannerError value)? deleteBannerError,
    required TResult orElse(),
  }) {
    if (deleteBannerSuccess != null) {
      return deleteBannerSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteBannerSuccess implements BannerState {
  const factory DeleteBannerSuccess({required final String dltErrmsg}) =
      _$DeleteBannerSuccessImpl;

  String get dltErrmsg;
  @JsonKey(ignore: true)
  _$$DeleteBannerSuccessImplCopyWith<_$DeleteBannerSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBannerErrorImplCopyWith<$Res> {
  factory _$$DeleteBannerErrorImplCopyWith(_$DeleteBannerErrorImpl value,
          $Res Function(_$DeleteBannerErrorImpl) then) =
      __$$DeleteBannerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errormsg});
}

/// @nodoc
class __$$DeleteBannerErrorImplCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$DeleteBannerErrorImpl>
    implements _$$DeleteBannerErrorImplCopyWith<$Res> {
  __$$DeleteBannerErrorImplCopyWithImpl(_$DeleteBannerErrorImpl _value,
      $Res Function(_$DeleteBannerErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errormsg = null,
  }) {
    return _then(_$DeleteBannerErrorImpl(
      errormsg: null == errormsg
          ? _value.errormsg
          : errormsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteBannerErrorImpl implements DeleteBannerError {
  const _$DeleteBannerErrorImpl({required this.errormsg});

  @override
  final String errormsg;

  @override
  String toString() {
    return 'BannerState.deleteBannerError(errormsg: $errormsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBannerErrorImpl &&
            (identical(other.errormsg, errormsg) ||
                other.errormsg == errormsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errormsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBannerErrorImplCopyWith<_$DeleteBannerErrorImpl> get copyWith =>
      __$$DeleteBannerErrorImplCopyWithImpl<_$DeleteBannerErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successmsg) loaded,
    required TResult Function(String errormsg) errorSt,
    required TResult Function(List<Banner> banners) getBannerSuccess,
    required TResult Function(String dltErrmsg) deleteBannerSuccess,
    required TResult Function(String errormsg) deleteBannerError,
  }) {
    return deleteBannerError(errormsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successmsg)? loaded,
    TResult? Function(String errormsg)? errorSt,
    TResult? Function(List<Banner> banners)? getBannerSuccess,
    TResult? Function(String dltErrmsg)? deleteBannerSuccess,
    TResult? Function(String errormsg)? deleteBannerError,
  }) {
    return deleteBannerError?.call(errormsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successmsg)? loaded,
    TResult Function(String errormsg)? errorSt,
    TResult Function(List<Banner> banners)? getBannerSuccess,
    TResult Function(String dltErrmsg)? deleteBannerSuccess,
    TResult Function(String errormsg)? deleteBannerError,
    required TResult orElse(),
  }) {
    if (deleteBannerError != null) {
      return deleteBannerError(errormsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorSt value) errorSt,
    required TResult Function(GetBannerSuccess value) getBannerSuccess,
    required TResult Function(DeleteBannerSuccess value) deleteBannerSuccess,
    required TResult Function(DeleteBannerError value) deleteBannerError,
  }) {
    return deleteBannerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorSt value)? errorSt,
    TResult? Function(GetBannerSuccess value)? getBannerSuccess,
    TResult? Function(DeleteBannerSuccess value)? deleteBannerSuccess,
    TResult? Function(DeleteBannerError value)? deleteBannerError,
  }) {
    return deleteBannerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorSt value)? errorSt,
    TResult Function(GetBannerSuccess value)? getBannerSuccess,
    TResult Function(DeleteBannerSuccess value)? deleteBannerSuccess,
    TResult Function(DeleteBannerError value)? deleteBannerError,
    required TResult orElse(),
  }) {
    if (deleteBannerError != null) {
      return deleteBannerError(this);
    }
    return orElse();
  }
}

abstract class DeleteBannerError implements BannerState {
  const factory DeleteBannerError({required final String errormsg}) =
      _$DeleteBannerErrorImpl;

  String get errormsg;
  @JsonKey(ignore: true)
  _$$DeleteBannerErrorImplCopyWith<_$DeleteBannerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
