import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:logic_loot_admin/core/data/shared_preferances/shared_pref.dart';
import 'package:logic_loot_admin/core/domain/model/body_model/coupon_body_model.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_coupons_response_model.dart';
import 'package:http/http.dart' as http;

class CouponServices {
  Future<Either<String, GetCouponsResponse>> getAllCoupons() async {
    try {
      final tkn = await SharedPreffs.getAdminToken();
      print("token --> $tkn");

      if (tkn == null) {
        print("token is empty");
        return const Left("Failed to fetch coupons(T)");
      } else {
        final response = await http.Client().get(
            Uri.parse("https://lapify.online/admin/coupons"),
            headers: {"Cookie": "Authorise=$tkn"});

        print("respone body ---> ${response.body}");

        print("response statuscode ---> ${response.statusCode}");

        if (response.statusCode == 200) {
          final result = getCouponsResponseFromJson(response.body);
          print("result --> $result");

          return Right(result);
        } else {
          print("error");

          return const Left("Failed to fetch Coupons");
        }
      }
    } catch (e) {
      print("Exception --> $e");
      return const Left("Oops! something went wrong");
    }
  }

  Future<Either<String, String>> addCoupon(
      {required AddCouponBody model}) async {
    try {
      final body = addCouponBodyToJson(model);

      print(body);

      final tkn = await SharedPreffs.getAdminToken();
      print("admin token --> $tkn");

      if (tkn == null) {
        print("token is empty");
        return const Left("Something went wrong!");
      } else {
        final response = await http.Client().post(
            Uri.parse("https://lapify.online/admin/coupons?page=1&limit=50"),
            headers: {"Cookie": "Authorise=$tkn"},
            body: body);

        print("response statuscode --> ${response.statusCode}");

        if (response.statusCode == 200) {
          print("success");
          return Right("Coupon Added Successfully");
        } else {
          print("error");
          final error = jsonDecode(response.body);
          print(error);
          final errmsg = error["error"];
          return Left(errmsg);
        }
      }
    } catch (e) {
      print("exception ---> $e");
      return const Left("Oops! something went wrong");
    }
  }

  Future<Either<String, String>> deleteCoupon(
      {required String couponCode}) async {
    try {
      final adminToken = await SharedPreffs.getAdminToken();
      log("admin token ---> $adminToken");
      if (adminToken == null) {
        return const Left("Oops! Something bad occured");
      } else {
        // final response = await http.Client().delete(
        //     Uri.parse("https://lapify.online/admin/coupons"),
        //     headers: {"Cookie": "Authorise=$adminToken"});

        final request = http.MultipartRequest(
          "DELETE",
          Uri.parse("https://lapify.online/admin/coupons"),
        );
        request.headers.addAll({"Cookie": "Authorise=$adminToken"});
        request.fields['code'] = couponCode;

        final response = await request.send();
        final responseBody = await response.stream.bytesToString();

        log("response ---> $responseBody");
        log("response statuc code ---> ${response.statusCode}");

        if (response.statusCode == 200) {
          log("Success");
          return const Right("Coupon deleted");
        } else {
          final result = jsonDecode(responseBody);
          final error = result["error"];
          log(error);
          return Left(error);
        }
      }
    } catch (e) {
      log("Exception ----> $e");
      return const Left("Oops! something went wrong");
    }
  }
}
