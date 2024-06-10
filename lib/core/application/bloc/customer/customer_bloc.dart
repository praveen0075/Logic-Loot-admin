import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logic_loot_admin/core/data/services/customer_services.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_all_user_response.dart';

part 'customer_event.dart';
part 'customer_state.dart';
part 'customer_bloc.freezed.dart';

class CustomerBloc extends Bloc<CustomerEvent, CustomerState> {
  final CustomerServices customerRepo;
  CustomerBloc(this.customerRepo) : super(const CustomerState.initial()) {
    on<_GetAllCustomer>((event, emit) async {
      emit(const CustomerState.loading());
      final result = await customerRepo.getAllUsers();
      result.fold((failure) => emit(CustomerState.errorst(failure)),
          (success) => emit(CustomerState.success(success.users)));
    });

//     on<_ToggleUserBlkAndUnblk>((event, emit) async {
//       emit(const CustomerState.toggleLoading());
//       final result = await CustomerServices.toggleUser(event.userId);
//       result.fold((failure) => emit(CustomerState.toggleError(failure)),
//           (success)async{
//             final userResult = await customerRepo.getAllUsers();
//             userResult.fold((fail) => emit(CustomerState.errorst(fail)), (succes) => emit(CustomerState.success(succes.users)));
//             emit(const CustomerState.success([]));});
//     });
  }
} 
