part of 'product_bloc.dart';

  @freezed
  class ProductState with _$ProductState {
    const factory ProductState.initial() = Initial;
    const factory ProductState.loading() = Loading;
    const factory ProductState.erorrst(String errmsg) = Errorst;
    const factory ProductState.success(List<Products> products) = Success;
    const factory ProductState.addSuccess(String successmsg) = AddSuccess;
    const factory ProductState.addFailure(String failuremsg) = AddFailure;
    const factory ProductState.addLoading() = AddLoading;
    const factory ProductState.deleteSuccess(String successmsg) = DeleteSuccess;
    const factory ProductState.deleteFailure(String errormsg) = DeleteFailure;
    const factory ProductState.getProductByIdSuccess(ProductsById productById,ProductDetails productDetails) = GetProductByIdSuccess;
    const factory ProductState.getProductByIdFailure(String errmsg) = GetProductByIdFailure;
  }

// @freezed
// class ProductState with _$ProductState {
//   const factory ProductState({
//     required bool isLoading,

//     required bool isAddProductHasError,
//     required bool isAddProductSuccess,
//     required bool isGetAllProductHasError,
//     required bool isGetAllProductSuccess,
//     required bool isGetProductByIdHasErro,
//     required bool isGetProductByIdSuccess,
//     required bool isDeleteProductByIdhasError,
//     required bool isDeleteProductByIdsuccess,
//     String? message,
//     AddProductResponseModel? addproductResponse,
//     GetProductById? getProductByIdResponseModel,
//     List<Products>? prouctModel,
//   }) = _ProductState;
//   factory ProductState.initial() {
//     return const ProductState(
//         isLoading: false,
//         isAddProductHasError: false,
//         isAddProductSuccess: false,
//         isGetAllProductHasError: false,
//         isGetAllProductSuccess: false,
//         isGetProductByIdHasErro: false,
//         isGetProductByIdSuccess: false,
//         isDeleteProductByIdhasError: false,
//         isDeleteProductByIdsuccess: false,
//         prouctModel: [],
//         );
//   }
// }
