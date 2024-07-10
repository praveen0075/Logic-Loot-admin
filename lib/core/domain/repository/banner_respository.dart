import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_banner_response.dart';

abstract class BannerRepo {
  Future<Either<String,String>> addBanner({required File imageurl});
  Future<Either<String,BannerResponseModel>> getBanner();
}