part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    required bool isLoading,
    required bool isAddProductHasError,
    required bool isAddProductSuccess,
    required bool isGetAllProductHasError,
    required bool isGetAllProductSuccess,
    required bool isGetProductByIdHasErro,
    required bool isGetProductByIdSuccess,
    required bool isDeleteProductByIdhasError,
    required bool isDeleteProductByIdsuccess,
    String? message,
    AddProductResponseModel? addproductResponse,
    GetProductById? getProductByIdResponseModel,
    List<Products>? prouctModel,
  }) = _ProductState;
  factory ProductState.initial() {
    return const ProductState(
        isLoading: false,
        isAddProductHasError: false,
        isAddProductSuccess: false,
        isGetAllProductHasError: false,
        isGetAllProductSuccess: false,
        isGetProductByIdHasErro: false,
        isGetProductByIdSuccess: false,
        isDeleteProductByIdhasError: false,
        isDeleteProductByIdsuccess: false,
        prouctModel: [],
        );
  }
}
