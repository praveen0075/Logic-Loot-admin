import 'package:dartz/dartz.dart';
import 'package:logic_loot_admin/core/domain/model/failure.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/auth_response_model.dart';

abstract class AuthRespository{
  Future<Either<Failure,AuthResponse>> login({required String email, required String password});
}