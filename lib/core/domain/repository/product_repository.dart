import 'package:dartz/dartz.dart';
import 'package:logic_loot_admin/core/domain/model/body_model/product_model.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_product_response_model.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_productby_id_response_model.dart';

abstract class IproductRepo {
  Future<Either<String, String>> addProduct(
      {required AddproductModel productModel});
  Future<Either<String, List<Products>>> getAllProuducts();
  Future<Either<String, ProductDetailsById>> getProductDetialsById(
      {required int id});
  Future<Either<String, String>> deleteProductById({required int productId});
  Future<Either<String, String>> editProductById(
      {required AddproductModel productModel});
}
