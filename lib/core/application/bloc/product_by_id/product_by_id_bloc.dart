import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_productby_id_response_model.dart';
import 'package:logic_loot_admin/core/domain/repository/product_repository.dart';

part 'product_by_id_event.dart';
part 'product_by_id_state.dart';
part 'product_by_id_bloc.freezed.dart';

class ProductByIdBloc extends Bloc<ProductByIdEvent, ProductByIdState> {
  final IproductRepo productRepo;
  ProductByIdBloc(this.productRepo)
      : super(const ProductByIdState.getProductByIdInitial()) {
    on<_GetProductById>((event, emit) async {
      emit(const ProductByIdState.getProductByIdLoading());
      final result =
          await productRepo.getProductDetialsById(id: event.productId);
      result.fold(
          (failure) => emit(GetProductByIdFailure(failure)),
          (success) => emit(GetProductByIdSuccess(
              inventory: success.inventory,
              productDetails: success.productDetails,
              products: success.products)));
    });
  }
}
