import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:logic_loot_admin/core/data/shared_preferances/shared_pref.dart';
import 'package:logic_loot_admin/core/domain/model/body_model/product_model.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_product_response_model.dart';
import 'package:http/http.dart' as http;
import 'package:logic_loot_admin/core/domain/model/response_model/get_productby_id_response_model.dart';
import 'package:logic_loot_admin/core/domain/repository/product_repository.dart';

class ProductServices implements IproductRepo {
  @override
  Future<Either<String, String>> addProduct(
      {required AddproductModel productModel}) async {
    try {
      final tkn = await SharedPreffs.getAdminToken();
      final request = http.MultipartRequest(
          "POST", Uri.parse("https://lapify.online/admin/products"));
      request.headers.addAll({"Cookie": "Authorise=$tkn"});
      request.fields['name'] = productModel.name;
      request.fields['price'] = productModel.price.toString();
      request.fields['size'] = productModel.size;
      request.fields['specification'] = productModel.specification;
      request.fields['quantity'] = productModel.quantity.toString();
      request.fields['description'] = productModel.description;
      request.fields['category'] = productModel.categoryId.toString();
      final imageFile = await http.MultipartFile.fromPath(
          "image", productModel.imageurl.path);
      request.files.add(imageFile);

      final response = await request.send();

      print("response status code --> ${response.statusCode}");

      final responseModel = await response.stream.bytesToString();

      if (response.statusCode == 200) {
        print("succes");
        // final resultModel = addProductResponseModelFromJson(responseModel);
        return const Right("Product added successfully");
      } else {
        final result = jsonDecode(responseModel);
        final error = result["error"];
        return Left(error);
        // if (result is Map<String, dynamic> && result.containsKey('error')) {
        //   final error = result["error"];
        //   return Left(error);
        // } else {
        //   return const Left("Unexpected error format");
        // }
      }
    } catch (e) {
      print("Exception $e");
      return const Left("Oops! something went wrong @E");
    }
  }

  @override
  Future<Either<String, List<Products>>> getAllProuducts() async {
    try {
      final tkn = await SharedPreffs.getAdminToken();
      print("admin token --> $tkn");

      if (tkn == null) {
        print("token is empty");

        return Left("Something went wrong internally");
      } else {
        final response = await http.Client().get(
            Uri.parse("https://lapify.online/admin/products?page=1&limit=50"),
            headers: {"Cookie": "Authorise=$tkn"});

        print("resonse --> $response");

        print("response statuscode --> ${response.statusCode}");

        //

        // print("response result model ---> $responseResult");

        if (response.statusCode == 200) {
          final jsonResponse = jsonDecode(response.body);
          print(jsonResponse);

          // if(jsonResponse["produ"])

          if (jsonResponse['products'] != null) {
            final List<dynamic> productsJson = jsonResponse['products'];
            final List<Products> products =
                productsJson.map((item) => Products.fromJson(item)).toList();
            print("Parsed products --> $products");

            return Right(products);
          } else {
            return Left("Product is empty");
          }

          // print("result--> $success");

          // if(success.products != null)
        } else {
          print("error");
          final responseResult = jsonDecode(response.body);
          final error = responseResult["error"];
          return Left(error);
        }
      }
    } catch (e) {
      print("exception --> $e");
      return const Left("Oops! something went wrong");
    }
  }

  @override
  Future<Either<String, ProductDetailsById>> getProductDetialsById(
      {required int id}) async {
    try {
      final tkn = await SharedPreffs.getAdminToken();
      print("admin token ----> $tkn");

      if (tkn == null) {
        return const Left("Some internal error occured (T)");
      } else {
        final response = await http.Client().get(
            Uri.parse("https://lapify.online/admin/products/details/$id"),
            headers: {"Cookie": "Authorise=$tkn"});
        print("respone --> $response");

        print("response statuscode ---> ${response.statusCode}");

        print("response body ---> ${response.body}");

        if (response.statusCode == 200) {
          print("success");
          final result = productDetailsByIdFromJson(response.body);
          return Right(result);
        } else {
          print("Error");
          final error = jsonDecode(response.body);
          final errmsg = error["error"];
          return Left(errmsg);
        }
      }
    } catch (e) {
      print("Exception --->$e");
      return const Left("Oops! somthing went wrong");
    }
  }

  @override
  Future<Either<String, String>> deleteProductById(
      {required int productId}) async {
    try {
      final tkn = await SharedPreffs.getAdminToken();
      print("admin token ---> $tkn");
      if (tkn == null) {
        print("token is empty");
        return Left("Error occured");
      } else {
        final response = await http.Client().delete(
            Uri.parse("https://lapify.online/admin/products/$productId"),
            headers: {"Cookie": "Authorise=$tkn"});

        print("response body --> ${response.body}");

        print("response status code --> ${response.statusCode}");

        if (response.statusCode == 200) {
          final responsejson = jsonDecode(response.body);
          final success = responsejson["succes"];
          print(success);
          return Right(success);
        } else {
          final responsejson = jsonDecode(response.body);
          final error = responsejson["error"];
          print("Failed");
          return Left(error);
        }
      }
    } catch (e) {
      print("Exception ---> $e");
      return const Left("Something went wrong");
    }
  }

  @override
  Future<Either<String, String>> editProductById(
      {required AddproductModel productModel, required int productId}) async {
    final adminToken = await SharedPreffs.getAdminToken();
    final jsonModel = jsonEncode(productModel);
    if (adminToken == null) {
      return const Left("Oops! something bad occured");
    } else {
      try {
        final response = await http.Client().post(
            Uri.parse("https://lapify.online/admin/products/$productId"),
            headers: {"Cookie": "Authorise=$adminToken"},
            body: jsonModel);

        log("Status code ---> ${response.statusCode}");

        if (response.statusCode == 200) {
          return const Right("Product Updated");
        } else {
          final result = jsonDecode(response.body);
          final errormsg = result["error"];
          return Left(errormsg);
        }
      } catch (e) {
        log("Exception occured --> $e");
        return const Left("Oops! unable to reach server");
      }
    }
  }

//   @override
//   Future<Either<Failure, GetAllproductResponseModel>> getAllProduct()async{
//    try {
//      final admnToken = await SharedPreffs.getAdminToken();
//      print(admnToken);
//      if(admnToken != null){
//       final response = await http.Client().get(Uri.parse("https://lapify.online/admin/products?page=1&limit=20"),headers: {
//         "Cookie":"Authorise=$admnToken"
//       });

//       print("respone ---> $response");
//       print("response-statuscode --> ${response.statusCode}");
//       print("response body --> ${response.body}");

//       if(response.statusCode == 200){
//         final responseModel = getAllproductResponseModelFromJson(response.body);
//         print("respone model --> $responseModel");
//         return Right(responseModel);
//       }else{
//         print("error");
//         return Left(Failure(msg:"Something went wrong"));
//       }
//      }else{
//       print("token missing");
//       return Left(Failure(msg:"Some error occured"));
//      }
//    } catch (e) {
//     print(e);
//      return Left(Failure(msg:'Oops ! something went wrong'));
//    }
//   }
}
