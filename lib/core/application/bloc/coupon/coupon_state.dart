part of 'coupon_bloc.dart';

@freezed
class CouponState with _$CouponState {
  const factory CouponState({
    required bool isLoading,
    required bool isGetCouponHasError,
    required bool isGetCouponHasSuccess,
    required bool isAddCouponHasError,
    required bool isAddCouponSuccess,
    String? message,
    required List<AvialableCoupon> avialableCoupons,
  }) = _CouponState;
  factory CouponState.initial() {
    return const CouponState(
        isLoading: false,
        isGetCouponHasError: false,
        isGetCouponHasSuccess: false,
        isAddCouponHasError: false,
        isAddCouponSuccess: false,
        avialableCoupons: []);
  }
}
