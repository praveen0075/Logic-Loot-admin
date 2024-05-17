import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:logic_loot_admin/core/data/shared_preferances/shared_pref.dart';
import 'package:logic_loot_admin/core/domain/model/failure.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/auth_failure_response.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/auth_response_model.dart';
import 'package:logic_loot_admin/core/domain/repository/auth_repository.dart';


class AutheServices implements AuthRespository {
  @override
  Future<Either<Failure, AuthResponse>> login(
      {required String email, required String password}) async {
    final adminBody = jsonEncode({"email": email, "password": password});
    try {
      var response = await http.Client().post(
          Uri.parse("https://lapify.online/admin/login"),
          body: adminBody,
          headers: {"Content-Type": "application/json"});
          if(response.statusCode == 200){
            print("Success");
            await SharedPreffs.adminLoggedIn();
            final successResponse = authResponseFromJson(response.body);
            await SharedPreffs.saveAdminToken(successResponse.token);
            return Right(authResponseFromJson(response.body));
          }else{
            final errmsg = authFailureResponseFromJson(response.body).details;
            return Left(Failure(msg: errmsg));
          }
    } catch (e) {
      print(e);
      return Left(Failure(msg:"Something Went wrong"));
    }
  }
}