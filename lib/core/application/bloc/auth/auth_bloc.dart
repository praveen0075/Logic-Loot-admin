import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logic_loot_admin/core/data/shared_preferances/shared_pref.dart';
import 'package:logic_loot_admin/core/domain/model/failure.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/auth_response_model.dart';
import 'package:logic_loot_admin/core/domain/repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
   final AuthRespository repo;
  AuthBloc(this.repo) : super(AuthState.initial()) {
   on<_LogInReqEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final Either<Failure, AuthResponse> result =
          await repo.login(email: event.email, password: event.password);
      result.fold(
          (failure) {
            print("failure on (fold)");
           emit(state.copyWith(
              isLoading: false,
              isLogInSuccess: false,
              isLogInhasError: true,
              message: failure.msg));},
          (success) async {
            print("success on (fold)");
            emit(state.copyWith(
              isLoading: false,
              isLogInSuccess: true,
              isLogInhasError: false,
              message: success.message));
              await SharedPreffs.adminLoggedIn();
              print("adim logged in");
              await SharedPreffs.saveAdminToken(success.token);
              });
              
              
    });
  }
}
