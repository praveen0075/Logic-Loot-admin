import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:logic_loot_admin/core/data/shared_preferances/shared_pref.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/category_response_model.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_allcategoris_response.dart';
import 'package:logic_loot_admin/core/domain/repository/category_repository.dart';

class CategoryServices implements CategoryRepository {
  @override
  Future<Either<String, CategoryResponse>> addCategory(
      {required String category, required String description}) async {
    final categoryBody =
        jsonEncode({"description": description, "name": category});

    final tkn = await SharedPreffs.getAdminToken();
    // print("token ----->  $tkn");
    if (tkn == null || tkn.isEmpty) {
      // print("no token");
      return const Left("Token not found");
    }
    try {
      final response = await http.Client().post(
          Uri.parse("https://lapify.online/admin/categories"),
          body: categoryBody,
          headers: {"Cookie": "Authorise=$tkn"});
      // print(response);
      // print(response.body);
      // print(response.statusCode);
      if (response.statusCode == 200) {
        final result = categoryResponseFromJson(response.body);
        // print(result);

        // print("Success");
        return Right(result);
      } else {
        // print("failure (else) ");
        final errResponse = jsonDecode(response.body);
        final err = errResponse["error"];
        return Left(err);
      }
    } catch (e) {
      // print("Exception ----> $e");
      return const Left("Something Went Wrong");
    }
  }

  @override
  Future<Either<String, GetAllCategories>> getAllcategory() async {
    try {
      final tkn = await SharedPreffs.getAdminToken();
      final response = await http.Client().get(
          Uri.parse("https://lapify.online/admin/categories"),
          headers: {"Cookie": "Authorise=$tkn"});
      print(response.statusCode);
      if (response.statusCode == 200) {
        final responseModel = getAllCategoriesFromJson(response.body);
        print(responseModel);
        return Right(responseModel);
      } else {
        print("error");
        return const Left("Someting went wrong");
      }
    } catch (e) {
      print(e);
      return const Left("Oops! couldn't find any category");
    }
  }

  @override
  Future<Either<String, String>> deleteCategory({required int id}) async {
    try {
      final tkn = await SharedPreffs.getAdminToken();
      if (tkn == null) {
        return const Left("Oops Something went wrong with the server");
      } else {
        final response = await http.Client().delete(
            Uri.parse("https://lapify.online/admin/categories/$id"),
            headers: {"Cookie": "Authorise=$tkn"});
            print("status code --> ${response.statusCode}");
            print(response.body);
            final result = jsonDecode(response.body);
            print(result);
            print(result["success"]);
            return Right(result["success"]);
      }
    } catch (e) {
      print("Exception --> $e");
      return const Left("Oops Something went wrong with the server");
    }
  }
}
