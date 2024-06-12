// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(int orderId) cancelOrders,
    required TResult Function(int id, String statuc) updateOrderStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(int orderId)? cancelOrders,
    TResult? Function(int id, String statuc)? updateOrderStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(int orderId)? cancelOrders,
    TResult Function(int id, String statuc)? updateOrderStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_CancelOrders value) cancelOrders,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_CancelOrders value)? cancelOrders,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_CancelOrders value)? cancelOrders,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res, OrdersEvent>;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res, $Val extends OrdersEvent>
    implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetOrdersImplCopyWith<$Res> {
  factory _$$GetOrdersImplCopyWith(
          _$GetOrdersImpl value, $Res Function(_$GetOrdersImpl) then) =
      __$$GetOrdersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOrdersImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$GetOrdersImpl>
    implements _$$GetOrdersImplCopyWith<$Res> {
  __$$GetOrdersImplCopyWithImpl(
      _$GetOrdersImpl _value, $Res Function(_$GetOrdersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetOrdersImpl implements _GetOrders {
  const _$GetOrdersImpl();

  @override
  String toString() {
    return 'OrdersEvent.getOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOrdersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(int orderId) cancelOrders,
    required TResult Function(int id, String statuc) updateOrderStatus,
  }) {
    return getOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(int orderId)? cancelOrders,
    TResult? Function(int id, String statuc)? updateOrderStatus,
  }) {
    return getOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(int orderId)? cancelOrders,
    TResult Function(int id, String statuc)? updateOrderStatus,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_CancelOrders value) cancelOrders,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
  }) {
    return getOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_CancelOrders value)? cancelOrders,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
  }) {
    return getOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_CancelOrders value)? cancelOrders,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(this);
    }
    return orElse();
  }
}

abstract class _GetOrders implements OrdersEvent {
  const factory _GetOrders() = _$GetOrdersImpl;
}

/// @nodoc
abstract class _$$CancelOrdersImplCopyWith<$Res> {
  factory _$$CancelOrdersImplCopyWith(
          _$CancelOrdersImpl value, $Res Function(_$CancelOrdersImpl) then) =
      __$$CancelOrdersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$CancelOrdersImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$CancelOrdersImpl>
    implements _$$CancelOrdersImplCopyWith<$Res> {
  __$$CancelOrdersImplCopyWithImpl(
      _$CancelOrdersImpl _value, $Res Function(_$CancelOrdersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$CancelOrdersImpl(
      null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CancelOrdersImpl implements _CancelOrders {
  const _$CancelOrdersImpl(this.orderId);

  @override
  final int orderId;

  @override
  String toString() {
    return 'OrdersEvent.cancelOrders(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelOrdersImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelOrdersImplCopyWith<_$CancelOrdersImpl> get copyWith =>
      __$$CancelOrdersImplCopyWithImpl<_$CancelOrdersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(int orderId) cancelOrders,
    required TResult Function(int id, String statuc) updateOrderStatus,
  }) {
    return cancelOrders(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(int orderId)? cancelOrders,
    TResult? Function(int id, String statuc)? updateOrderStatus,
  }) {
    return cancelOrders?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(int orderId)? cancelOrders,
    TResult Function(int id, String statuc)? updateOrderStatus,
    required TResult orElse(),
  }) {
    if (cancelOrders != null) {
      return cancelOrders(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_CancelOrders value) cancelOrders,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
  }) {
    return cancelOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_CancelOrders value)? cancelOrders,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
  }) {
    return cancelOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_CancelOrders value)? cancelOrders,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    required TResult orElse(),
  }) {
    if (cancelOrders != null) {
      return cancelOrders(this);
    }
    return orElse();
  }
}

abstract class _CancelOrders implements OrdersEvent {
  const factory _CancelOrders(final int orderId) = _$CancelOrdersImpl;

  int get orderId;
  @JsonKey(ignore: true)
  _$$CancelOrdersImplCopyWith<_$CancelOrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateOrderStatusImplCopyWith<$Res> {
  factory _$$UpdateOrderStatusImplCopyWith(_$UpdateOrderStatusImpl value,
          $Res Function(_$UpdateOrderStatusImpl) then) =
      __$$UpdateOrderStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String statuc});
}

/// @nodoc
class __$$UpdateOrderStatusImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$UpdateOrderStatusImpl>
    implements _$$UpdateOrderStatusImplCopyWith<$Res> {
  __$$UpdateOrderStatusImplCopyWithImpl(_$UpdateOrderStatusImpl _value,
      $Res Function(_$UpdateOrderStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? statuc = null,
  }) {
    return _then(_$UpdateOrderStatusImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      statuc: null == statuc
          ? _value.statuc
          : statuc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateOrderStatusImpl implements _UpdateOrderStatus {
  const _$UpdateOrderStatusImpl({required this.id, required this.statuc});

  @override
  final int id;
  @override
  final String statuc;

  @override
  String toString() {
    return 'OrdersEvent.updateOrderStatus(id: $id, statuc: $statuc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderStatusImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.statuc, statuc) || other.statuc == statuc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, statuc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOrderStatusImplCopyWith<_$UpdateOrderStatusImpl> get copyWith =>
      __$$UpdateOrderStatusImplCopyWithImpl<_$UpdateOrderStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(int orderId) cancelOrders,
    required TResult Function(int id, String statuc) updateOrderStatus,
  }) {
    return updateOrderStatus(id, statuc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(int orderId)? cancelOrders,
    TResult? Function(int id, String statuc)? updateOrderStatus,
  }) {
    return updateOrderStatus?.call(id, statuc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(int orderId)? cancelOrders,
    TResult Function(int id, String statuc)? updateOrderStatus,
    required TResult orElse(),
  }) {
    if (updateOrderStatus != null) {
      return updateOrderStatus(id, statuc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_CancelOrders value) cancelOrders,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
  }) {
    return updateOrderStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_CancelOrders value)? cancelOrders,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
  }) {
    return updateOrderStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_CancelOrders value)? cancelOrders,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    required TResult orElse(),
  }) {
    if (updateOrderStatus != null) {
      return updateOrderStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateOrderStatus implements OrdersEvent {
  const factory _UpdateOrderStatus(
      {required final int id,
      required final String statuc}) = _$UpdateOrderStatusImpl;

  int get id;
  String get statuc;
  @JsonKey(ignore: true)
  _$$UpdateOrderStatusImplCopyWith<_$UpdateOrderStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrdersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Orderlist> orders) getSuccess,
    required TResult Function(String errmsg) getFailure,
    required TResult Function(String successmsg) cancelOrderSucces,
    required TResult Function(String errmsg) cancelOrderFailure,
    required TResult Function() updateOrderSuccess,
    required TResult Function(String errormsg) updateOrderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Orderlist> orders)? getSuccess,
    TResult? Function(String errmsg)? getFailure,
    TResult? Function(String successmsg)? cancelOrderSucces,
    TResult? Function(String errmsg)? cancelOrderFailure,
    TResult? Function()? updateOrderSuccess,
    TResult? Function(String errormsg)? updateOrderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Orderlist> orders)? getSuccess,
    TResult Function(String errmsg)? getFailure,
    TResult Function(String successmsg)? cancelOrderSucces,
    TResult Function(String errmsg)? cancelOrderFailure,
    TResult Function()? updateOrderSuccess,
    TResult Function(String errormsg)? updateOrderFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initial value) initial,
    required TResult Function(GetOrdersLoading value) loading,
    required TResult Function(GetOrdersSuccess value) getSuccess,
    required TResult Function(GetOrdersFailure value) getFailure,
    required TResult Function(CancelOrderSuccess value) cancelOrderSucces,
    required TResult Function(CancelOrderFailure value) cancelOrderFailure,
    required TResult Function(UpdateOrderSuccess value) updateOrderSuccess,
    required TResult Function(UpdateOrderFailure value) updateOrderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initial value)? initial,
    TResult? Function(GetOrdersLoading value)? loading,
    TResult? Function(GetOrdersSuccess value)? getSuccess,
    TResult? Function(GetOrdersFailure value)? getFailure,
    TResult? Function(CancelOrderSuccess value)? cancelOrderSucces,
    TResult? Function(CancelOrderFailure value)? cancelOrderFailure,
    TResult? Function(UpdateOrderSuccess value)? updateOrderSuccess,
    TResult? Function(UpdateOrderFailure value)? updateOrderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initial value)? initial,
    TResult Function(GetOrdersLoading value)? loading,
    TResult Function(GetOrdersSuccess value)? getSuccess,
    TResult Function(GetOrdersFailure value)? getFailure,
    TResult Function(CancelOrderSuccess value)? cancelOrderSucces,
    TResult Function(CancelOrderFailure value)? cancelOrderFailure,
    TResult Function(UpdateOrderSuccess value)? updateOrderSuccess,
    TResult Function(UpdateOrderFailure value)? updateOrderFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$initialImplCopyWith<$Res> {
  factory _$$initialImplCopyWith(
          _$initialImpl value, $Res Function(_$initialImpl) then) =
      __$$initialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$initialImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$initialImpl>
    implements _$$initialImplCopyWith<$Res> {
  __$$initialImplCopyWithImpl(
      _$initialImpl _value, $Res Function(_$initialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$initialImpl implements initial {
  const _$initialImpl();

  @override
  String toString() {
    return 'OrdersState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$initialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Orderlist> orders) getSuccess,
    required TResult Function(String errmsg) getFailure,
    required TResult Function(String successmsg) cancelOrderSucces,
    required TResult Function(String errmsg) cancelOrderFailure,
    required TResult Function() updateOrderSuccess,
    required TResult Function(String errormsg) updateOrderFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Orderlist> orders)? getSuccess,
    TResult? Function(String errmsg)? getFailure,
    TResult? Function(String successmsg)? cancelOrderSucces,
    TResult? Function(String errmsg)? cancelOrderFailure,
    TResult? Function()? updateOrderSuccess,
    TResult? Function(String errormsg)? updateOrderFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Orderlist> orders)? getSuccess,
    TResult Function(String errmsg)? getFailure,
    TResult Function(String successmsg)? cancelOrderSucces,
    TResult Function(String errmsg)? cancelOrderFailure,
    TResult Function()? updateOrderSuccess,
    TResult Function(String errormsg)? updateOrderFailure,
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
    required TResult Function(initial value) initial,
    required TResult Function(GetOrdersLoading value) loading,
    required TResult Function(GetOrdersSuccess value) getSuccess,
    required TResult Function(GetOrdersFailure value) getFailure,
    required TResult Function(CancelOrderSuccess value) cancelOrderSucces,
    required TResult Function(CancelOrderFailure value) cancelOrderFailure,
    required TResult Function(UpdateOrderSuccess value) updateOrderSuccess,
    required TResult Function(UpdateOrderFailure value) updateOrderFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initial value)? initial,
    TResult? Function(GetOrdersLoading value)? loading,
    TResult? Function(GetOrdersSuccess value)? getSuccess,
    TResult? Function(GetOrdersFailure value)? getFailure,
    TResult? Function(CancelOrderSuccess value)? cancelOrderSucces,
    TResult? Function(CancelOrderFailure value)? cancelOrderFailure,
    TResult? Function(UpdateOrderSuccess value)? updateOrderSuccess,
    TResult? Function(UpdateOrderFailure value)? updateOrderFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initial value)? initial,
    TResult Function(GetOrdersLoading value)? loading,
    TResult Function(GetOrdersSuccess value)? getSuccess,
    TResult Function(GetOrdersFailure value)? getFailure,
    TResult Function(CancelOrderSuccess value)? cancelOrderSucces,
    TResult Function(CancelOrderFailure value)? cancelOrderFailure,
    TResult Function(UpdateOrderSuccess value)? updateOrderSuccess,
    TResult Function(UpdateOrderFailure value)? updateOrderFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class initial implements OrdersState {
  const factory initial() = _$initialImpl;
}

/// @nodoc
abstract class _$$GetOrdersLoadingImplCopyWith<$Res> {
  factory _$$GetOrdersLoadingImplCopyWith(_$GetOrdersLoadingImpl value,
          $Res Function(_$GetOrdersLoadingImpl) then) =
      __$$GetOrdersLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOrdersLoadingImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$GetOrdersLoadingImpl>
    implements _$$GetOrdersLoadingImplCopyWith<$Res> {
  __$$GetOrdersLoadingImplCopyWithImpl(_$GetOrdersLoadingImpl _value,
      $Res Function(_$GetOrdersLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetOrdersLoadingImpl implements GetOrdersLoading {
  const _$GetOrdersLoadingImpl();

  @override
  String toString() {
    return 'OrdersState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOrdersLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Orderlist> orders) getSuccess,
    required TResult Function(String errmsg) getFailure,
    required TResult Function(String successmsg) cancelOrderSucces,
    required TResult Function(String errmsg) cancelOrderFailure,
    required TResult Function() updateOrderSuccess,
    required TResult Function(String errormsg) updateOrderFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Orderlist> orders)? getSuccess,
    TResult? Function(String errmsg)? getFailure,
    TResult? Function(String successmsg)? cancelOrderSucces,
    TResult? Function(String errmsg)? cancelOrderFailure,
    TResult? Function()? updateOrderSuccess,
    TResult? Function(String errormsg)? updateOrderFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Orderlist> orders)? getSuccess,
    TResult Function(String errmsg)? getFailure,
    TResult Function(String successmsg)? cancelOrderSucces,
    TResult Function(String errmsg)? cancelOrderFailure,
    TResult Function()? updateOrderSuccess,
    TResult Function(String errormsg)? updateOrderFailure,
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
    required TResult Function(initial value) initial,
    required TResult Function(GetOrdersLoading value) loading,
    required TResult Function(GetOrdersSuccess value) getSuccess,
    required TResult Function(GetOrdersFailure value) getFailure,
    required TResult Function(CancelOrderSuccess value) cancelOrderSucces,
    required TResult Function(CancelOrderFailure value) cancelOrderFailure,
    required TResult Function(UpdateOrderSuccess value) updateOrderSuccess,
    required TResult Function(UpdateOrderFailure value) updateOrderFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initial value)? initial,
    TResult? Function(GetOrdersLoading value)? loading,
    TResult? Function(GetOrdersSuccess value)? getSuccess,
    TResult? Function(GetOrdersFailure value)? getFailure,
    TResult? Function(CancelOrderSuccess value)? cancelOrderSucces,
    TResult? Function(CancelOrderFailure value)? cancelOrderFailure,
    TResult? Function(UpdateOrderSuccess value)? updateOrderSuccess,
    TResult? Function(UpdateOrderFailure value)? updateOrderFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initial value)? initial,
    TResult Function(GetOrdersLoading value)? loading,
    TResult Function(GetOrdersSuccess value)? getSuccess,
    TResult Function(GetOrdersFailure value)? getFailure,
    TResult Function(CancelOrderSuccess value)? cancelOrderSucces,
    TResult Function(CancelOrderFailure value)? cancelOrderFailure,
    TResult Function(UpdateOrderSuccess value)? updateOrderSuccess,
    TResult Function(UpdateOrderFailure value)? updateOrderFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetOrdersLoading implements OrdersState {
  const factory GetOrdersLoading() = _$GetOrdersLoadingImpl;
}

/// @nodoc
abstract class _$$GetOrdersSuccessImplCopyWith<$Res> {
  factory _$$GetOrdersSuccessImplCopyWith(_$GetOrdersSuccessImpl value,
          $Res Function(_$GetOrdersSuccessImpl) then) =
      __$$GetOrdersSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Orderlist> orders});
}

/// @nodoc
class __$$GetOrdersSuccessImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$GetOrdersSuccessImpl>
    implements _$$GetOrdersSuccessImplCopyWith<$Res> {
  __$$GetOrdersSuccessImplCopyWithImpl(_$GetOrdersSuccessImpl _value,
      $Res Function(_$GetOrdersSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$GetOrdersSuccessImpl(
      null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Orderlist>,
    ));
  }
}

/// @nodoc

class _$GetOrdersSuccessImpl implements GetOrdersSuccess {
  const _$GetOrdersSuccessImpl(final List<Orderlist> orders) : _orders = orders;

  final List<Orderlist> _orders;
  @override
  List<Orderlist> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'OrdersState.getSuccess(orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrdersSuccessImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrdersSuccessImplCopyWith<_$GetOrdersSuccessImpl> get copyWith =>
      __$$GetOrdersSuccessImplCopyWithImpl<_$GetOrdersSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Orderlist> orders) getSuccess,
    required TResult Function(String errmsg) getFailure,
    required TResult Function(String successmsg) cancelOrderSucces,
    required TResult Function(String errmsg) cancelOrderFailure,
    required TResult Function() updateOrderSuccess,
    required TResult Function(String errormsg) updateOrderFailure,
  }) {
    return getSuccess(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Orderlist> orders)? getSuccess,
    TResult? Function(String errmsg)? getFailure,
    TResult? Function(String successmsg)? cancelOrderSucces,
    TResult? Function(String errmsg)? cancelOrderFailure,
    TResult? Function()? updateOrderSuccess,
    TResult? Function(String errormsg)? updateOrderFailure,
  }) {
    return getSuccess?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Orderlist> orders)? getSuccess,
    TResult Function(String errmsg)? getFailure,
    TResult Function(String successmsg)? cancelOrderSucces,
    TResult Function(String errmsg)? cancelOrderFailure,
    TResult Function()? updateOrderSuccess,
    TResult Function(String errormsg)? updateOrderFailure,
    required TResult orElse(),
  }) {
    if (getSuccess != null) {
      return getSuccess(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initial value) initial,
    required TResult Function(GetOrdersLoading value) loading,
    required TResult Function(GetOrdersSuccess value) getSuccess,
    required TResult Function(GetOrdersFailure value) getFailure,
    required TResult Function(CancelOrderSuccess value) cancelOrderSucces,
    required TResult Function(CancelOrderFailure value) cancelOrderFailure,
    required TResult Function(UpdateOrderSuccess value) updateOrderSuccess,
    required TResult Function(UpdateOrderFailure value) updateOrderFailure,
  }) {
    return getSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initial value)? initial,
    TResult? Function(GetOrdersLoading value)? loading,
    TResult? Function(GetOrdersSuccess value)? getSuccess,
    TResult? Function(GetOrdersFailure value)? getFailure,
    TResult? Function(CancelOrderSuccess value)? cancelOrderSucces,
    TResult? Function(CancelOrderFailure value)? cancelOrderFailure,
    TResult? Function(UpdateOrderSuccess value)? updateOrderSuccess,
    TResult? Function(UpdateOrderFailure value)? updateOrderFailure,
  }) {
    return getSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initial value)? initial,
    TResult Function(GetOrdersLoading value)? loading,
    TResult Function(GetOrdersSuccess value)? getSuccess,
    TResult Function(GetOrdersFailure value)? getFailure,
    TResult Function(CancelOrderSuccess value)? cancelOrderSucces,
    TResult Function(CancelOrderFailure value)? cancelOrderFailure,
    TResult Function(UpdateOrderSuccess value)? updateOrderSuccess,
    TResult Function(UpdateOrderFailure value)? updateOrderFailure,
    required TResult orElse(),
  }) {
    if (getSuccess != null) {
      return getSuccess(this);
    }
    return orElse();
  }
}

abstract class GetOrdersSuccess implements OrdersState {
  const factory GetOrdersSuccess(final List<Orderlist> orders) =
      _$GetOrdersSuccessImpl;

  List<Orderlist> get orders;
  @JsonKey(ignore: true)
  _$$GetOrdersSuccessImplCopyWith<_$GetOrdersSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOrdersFailureImplCopyWith<$Res> {
  factory _$$GetOrdersFailureImplCopyWith(_$GetOrdersFailureImpl value,
          $Res Function(_$GetOrdersFailureImpl) then) =
      __$$GetOrdersFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errmsg});
}

/// @nodoc
class __$$GetOrdersFailureImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$GetOrdersFailureImpl>
    implements _$$GetOrdersFailureImplCopyWith<$Res> {
  __$$GetOrdersFailureImplCopyWithImpl(_$GetOrdersFailureImpl _value,
      $Res Function(_$GetOrdersFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errmsg = null,
  }) {
    return _then(_$GetOrdersFailureImpl(
      null == errmsg
          ? _value.errmsg
          : errmsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOrdersFailureImpl implements GetOrdersFailure {
  const _$GetOrdersFailureImpl(this.errmsg);

  @override
  final String errmsg;

  @override
  String toString() {
    return 'OrdersState.getFailure(errmsg: $errmsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrdersFailureImpl &&
            (identical(other.errmsg, errmsg) || other.errmsg == errmsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errmsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrdersFailureImplCopyWith<_$GetOrdersFailureImpl> get copyWith =>
      __$$GetOrdersFailureImplCopyWithImpl<_$GetOrdersFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Orderlist> orders) getSuccess,
    required TResult Function(String errmsg) getFailure,
    required TResult Function(String successmsg) cancelOrderSucces,
    required TResult Function(String errmsg) cancelOrderFailure,
    required TResult Function() updateOrderSuccess,
    required TResult Function(String errormsg) updateOrderFailure,
  }) {
    return getFailure(errmsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Orderlist> orders)? getSuccess,
    TResult? Function(String errmsg)? getFailure,
    TResult? Function(String successmsg)? cancelOrderSucces,
    TResult? Function(String errmsg)? cancelOrderFailure,
    TResult? Function()? updateOrderSuccess,
    TResult? Function(String errormsg)? updateOrderFailure,
  }) {
    return getFailure?.call(errmsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Orderlist> orders)? getSuccess,
    TResult Function(String errmsg)? getFailure,
    TResult Function(String successmsg)? cancelOrderSucces,
    TResult Function(String errmsg)? cancelOrderFailure,
    TResult Function()? updateOrderSuccess,
    TResult Function(String errormsg)? updateOrderFailure,
    required TResult orElse(),
  }) {
    if (getFailure != null) {
      return getFailure(errmsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initial value) initial,
    required TResult Function(GetOrdersLoading value) loading,
    required TResult Function(GetOrdersSuccess value) getSuccess,
    required TResult Function(GetOrdersFailure value) getFailure,
    required TResult Function(CancelOrderSuccess value) cancelOrderSucces,
    required TResult Function(CancelOrderFailure value) cancelOrderFailure,
    required TResult Function(UpdateOrderSuccess value) updateOrderSuccess,
    required TResult Function(UpdateOrderFailure value) updateOrderFailure,
  }) {
    return getFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initial value)? initial,
    TResult? Function(GetOrdersLoading value)? loading,
    TResult? Function(GetOrdersSuccess value)? getSuccess,
    TResult? Function(GetOrdersFailure value)? getFailure,
    TResult? Function(CancelOrderSuccess value)? cancelOrderSucces,
    TResult? Function(CancelOrderFailure value)? cancelOrderFailure,
    TResult? Function(UpdateOrderSuccess value)? updateOrderSuccess,
    TResult? Function(UpdateOrderFailure value)? updateOrderFailure,
  }) {
    return getFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initial value)? initial,
    TResult Function(GetOrdersLoading value)? loading,
    TResult Function(GetOrdersSuccess value)? getSuccess,
    TResult Function(GetOrdersFailure value)? getFailure,
    TResult Function(CancelOrderSuccess value)? cancelOrderSucces,
    TResult Function(CancelOrderFailure value)? cancelOrderFailure,
    TResult Function(UpdateOrderSuccess value)? updateOrderSuccess,
    TResult Function(UpdateOrderFailure value)? updateOrderFailure,
    required TResult orElse(),
  }) {
    if (getFailure != null) {
      return getFailure(this);
    }
    return orElse();
  }
}

abstract class GetOrdersFailure implements OrdersState {
  const factory GetOrdersFailure(final String errmsg) = _$GetOrdersFailureImpl;

  String get errmsg;
  @JsonKey(ignore: true)
  _$$GetOrdersFailureImplCopyWith<_$GetOrdersFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelOrderSuccessImplCopyWith<$Res> {
  factory _$$CancelOrderSuccessImplCopyWith(_$CancelOrderSuccessImpl value,
          $Res Function(_$CancelOrderSuccessImpl) then) =
      __$$CancelOrderSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String successmsg});
}

/// @nodoc
class __$$CancelOrderSuccessImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$CancelOrderSuccessImpl>
    implements _$$CancelOrderSuccessImplCopyWith<$Res> {
  __$$CancelOrderSuccessImplCopyWithImpl(_$CancelOrderSuccessImpl _value,
      $Res Function(_$CancelOrderSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successmsg = null,
  }) {
    return _then(_$CancelOrderSuccessImpl(
      null == successmsg
          ? _value.successmsg
          : successmsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CancelOrderSuccessImpl implements CancelOrderSuccess {
  const _$CancelOrderSuccessImpl(this.successmsg);

  @override
  final String successmsg;

  @override
  String toString() {
    return 'OrdersState.cancelOrderSucces(successmsg: $successmsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelOrderSuccessImpl &&
            (identical(other.successmsg, successmsg) ||
                other.successmsg == successmsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successmsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelOrderSuccessImplCopyWith<_$CancelOrderSuccessImpl> get copyWith =>
      __$$CancelOrderSuccessImplCopyWithImpl<_$CancelOrderSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Orderlist> orders) getSuccess,
    required TResult Function(String errmsg) getFailure,
    required TResult Function(String successmsg) cancelOrderSucces,
    required TResult Function(String errmsg) cancelOrderFailure,
    required TResult Function() updateOrderSuccess,
    required TResult Function(String errormsg) updateOrderFailure,
  }) {
    return cancelOrderSucces(successmsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Orderlist> orders)? getSuccess,
    TResult? Function(String errmsg)? getFailure,
    TResult? Function(String successmsg)? cancelOrderSucces,
    TResult? Function(String errmsg)? cancelOrderFailure,
    TResult? Function()? updateOrderSuccess,
    TResult? Function(String errormsg)? updateOrderFailure,
  }) {
    return cancelOrderSucces?.call(successmsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Orderlist> orders)? getSuccess,
    TResult Function(String errmsg)? getFailure,
    TResult Function(String successmsg)? cancelOrderSucces,
    TResult Function(String errmsg)? cancelOrderFailure,
    TResult Function()? updateOrderSuccess,
    TResult Function(String errormsg)? updateOrderFailure,
    required TResult orElse(),
  }) {
    if (cancelOrderSucces != null) {
      return cancelOrderSucces(successmsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initial value) initial,
    required TResult Function(GetOrdersLoading value) loading,
    required TResult Function(GetOrdersSuccess value) getSuccess,
    required TResult Function(GetOrdersFailure value) getFailure,
    required TResult Function(CancelOrderSuccess value) cancelOrderSucces,
    required TResult Function(CancelOrderFailure value) cancelOrderFailure,
    required TResult Function(UpdateOrderSuccess value) updateOrderSuccess,
    required TResult Function(UpdateOrderFailure value) updateOrderFailure,
  }) {
    return cancelOrderSucces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initial value)? initial,
    TResult? Function(GetOrdersLoading value)? loading,
    TResult? Function(GetOrdersSuccess value)? getSuccess,
    TResult? Function(GetOrdersFailure value)? getFailure,
    TResult? Function(CancelOrderSuccess value)? cancelOrderSucces,
    TResult? Function(CancelOrderFailure value)? cancelOrderFailure,
    TResult? Function(UpdateOrderSuccess value)? updateOrderSuccess,
    TResult? Function(UpdateOrderFailure value)? updateOrderFailure,
  }) {
    return cancelOrderSucces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initial value)? initial,
    TResult Function(GetOrdersLoading value)? loading,
    TResult Function(GetOrdersSuccess value)? getSuccess,
    TResult Function(GetOrdersFailure value)? getFailure,
    TResult Function(CancelOrderSuccess value)? cancelOrderSucces,
    TResult Function(CancelOrderFailure value)? cancelOrderFailure,
    TResult Function(UpdateOrderSuccess value)? updateOrderSuccess,
    TResult Function(UpdateOrderFailure value)? updateOrderFailure,
    required TResult orElse(),
  }) {
    if (cancelOrderSucces != null) {
      return cancelOrderSucces(this);
    }
    return orElse();
  }
}

abstract class CancelOrderSuccess implements OrdersState {
  const factory CancelOrderSuccess(final String successmsg) =
      _$CancelOrderSuccessImpl;

  String get successmsg;
  @JsonKey(ignore: true)
  _$$CancelOrderSuccessImplCopyWith<_$CancelOrderSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelOrderFailureImplCopyWith<$Res> {
  factory _$$CancelOrderFailureImplCopyWith(_$CancelOrderFailureImpl value,
          $Res Function(_$CancelOrderFailureImpl) then) =
      __$$CancelOrderFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errmsg});
}

/// @nodoc
class __$$CancelOrderFailureImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$CancelOrderFailureImpl>
    implements _$$CancelOrderFailureImplCopyWith<$Res> {
  __$$CancelOrderFailureImplCopyWithImpl(_$CancelOrderFailureImpl _value,
      $Res Function(_$CancelOrderFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errmsg = null,
  }) {
    return _then(_$CancelOrderFailureImpl(
      null == errmsg
          ? _value.errmsg
          : errmsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CancelOrderFailureImpl implements CancelOrderFailure {
  const _$CancelOrderFailureImpl(this.errmsg);

  @override
  final String errmsg;

  @override
  String toString() {
    return 'OrdersState.cancelOrderFailure(errmsg: $errmsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelOrderFailureImpl &&
            (identical(other.errmsg, errmsg) || other.errmsg == errmsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errmsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelOrderFailureImplCopyWith<_$CancelOrderFailureImpl> get copyWith =>
      __$$CancelOrderFailureImplCopyWithImpl<_$CancelOrderFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Orderlist> orders) getSuccess,
    required TResult Function(String errmsg) getFailure,
    required TResult Function(String successmsg) cancelOrderSucces,
    required TResult Function(String errmsg) cancelOrderFailure,
    required TResult Function() updateOrderSuccess,
    required TResult Function(String errormsg) updateOrderFailure,
  }) {
    return cancelOrderFailure(errmsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Orderlist> orders)? getSuccess,
    TResult? Function(String errmsg)? getFailure,
    TResult? Function(String successmsg)? cancelOrderSucces,
    TResult? Function(String errmsg)? cancelOrderFailure,
    TResult? Function()? updateOrderSuccess,
    TResult? Function(String errormsg)? updateOrderFailure,
  }) {
    return cancelOrderFailure?.call(errmsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Orderlist> orders)? getSuccess,
    TResult Function(String errmsg)? getFailure,
    TResult Function(String successmsg)? cancelOrderSucces,
    TResult Function(String errmsg)? cancelOrderFailure,
    TResult Function()? updateOrderSuccess,
    TResult Function(String errormsg)? updateOrderFailure,
    required TResult orElse(),
  }) {
    if (cancelOrderFailure != null) {
      return cancelOrderFailure(errmsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initial value) initial,
    required TResult Function(GetOrdersLoading value) loading,
    required TResult Function(GetOrdersSuccess value) getSuccess,
    required TResult Function(GetOrdersFailure value) getFailure,
    required TResult Function(CancelOrderSuccess value) cancelOrderSucces,
    required TResult Function(CancelOrderFailure value) cancelOrderFailure,
    required TResult Function(UpdateOrderSuccess value) updateOrderSuccess,
    required TResult Function(UpdateOrderFailure value) updateOrderFailure,
  }) {
    return cancelOrderFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initial value)? initial,
    TResult? Function(GetOrdersLoading value)? loading,
    TResult? Function(GetOrdersSuccess value)? getSuccess,
    TResult? Function(GetOrdersFailure value)? getFailure,
    TResult? Function(CancelOrderSuccess value)? cancelOrderSucces,
    TResult? Function(CancelOrderFailure value)? cancelOrderFailure,
    TResult? Function(UpdateOrderSuccess value)? updateOrderSuccess,
    TResult? Function(UpdateOrderFailure value)? updateOrderFailure,
  }) {
    return cancelOrderFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initial value)? initial,
    TResult Function(GetOrdersLoading value)? loading,
    TResult Function(GetOrdersSuccess value)? getSuccess,
    TResult Function(GetOrdersFailure value)? getFailure,
    TResult Function(CancelOrderSuccess value)? cancelOrderSucces,
    TResult Function(CancelOrderFailure value)? cancelOrderFailure,
    TResult Function(UpdateOrderSuccess value)? updateOrderSuccess,
    TResult Function(UpdateOrderFailure value)? updateOrderFailure,
    required TResult orElse(),
  }) {
    if (cancelOrderFailure != null) {
      return cancelOrderFailure(this);
    }
    return orElse();
  }
}

abstract class CancelOrderFailure implements OrdersState {
  const factory CancelOrderFailure(final String errmsg) =
      _$CancelOrderFailureImpl;

  String get errmsg;
  @JsonKey(ignore: true)
  _$$CancelOrderFailureImplCopyWith<_$CancelOrderFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateOrderSuccessImplCopyWith<$Res> {
  factory _$$UpdateOrderSuccessImplCopyWith(_$UpdateOrderSuccessImpl value,
          $Res Function(_$UpdateOrderSuccessImpl) then) =
      __$$UpdateOrderSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateOrderSuccessImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$UpdateOrderSuccessImpl>
    implements _$$UpdateOrderSuccessImplCopyWith<$Res> {
  __$$UpdateOrderSuccessImplCopyWithImpl(_$UpdateOrderSuccessImpl _value,
      $Res Function(_$UpdateOrderSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateOrderSuccessImpl implements UpdateOrderSuccess {
  const _$UpdateOrderSuccessImpl();

  @override
  String toString() {
    return 'OrdersState.updateOrderSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateOrderSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Orderlist> orders) getSuccess,
    required TResult Function(String errmsg) getFailure,
    required TResult Function(String successmsg) cancelOrderSucces,
    required TResult Function(String errmsg) cancelOrderFailure,
    required TResult Function() updateOrderSuccess,
    required TResult Function(String errormsg) updateOrderFailure,
  }) {
    return updateOrderSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Orderlist> orders)? getSuccess,
    TResult? Function(String errmsg)? getFailure,
    TResult? Function(String successmsg)? cancelOrderSucces,
    TResult? Function(String errmsg)? cancelOrderFailure,
    TResult? Function()? updateOrderSuccess,
    TResult? Function(String errormsg)? updateOrderFailure,
  }) {
    return updateOrderSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Orderlist> orders)? getSuccess,
    TResult Function(String errmsg)? getFailure,
    TResult Function(String successmsg)? cancelOrderSucces,
    TResult Function(String errmsg)? cancelOrderFailure,
    TResult Function()? updateOrderSuccess,
    TResult Function(String errormsg)? updateOrderFailure,
    required TResult orElse(),
  }) {
    if (updateOrderSuccess != null) {
      return updateOrderSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initial value) initial,
    required TResult Function(GetOrdersLoading value) loading,
    required TResult Function(GetOrdersSuccess value) getSuccess,
    required TResult Function(GetOrdersFailure value) getFailure,
    required TResult Function(CancelOrderSuccess value) cancelOrderSucces,
    required TResult Function(CancelOrderFailure value) cancelOrderFailure,
    required TResult Function(UpdateOrderSuccess value) updateOrderSuccess,
    required TResult Function(UpdateOrderFailure value) updateOrderFailure,
  }) {
    return updateOrderSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initial value)? initial,
    TResult? Function(GetOrdersLoading value)? loading,
    TResult? Function(GetOrdersSuccess value)? getSuccess,
    TResult? Function(GetOrdersFailure value)? getFailure,
    TResult? Function(CancelOrderSuccess value)? cancelOrderSucces,
    TResult? Function(CancelOrderFailure value)? cancelOrderFailure,
    TResult? Function(UpdateOrderSuccess value)? updateOrderSuccess,
    TResult? Function(UpdateOrderFailure value)? updateOrderFailure,
  }) {
    return updateOrderSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initial value)? initial,
    TResult Function(GetOrdersLoading value)? loading,
    TResult Function(GetOrdersSuccess value)? getSuccess,
    TResult Function(GetOrdersFailure value)? getFailure,
    TResult Function(CancelOrderSuccess value)? cancelOrderSucces,
    TResult Function(CancelOrderFailure value)? cancelOrderFailure,
    TResult Function(UpdateOrderSuccess value)? updateOrderSuccess,
    TResult Function(UpdateOrderFailure value)? updateOrderFailure,
    required TResult orElse(),
  }) {
    if (updateOrderSuccess != null) {
      return updateOrderSuccess(this);
    }
    return orElse();
  }
}

abstract class UpdateOrderSuccess implements OrdersState {
  const factory UpdateOrderSuccess() = _$UpdateOrderSuccessImpl;
}

/// @nodoc
abstract class _$$UpdateOrderFailureImplCopyWith<$Res> {
  factory _$$UpdateOrderFailureImplCopyWith(_$UpdateOrderFailureImpl value,
          $Res Function(_$UpdateOrderFailureImpl) then) =
      __$$UpdateOrderFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errormsg});
}

/// @nodoc
class __$$UpdateOrderFailureImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$UpdateOrderFailureImpl>
    implements _$$UpdateOrderFailureImplCopyWith<$Res> {
  __$$UpdateOrderFailureImplCopyWithImpl(_$UpdateOrderFailureImpl _value,
      $Res Function(_$UpdateOrderFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errormsg = null,
  }) {
    return _then(_$UpdateOrderFailureImpl(
      null == errormsg
          ? _value.errormsg
          : errormsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateOrderFailureImpl implements UpdateOrderFailure {
  const _$UpdateOrderFailureImpl(this.errormsg);

  @override
  final String errormsg;

  @override
  String toString() {
    return 'OrdersState.updateOrderFailure(errormsg: $errormsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderFailureImpl &&
            (identical(other.errormsg, errormsg) ||
                other.errormsg == errormsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errormsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOrderFailureImplCopyWith<_$UpdateOrderFailureImpl> get copyWith =>
      __$$UpdateOrderFailureImplCopyWithImpl<_$UpdateOrderFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Orderlist> orders) getSuccess,
    required TResult Function(String errmsg) getFailure,
    required TResult Function(String successmsg) cancelOrderSucces,
    required TResult Function(String errmsg) cancelOrderFailure,
    required TResult Function() updateOrderSuccess,
    required TResult Function(String errormsg) updateOrderFailure,
  }) {
    return updateOrderFailure(errormsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Orderlist> orders)? getSuccess,
    TResult? Function(String errmsg)? getFailure,
    TResult? Function(String successmsg)? cancelOrderSucces,
    TResult? Function(String errmsg)? cancelOrderFailure,
    TResult? Function()? updateOrderSuccess,
    TResult? Function(String errormsg)? updateOrderFailure,
  }) {
    return updateOrderFailure?.call(errormsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Orderlist> orders)? getSuccess,
    TResult Function(String errmsg)? getFailure,
    TResult Function(String successmsg)? cancelOrderSucces,
    TResult Function(String errmsg)? cancelOrderFailure,
    TResult Function()? updateOrderSuccess,
    TResult Function(String errormsg)? updateOrderFailure,
    required TResult orElse(),
  }) {
    if (updateOrderFailure != null) {
      return updateOrderFailure(errormsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initial value) initial,
    required TResult Function(GetOrdersLoading value) loading,
    required TResult Function(GetOrdersSuccess value) getSuccess,
    required TResult Function(GetOrdersFailure value) getFailure,
    required TResult Function(CancelOrderSuccess value) cancelOrderSucces,
    required TResult Function(CancelOrderFailure value) cancelOrderFailure,
    required TResult Function(UpdateOrderSuccess value) updateOrderSuccess,
    required TResult Function(UpdateOrderFailure value) updateOrderFailure,
  }) {
    return updateOrderFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initial value)? initial,
    TResult? Function(GetOrdersLoading value)? loading,
    TResult? Function(GetOrdersSuccess value)? getSuccess,
    TResult? Function(GetOrdersFailure value)? getFailure,
    TResult? Function(CancelOrderSuccess value)? cancelOrderSucces,
    TResult? Function(CancelOrderFailure value)? cancelOrderFailure,
    TResult? Function(UpdateOrderSuccess value)? updateOrderSuccess,
    TResult? Function(UpdateOrderFailure value)? updateOrderFailure,
  }) {
    return updateOrderFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initial value)? initial,
    TResult Function(GetOrdersLoading value)? loading,
    TResult Function(GetOrdersSuccess value)? getSuccess,
    TResult Function(GetOrdersFailure value)? getFailure,
    TResult Function(CancelOrderSuccess value)? cancelOrderSucces,
    TResult Function(CancelOrderFailure value)? cancelOrderFailure,
    TResult Function(UpdateOrderSuccess value)? updateOrderSuccess,
    TResult Function(UpdateOrderFailure value)? updateOrderFailure,
    required TResult orElse(),
  }) {
    if (updateOrderFailure != null) {
      return updateOrderFailure(this);
    }
    return orElse();
  }
}

abstract class UpdateOrderFailure implements OrdersState {
  const factory UpdateOrderFailure(final String errormsg) =
      _$UpdateOrderFailureImpl;

  String get errormsg;
  @JsonKey(ignore: true)
  _$$UpdateOrderFailureImplCopyWith<_$UpdateOrderFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
