import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logic_loot_admin/core/data/services/product_services.dart';
import 'package:logic_loot_admin/core/domain/model/body_model/product_model.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_product_response_model.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_productby_id_response_model.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductServices productRepo;
  ProductBloc(this.productRepo) : super(const ProductState.initial()) {
    on<_GetAllProductEvent>((event, emit) async {
      emit(const ProductState.loading());
      final result = await productRepo.getAllProuducts();
      result.fold((failure) => emit(ProductState.erorrst(failure)),
          (success) => emit(ProductState.success(success)));
    });

    on<_DeleteProductById>((event, emit) async {
      emit(const ProductState.loading());
      final result =
          await productRepo.deleteProductById(productId: event.productId);
      result.fold((failure) => emit(ProductState.deleteFailure(failure)),
          (success) => emit(ProductState.deleteSuccess(success)));
    });

    on<_AddproductEvent>((event, emit) async {
      emit(const ProductState.addLoading());
      final result =
          await productRepo.addProduct(productModel: event.productModel);
      result.fold((failure) => emit(ProductState.addFailure(failure)),
          (success) => emit(ProductState.addSuccess(success)));
    });

    on<_GetProductById>((event, emit) async {
      emit(const ProductState.loading());
      final result =
          await productRepo.getProductDetialsById(id: event.productId);
      result.fold(
          (failure) => emit(ProductState.getProductByIdFailure(failure)),
          (success) => emit(ProductState.getProductByIdSuccess(
              success.products, success.productDetails)));
    });
    // on<_GetAllProductEvent>((event, emit) async {
    //   emit(state.copyWith(isLoading: true));
    //   final result = await productRepo.getAllProuducts();
    //   result.fold((failure) {
    //     return emit(state.copyWith(
    //         isGetAllProductHasError: true,
    //         isGetAllProductSuccess: false,
    //         isLoading: false,
    //         message: failure));
    //   }, (success) {
    //     return emit(state.copyWith(
    //         isGetAllProductHasError: false,
    //         isGetAllProductSuccess: true,
    //         isLoading: false,
    //         prouctModel: success.products));
    //   });
    // });

    // on<_AddproductEvent>((event, emit) async {
    //   emit(state.copyWith(isLoading: true));
    //   final result =
    //       await productRepo.addProduct(productModel: event.productModel);
    //   result.fold((failure) {
    //     return emit(state.copyWith(
    //         isAddProductHasError: true,
    //         isAddProductSuccess: false,
    //         isLoading: false,
    //         message: failure));
    //   }, (success) {
    //     return emit(state.copyWith(
    //         isAddProductHasError: false,
    //         isAddProductSuccess: true,
    //         isLoading: false,
    //         addproductResponse: success));
    //   });
    // });

    // on<_GetProductById>((event, emit) async {
    //   emit(state.copyWith(isLoading: true));
    //   final result =
    //       await productRepo.getProductDetialsById(id: event.productId);
    //   result.fold((failure) {
    //     return emit(state.copyWith(
    //         isGetProductByIdHasErro: true,
    //         isGetProductByIdSuccess: false,
    //         isLoading: false));
    //   }, (success) {
    //     return emit(state.copyWith(
    //       isGetProductByIdHasErro: false,
    //       isGetProductByIdSuccess: true,
    //       isLoading: false,
    //       // getProductByIdResponseModel: success
    //     ));
    //   });
    // });

    // on<_DeleteProductById>((event, emit) async {
    //   emit(state.copyWith(isLoading: true));
    //   final result =
    //       await productRepo.deleteProductById(productId: event.productId);
    //   result.fold((failure) {
    //     return emit(state.copyWith(
    //         isDeleteProductByIdhasError: true,
    //         isDeleteProductByIdsuccess: false,
    //         isLoading: false,
    //         message: failure));
    //   }, (success) {
    //     return emit(state.copyWith(
    //         isDeleteProductByIdsuccess: true,
    //         isDeleteProductByIdhasError: false,
    //         isLoading: false,
    //         message: success));
    //   });
    // });

    //  on<_GetAllProductEvent>((event, emit) async {
    //   emit(state.copyWith(isLoading: true));
    //   final result = await productRepo.getAllProduct();
    //   result.fold((failure) {
    //     emit(state.copyWith(
    //         isGetAllProductHasError: true,
    //         isGetAllProductSuccess: false,
    //         isLoading: false,
    //         message: failure.msg));
    //   }, (success) {
    //     emit(state.copyWith(
    //         isGetAllProductSuccess: true,
    //         isGetAllProductHasError: false,
    //         isLoading: false,
    //         message: "Success",prouctModel: success));
    //   });
    // });

    // on<_AddproductEvent>((event, emit) async {
    //   emit(state.copyWith(isLoading: true));
    //   final result =
    //       await productRepo.addProduct(productModel: event.productModel);
    //   print(result);
    //   print("ready to fold---");
    //   result.fold((failure) {
    //     emit(state.copyWith(
    //         isAddProductHasError: true,
    //         isLoading: false,
    //         isAddProductSuccess: false));
    //   }, (success) {
    //     emit(state.copyWith(
    //         isAddProductHasError: false,
    //         isLoading: false,
    //         isAddProductSuccess: true));
    //   });
    //   emit(ProductState.initial());
    // });
  }
}
