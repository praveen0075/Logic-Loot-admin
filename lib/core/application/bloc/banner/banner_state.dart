part of 'banner_bloc.dart';

@freezed
class BannerState with _$BannerState {
  const factory BannerState.initial() = Initial;
  const factory BannerState.loading() = Loading;
  const factory BannerState.loaded({required  String successmsg}) = Loaded;
  const factory BannerState.errorSt({required String errormsg}) = ErrorSt;
  const factory BannerState.getBannerSuccess({required List<Banner> banners}) = GetBannerSuccess;
  const factory BannerState.deleteBannerSuccess({required String dltErrmsg}) = DeleteBannerSuccess;
  const factory BannerState.deleteBannerError({required String errormsg}) = DeleteBannerError;
}
 