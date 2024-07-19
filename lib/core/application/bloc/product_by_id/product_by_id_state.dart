part of 'product_by_id_bloc.dart';

@freezed
class ProductByIdState with _$ProductByIdState {
  const factory ProductByIdState.getProductByIdInitial() = GetProductByIdInitial;
  const factory ProductByIdState.getProductByIdLoading() = GetProductByIdLoading;
  const factory ProductByIdState.getProductByIdSuccess(
      {required ProductById products,
      required ProductDetails productDetails,
      required Inventory inventory}) = GetProductByIdSuccess;
  const factory ProductByIdState.getProductByIdFailure(String errmsg) =
      GetProductByIdFailure;
}
