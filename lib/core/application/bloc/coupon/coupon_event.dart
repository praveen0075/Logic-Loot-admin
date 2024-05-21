part of 'coupon_bloc.dart';

@freezed
class CouponEvent with _$CouponEvent {
  const factory CouponEvent.getCoupons() = _GetCoupons;
  const factory CouponEvent.addCoupons({required AddCouponBody couponModel}) = _AddCoupon;
}