import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_banner_response.dart';
import 'package:logic_loot_admin/core/domain/repository/banner_respository.dart';

part 'banner_event.dart';
part 'banner_state.dart';
part 'banner_bloc.freezed.dart';

class BannerBloc extends Bloc<BannerEvent, BannerState> {
  final BannerRepo bannerRepo;
  BannerBloc(this.bannerRepo) : super(const BannerState.initial()) {
    on<addBanner>((event, emit) async {
      emit(const BannerState.loading());
      final result = await bannerRepo.addBanner(imageurl: event.imageUrl);
      result.fold((failure) => emit(BannerState.errorSt(errormsg: failure)),
          (success) => emit(BannerState.loaded(successmsg: success)));
    });

    on<getBanner>((event, emit) async {
      emit(const BannerState.loading());
      final result = await bannerRepo.getBanner();
      result.fold(
          (failure) => emit(BannerState.errorSt(errormsg: failure)),
          (success) =>
              emit(BannerState.getBannerSuccess(banners: success.banners)));
    });
  }
}
