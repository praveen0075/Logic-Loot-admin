import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:logic_loot_admin/core/data/shared_preferances/shared_pref.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_banner_response.dart';
import 'package:logic_loot_admin/core/domain/repository/banner_respository.dart';

class BannerServices implements BannerRepo {
  @override
  Future<Either<String, String>> addBanner({required File imageurl}) async {
    final adminToken = await SharedPreffs.getAdminToken();

    if (adminToken == null) {
      log("token is empty");
      return const Left("Unauthorized admin");
    } else {
      try {
        final request = http.MultipartRequest(
            "POST", Uri.parse("https://lapify.online/admin/banner"));
        request.headers.addAll({"Cookie": "Authorise=$adminToken"});
        final imageFile =
            await http.MultipartFile.fromPath("image", imageurl.path);
        request.files.add(imageFile);
        final response = await request.send();
        log("status code ---> ${response.statusCode}");
        final responsejsonData = await response.stream.bytesToString();

        if (response.statusCode == 200) {
          log("success status");
          return const Right("Banner added successfully");
        } else {
          log("Error status");
          final result = jsonDecode(responsejsonData);
          final errormsg = result["error"];
          return Left(errormsg);
        }
      } catch (e) {
        log("Exception occured --> $e");
        return const Left("Oops! Unable to connect server");
      }
    }
  }

  @override
  Future<Either<String, BannerResponseModel>> getBanner() async {
    final adminToken = await SharedPreffs.getAdminToken();
    if (adminToken == null) {
      log("Token is empty");
      return const Left("Unautherized admin");
    } else {
      try {
        final response = await http.Client().get(
            Uri.parse("https://lapify.online/admin/banner"),
            headers: {"Cookie": "Authorise=$adminToken"});

        log("Status code --> ${response.statusCode}");

        final responseModel = jsonDecode(response.body);

        if (response.statusCode == 200) {
          log("success status");
          final success = bannerResponseModelFromJson(response.body);
          log(success.banners.toString());
          return Right(success);
        } else {
          log("Error status"); 
          final error = responseModel["error"];
          return Left(error);
        }
      } catch (e) {
        log("Exception occured --> $e");
        return const Left("Oops! Unable to connect server");
      }
    }
  }
}
