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
  CouponBloc(this.couponRepo) : super(const CouponState.initial()) {
    on<_GetCoupons>((event, emit) async {
      emit(const CouponState.loading());
      final result = await couponRepo.getAllCoupons();
<<<<<<< HEAD
      result.fold((failure) => emit(CouponState.errorst(failure)),
          (success) => emit(CouponState.success(success.avialableCoupons)));
=======
      result.fold((failure) {
        return emit(state.copyWith(
            isLoading: false, isGetCouponHasError: true, message: failure));
      }, (success) {
        return emit(state.copyWith(
            isLoading: false,
            isGetCouponHasSuccess: true,
            avialableCoupons: success.avialableCoupons));
      });
>>>>>>> 96b867c57ac070ca535e58f69d91c795a59ca909
    });

    on<_AddCoupon>((event, emit) async {
      emit(const CouponState.loading());
      final result = await couponRepo.addCoupon(model: event.couponModel);
<<<<<<< HEAD
      result.fold((failure) => emit(CouponState.addFailure(failure)),
          (success) => emit(CouponState.addSuccess(success)));
    });

    on<_DeleteCoupon>((event, emit) async {
      final result =
          await couponRepo.deleteCoupon(couponCode: event.couponCode);
      result.fold((failure) => emit(CouponState.deleteFailure(failure)),
          (success) => emit(CouponState.deletesucces(success)));
=======
      result.fold((failure) {
        return emit(state.copyWith(
            isLoading: false, isAddCouponHasError: true, message: failure));
      }, (success) {
        return emit(state.copyWith(
            isLoading: false, isAddCouponSuccess: true, message: success));
      });
>>>>>>> 96b867c57ac070ca535e58f69d91c795a59ca909
    });
  }
}


  //   on<_AddCoupon>((event, emit) async {
  //     emit(state.copyWith(isLoading: true));
  //     final result = await couponRepo.addCoupon(model: event.couponModel);
  //     result.fold((failure) {
  //       return emit(state.copyWith(
  //           isLoading: false,
  //           isAddCouponHasError: true,
  //           message: failure,
  //           isAddCouponSuccess: false,
  //           isDeleteCouponError: false,
  //           isDeleteCouponSuccess: false,
  //           isGetCouponHasError: false,
  //           isGetCouponHasSuccess: false));
  //     }, (success) {
  //       return emit(state.copyWith(
  //           isLoading: false,
  //           isAddCouponSuccess: true,
  //           message: success,
  //           isAddCouponHasError: false,
  //           isDeleteCouponError: false,
  //           isDeleteCouponSuccess: false,
  //           isGetCouponHasError: false,
  //           isGetCouponHasSuccess: false));
  //     });
  //   });

  //   on<_DeleteCoupon>((event, emit) async {
  //     emit(state.copyWith(isLoading: true));
  //     final result =
  //         await couponRepo.deleteCoupon(couponCode: event.couponCode);
  //     result.fold(
  //         (failure) => emit(state.copyWith(
  //               isLoading: false,
  //               isDeleteCouponError: true,
  //               message: failure,
  //               isAddCouponHasError: false,
  //               isAddCouponSuccess: false,
  //               isDeleteCouponSuccess: false,
  //               isGetCouponHasError: false,
  //               isGetCouponHasSuccess: false,
  //             )),
  //         (success) => emit(state.copyWith(
  //               isLoading: false,
  //               isDeleteCouponSuccess: true,
  //               message: success,
  //               isAddCouponHasError: false,
  //               isAddCouponSuccess: false,
  //               isDeleteCouponError: false,
  //               isGetCouponHasError: false,
  //               isGetCouponHasSuccess: false,
  //             )));
  //   });
