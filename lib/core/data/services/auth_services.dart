import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:logic_loot_admin/core/domain/model/failure.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/auth_response_model.dart';
import 'package:logic_loot_admin/core/domain/repository/auth_repository.dart';


class AutheServices implements AuthRespository {
  @override
  Future<Either<Failure, AuthResponse>> login(
      {required String email, required String password}) async {
    final adminBody = jsonEncode({"email": email, "password": password});
    print(adminBody);
    try {
      var response = await http.Client().post(
          Uri.parse("https://lapify.online/admin/login"),
          body: adminBody,
          headers: {"Content-Type": "application/json"});
          print(response);
          print(response.statusCode);
          if(response.statusCode == 200){
            print("Success");
            return Right(authResponseFromJson(response.body));
          }else{
            print("failed api");
            print(authResponseFromJson(response.body).message);
            return Left(Failure(authResponseFromJson(response.body).message));
          }
    } catch (e) {
      print(e);
      return Left(Failure("Something Went wrong"));
    }
  }
}