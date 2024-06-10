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
    on<_GetAllCustomer>((event, emit)async{
      emit(const CustomerState.loading());
      final result = await customerRepo.getAllUsers();
      result.fold((failure) => emit(CustomerState.errorst(failure)), (success) => emit(CustomerState.success(success.users)));
    });
  }
}
