import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logic_loot_admin/core/data/services/coupon_services.dart';
import 'package:logic_loot_admin/core/domain/model/body_model/coupon_body_model.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_coupons_response_model.dart';

part 'coupon_event.dart';
part 'coupon_state.dart';
part 'coupon_bloc.freezed.dart';

class CouponBloc extends Bloc<CouponEvent, CouponState> {
  final CouponServices couponRepo;
  CouponBloc(this.couponRepo) : super(CouponState.initial()) {
    on<_GetCoupons>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await couponRepo.getAllCoupons();
      result.fold((failure) {
        return emit(state.copyWith(
            isLoading: false, isGetCouponHasError: true, message: failure));
      }, (success) {
        return emit(state.copyWith(
            isLoading: false,
            isGetCouponHasSuccess: true,
            avialableCoupons: success.avialableCoupons));
      });
    });

    on<_AddCoupon>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await couponRepo.addCoupon(model: event.couponModel);
      result.fold((failure) {
        return emit(state.copyWith(
            isLoading: false, isAddCouponHasError: true, message: failure));
      }, (success) {
        return emit(state.copyWith(
            isLoading: false, isAddCouponSuccess: true, message: success));
      });
    });
  }
}
