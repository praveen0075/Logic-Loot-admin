part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.addProductEvent({required AddproductModel productModel}) = _AddproductEvent;
  const factory ProductEvent.getAllProductEvent() = _GetAllProductEvent;
}