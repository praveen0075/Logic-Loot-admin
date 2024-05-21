part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.addProductEvent({required AddproductModel productModel}) = _AddproductEvent;
  const factory ProductEvent.getAllProductEvent() = _GetAllProductEvent;
  const factory ProductEvent.getProductById({required int productId}) = _GetProductById;
  const factory ProductEvent.deleteProductByid({required int productId}) = _DeleteProductById;
}