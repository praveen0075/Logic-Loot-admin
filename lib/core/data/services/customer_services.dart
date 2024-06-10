import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:logic_loot_admin/core/data/shared_preferances/shared_pref.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_all_user_response.dart';
import 'package:http/http.dart' as http;

class CustomerServices {
   Future<Either<String, GetAllUserModel>> getAllUsers() async {
    try {
      final adminToken = await SharedPreffs.getAdminToken();
      log("admin token --> $adminToken");
      if (adminToken == null) {
        return const Left("Oops! something bad occured");
      } else {
        final response = await http.Client().get(
            Uri.parse("https://lapify.online/admin/users"),
            headers: {"Cookie": "Authorise=$adminToken"});

        log("reponse ---> $response");
        log('response statuscode --> ${response.statusCode}');
        log("response body ---> ${response.body}");

        if (response.statusCode == 200) {
          final success = getAllUserModelFromJson(response.body);
          log("success result ---> $success");
          return Right(success);
        } else {
          final result = jsonDecode(response.body);
          final failure = result["error"];
          log("Failure ---> $failure");
          return Left(failure);
        }
      }
    } catch (e) {
      log("exception ---> $e");
      return const Left("Something went wrong");
    }
  }

  static Future<Either<String, String>> toggleUser(int userId) async {
    try {
      final adminToken = await SharedPreffs.getAdminToken();
      log("admin token ---> $adminToken");

      if (adminToken == null) {
        log("Token is empty");
        return const Left("Oops! somthing bad occured");
      } else {
        final response = await http.Client().put(
            Uri.parse(
                "https://lapify.online/admin/users/toggle-permission/$userId"),
            headers: {"Cookie": "Authorise=$adminToken"});

        log("respone ---> $response");
        log("response status code ---> ${response.statusCode}");
        log("response body ---> ${response.body}");

        if (response.statusCode == 200) {
          
          final result = jsonDecode(response.body);
          final success = result["success"];
          log(success);
          return  Right(success);
        } else {
          final result = jsonDecode(response.body);
          final failure = result["error"];
          log("failure --> erro: $failure");
          return Left(failure);
        }
      }
    } catch (e) {
      log("Exception ---> $e");
      return const Left("Oops! something went wrong");
    }
  }
}
