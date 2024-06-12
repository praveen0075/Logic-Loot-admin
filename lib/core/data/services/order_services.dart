import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:logic_loot_admin/core/data/shared_preferances/shared_pref.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_all_orders_response.dart';
import 'package:http/http.dart' as http;

class OrderServices {
  Future<Either<String, List<Orderlist>>> getAllOrders() async {
    try {
      final adminToken = await SharedPreffs.getAdminToken();
      log("admin token ---> $adminToken");
      if (adminToken == null) {
        return const Left("Oops! somthing bad occured");
      } else {
        final response = await http.Client().get(
            Uri.parse(
                "https://lapify.online/admin/order/details?page=1&limit=50"),
            headers: {"Cookie": "Authorise=$adminToken"});

        log("response ---> $response");
        log("response status code ---> ${response.statusCode}");

        if (response.statusCode == 200) {
          final success = ordersModelFromJson(response.body);
          log(success.orderlist.toString());
          return Right(success.orderlist);
        } else {
          final result = jsonDecode(response.body);
          final err = result["error"];
          return Left(err);
        }
      }
    } catch (e) {
      log("Exception ---> $e");
      return const Left("Oops! somthing went wrong");
    }
  }

  Future<Either<String, String>> orderCancel(int orderId) async {
    try {
      final adminToke = await SharedPreffs.getAdminToken();
      log("admin token ---> $adminToke");

      if (adminToke == null) {
        log("admin token is null");
        return const Left("Oops! something bad occured");
      } else {
        final response = await http.Client().patch(
            Uri.parse("https://lapify.online/admin/order/cancel/$orderId"),
            headers: {"Cookie": "Authorise=$adminToke"});

        log("cancel response status code --> ${response.statusCode}");

        if (response.statusCode == 200) {
          final result = jsonDecode(response.body);
          final success = result["message"];
          return Right(success);
        } else {
          final result = jsonDecode(response.body);
          final error = result["error"];
          return Left(error);
        }
      }
    } catch (e) {
      log("exception ---> $e");
      return const Left("Oops! something went wrong");
    }
  }

  Future<Either<String, String>> updateOrder(
      {required int orderId, required String newStatus}) async {
   
    try {
       final adminToken = await SharedPreffs.getAdminToken();
    log("Admin token ---> $adminToken");
      if (adminToken == null) {
        return const Left("Oops! something bad occured");
      } else {
        final request = http.MultipartRequest("PATCH",
            Uri.parse("https://lapify.online/admin/order/update/$orderId"));
        request.headers.addAll({"Cookie": "Authorise=$adminToken"});
        request.fields["status"] = newStatus;

        final response = await request.send();

        log("Update response statuscode ---> ${response.statusCode}");

        final responseModel = await response.stream.bytesToString();

        if (response.statusCode == 200) {
          log("success");
          return const Right("Successfully Updated");
        } else {
          final result = jsonDecode(responseModel);
          final error = result["error"];
          log("Error --> $error");
          return Left(error);
        }
      }
    } catch (e) {
      log("exception ---> $e");
      return const Left("Oops! somthing went wrong");
    }
  }
}
