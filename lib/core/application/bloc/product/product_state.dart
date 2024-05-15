part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    required bool isLoading,
    required bool isAddProductHasError,
    required bool isAddProductSuccess,
    required bool isGetAllProductHasError,
    required bool isGetAllProductSuccess,
    String? message,
    AddproductResponseModel? model,
    GetAllproductResponseModel? prouctModel,
  }) = _ProductState;
   factory ProductState.initial(){
    return const ProductState(isLoading: false,isAddProductHasError: false, isAddProductSuccess: false,isGetAllProductHasError: false,isGetAllProductSuccess: false);
  }
}
