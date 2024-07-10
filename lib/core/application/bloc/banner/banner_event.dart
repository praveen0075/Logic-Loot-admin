part of 'banner_bloc.dart';

@freezed
class BannerEvent with _$BannerEvent {
  const factory BannerEvent.addBanner({required File imageUrl})  = addBanner;
  const factory BannerEvent.getBanner() = getBanner;
}