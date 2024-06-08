import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:logic_loot_admin/core/data/shared_preferances/shared_pref.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_allcategoris_response.dart';

// class CategoryServices implements CategoryRepository {
class CategoryServices {
  // @override
  // Future<Either<String, CategoryResponse>> addCategory(
  //     {required String category, required String description}) async {
  //   final categoryBody =
  //       jsonEncode({"description": description, "name": category});

  //   final tkn = await SharedPreffs.getAdminToken();
  //   // print("token ----->  $tkn");
  //   if (tkn == null || tkn.isEmpty) {
  //     // print("no token");
  //     return const Left("Token not found");
  //   }
  //   try {
  //     final response = await http.Client().post(
  //         Uri.parse("https://lapify.online/admin/categories"),
  //         body: categoryBody,
  //         headers: {"Cookie": "Authorise=$tkn"});
  //     // print(response);
  //     // print(response.body);
  //     print(response.statusCode);
  //     if (response.statusCode == 200) {
  //       final result = categoryResponseFromJson(response.body);
  //       // print(result);

  //       print("Success");
  //       return Right(result);
  //     } else {
  //       print("failure (else) ");
  //       final errResponse = jsonDecode(response.body);
  //       final err = errResponse["error"];
  //       return Left(err);
  //     }
  //   } catch (e) {
  //     // print("Exception ----> $e");
  //     return const Left("Something Went Wrong");
  //   }
  // }

  Future<Either<String, List<CategoryAll>>> getAllcategory() async {
    try {
      final tkn = await SharedPreffs.getAdminToken();

      final response = await http.Client().get(
          Uri.parse("https://lapify.online/admin/categories"),
          headers: {"Cookie": "Authorise=$tkn"});

      log("response statuscode --> ${response.statusCode}");

      if (response.statusCode == 200) {

        final responseModel = getAllCategoriesFromJson(response.body);

        return Right(responseModel.categories);
      } else {
        log("error getting response from getall category");

        return const Left("Failed to get Categories");
      }
    } catch (e) {
      log(e.toString());

      return const Left("Oops! Something Went wrong");
    }
  }

  Future<Either<String, String>> addCategory(
      {required String categoryNameValue,
      required String categoryDescriptionValue}) async {
    try {
      final tkn = await SharedPreffs.getAdminToken(); 

      final postModel = jsonEncode(
          {"description": categoryDescriptionValue, "name": categoryNameValue});

      print(postModel);

      print("admin token ---> $tkn");

      if (tkn == null) {
        return const Left("Something went wrong");
      } else {
        final respone = await http.Client().post(
            Uri.parse("https://lapify.online/admin/categories"),
            headers: {"Cookie": "Authorise=$tkn"},
            body: postModel);

        print("response status code ---> ${respone.statusCode}");

        print("response model --> ${respone.body}");

        final resultModel = jsonDecode(respone.body);

        if (respone.statusCode == 200) {
          final success = resultModel["success"];
          log("success --- $success");
          return Right(success);
        } else {
          final error = resultModel["error"];
          log("error ---- $error"); 
          return Left(error);
        }
      }
    } catch (e) {
      log(e.toString());
      return const Left("Oops! Something Went wrong");
    }
  }

  Future<Either<String, String>> deleteCategoryWithId(
      {required int categoryId}) async {
    try {
      final tkn = await SharedPreffs.getAdminToken();
      print("admin token ---> $tkn");

      if (tkn == null) {
        print("Token is empty");
        return const Left("Somthing went wrong internally");
      } else {
        final response = await http.Client().delete(
            Uri.parse("https://lapify.online/admin/categories/$categoryId"),
            headers: {"Cookie": "Authorise=$tkn"});

        print("response --> $response");

        print("response status code --> ${response.statusCode}");

        final resultModel = jsonDecode(response.body);

        print("resultModel ---> $resultModel");

        if (response.statusCode == 200) {
          print("succuess");
          final success = resultModel["success"];
          return Right(success);
        } else {
          print("error");
          final error = resultModel["error"];
          return Left(error);
        }
      }
    } catch (e) {
      print("Exception --> $e");
      return Left("Oops! Something went wrong");
    }
  }

  // @override
  // Future<Either<String, String>> deleteCategory({required int id}) async {
  //   try {
  //     final tkn = await SharedPreffs.getAdminToken();
  //     if (tkn == null) {
  //       return const Left("Oops Something went wrong with the server");
  //     } else {
  //       final response = await http.Client().delete(
  //           Uri.parse("https://lapify.online/admin/categories/$id"),
  //           headers: {"Cookie": "Authorise=$tkn"});
  //           print("status code --> ${response.statusCode}");
  //           print(response.body);
  //           final result = jsonDecode(response.body);
  //           print(result);
  //           print(result["success"]);
  //           return Right(result["success"]);
  //     }
  //   } catch (e) {
  //     print("Exception --> $e");
  //     return const Left("Oops Something went wrong with the server");
  //   }
  // }
}


// import 'dart:developer';

// import 'package:logic_loot_admin/core/domain/model/response_model/get_allcategoris_response.dart';
// import 'package:http/http.dart' as http;

// class CategoryServices{
//   final String baseUrl = "https://lapify.online/admin/categories";

//   Future<List<CategoryAll>> getCategory() async{
//     final response = await http.get(Uri.parse(baseUrl));

//     log("response status code --> ${response.statusCode}");

//     if(response.statusCode == 200){
//       final 
//     }
//   }
// }
