import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logic_loot_admin/core/data/services/product_services.dart';
import 'package:logic_loot_admin/core/domain/model/body_model/product_model.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/getAllProduct_model.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/product_response_model.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductServices productRepo;
  ProductBloc(this.productRepo) : super(ProductState.initial()) {
    on<_AddproductEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result =
          await productRepo.addProduct(productModel: event.productModel);
      print(result);
      print("ready to fold---");
      result.fold((failure) {
        emit(state.copyWith(
            isAddProductHasError: true,
            isLoading: false,
            isAddProductSuccess: false));
      }, (success) {
        emit(state.copyWith(
            isAddProductHasError: false,
            isLoading: false,
            isAddProductSuccess: true));
      });
      emit(ProductState.initial());
    });
    on<_GetAllProductEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await productRepo.getAllProduct();
      result.fold((failure) {
        emit(state.copyWith(
            isGetAllProductHasError: true,
            isGetAllProductSuccess: false,
            isLoading: false,
            message: failure.msg));
      }, (success) {
        emit(state.copyWith(
            isGetAllProductSuccess: true,
            isGetAllProductHasError: false,
            isLoading: false,
            message: "Success",prouctModel: success));
      });
    });
  }
}
