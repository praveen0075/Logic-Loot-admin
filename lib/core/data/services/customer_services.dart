import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:logic_loot_admin/core/data/shared_preferances/shared_pref.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_all_user_response.dart';
import 'package:http/http.dart' as http;

class CustomerServices {
  Future<Either<String, GetAllUserModel>> getAllUsers() async {
    try {
      final adminToke = await SharedPreffs.getAdminToken();
      log("admin token --> $adminToke");
      if (adminToke == null) {
        return const Left("Oops! something bad occured");
      } else {
        final response = await http.Client().get(
            Uri.parse("https://lapify.online/admin/users"),
            headers: {"Cookie": "Authorise=$adminToke"});

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
}
