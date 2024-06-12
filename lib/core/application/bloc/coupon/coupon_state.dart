part of 'coupon_bloc.dart';

@freezed
class CouponState with _$CouponState {

  const factory CouponState.initial() = Initial;
  const factory CouponState.loading() = GetLoading;
  const factory CouponState.success(List<AvialableCoupon> avialableCoupons) = GetSuccess;
  const factory CouponState.errorst(String errmsg) = GertErrorSt;
  const factory CouponState.addSuccess(String succcessmsg) = AddSuccess;
  const factory CouponState.addFailure(String failuremsg) = AddFailure;
  const factory CouponState.deletesucces(String successmsg) = DeleteSuccess;
  const factory CouponState.deleteFailure(String failuremsg) = DeleteFailure;

  // const factory CouponState({
  //   required bool isLoading,
  //   required bool isGetCouponHasError,
  //   required bool isGetCouponHasSuccess,
  //   required bool isAddCouponHasError,
  //   required bool isAddCouponSuccess,
  //   required bool isDeleteCouponSuccess,
  //   required bool isDeleteCouponError,
  //   String? message,
  //   required List<AvialableCoupon> avialableCoupons,
  // }) = _CouponState;
  // factory CouponState.initial() {
  //   return const CouponState(
  //       isLoading: false,
  //       isGetCouponHasError: false,
  //       isGetCouponHasSuccess: false,
  //       isAddCouponHasError: false,
  //       isAddCouponSuccess: false,
  //       avialableCoupons: [], isDeleteCouponSuccess: false,isDeleteCouponError: false);
  // }
}
