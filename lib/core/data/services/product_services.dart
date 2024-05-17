import 'package:dartz/dartz.dart';
import 'package:logic_loot_admin/core/data/shared_preferances/shared_pref.dart';
import 'package:logic_loot_admin/core/domain/model/body_model/product_model.dart';
import 'package:logic_loot_admin/core/domain/model/failure.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/getAllProduct_model.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/product_response_model.dart';
import 'package:logic_loot_admin/core/domain/repository/product_repository.dart';
import 'package:http/http.dart' as http ;

class ProductServices implements IproductRepo{
  @override
  Future<Either<Failure, AddproductResponseModel>> addProduct({required AddproductModel productModel})async{
    try {
      final tkn  = await SharedPreffs.getAdminToken();
      final request = http.MultipartRequest("POST",Uri.parse("https://lapify.online/admin/products"));
      request.headers.addAll({"Cookie": "Authorise=$tkn"});
      request.fields['name'] = productModel.name;
      request.fields['price'] = productModel.price.toString();
      request.fields['size'] = productModel.size;
      request.fields['specification'] = productModel.specification;
      request.fields['quantity'] = productModel.quantity.toString();
      request.fields['description'] = productModel.description;
      request.fields['category'] = productModel.categoryId.toString();
      final imageFile = await http.MultipartFile.fromPath("image", productModel.imageurl.path);
      request.files.add(imageFile);

      final response =  await request.send();

      print(response.statusCode);
      final responseModel = await response.stream.bytesToString();
      print(responseModel);


      if(response.statusCode == 200){
        print(responseModel); 
        final resultModel = addproductResponseModelFromJson(responseModel);
        print(resultModel);
        // print(responseModel["product"]);
        return Right(resultModel);
      
      }else{
        print("error");
        return Left(Failure(msg:"Failed to add Product"));
      }   
    } catch (e) {
      print(e);
      return Left(Failure(msg:"Someting went wrong"));
    }
  }
  
  @override
  Future<Either<Failure, GetAllproductResponseModel>> getAllProduct()async{
   try {
     final admnToken = await SharedPreffs.getAdminToken();
     print(admnToken);
     if(admnToken != null){
      final response = await http.Client().get(Uri.parse("https://lapify.online/admin/products?page=1&limit=20"),headers: {
        "Cookie":"Authorise=$admnToken"
      });

      print("respone ---> $response");
      print("response-statuscode --> ${response.statusCode}");
      print("response body --> ${response.body}");

      if(response.statusCode == 200){
        final responseModel = getAllproductResponseModelFromJson(response.body);
        print("respone model --> $responseModel");
        return Right(responseModel);
      }else{
        print("error");
        return Left(Failure(msg:"Something went wrong"));
      }
     }else{
      print("token missing");
      return Left(Failure(msg:"Some error occured"));
     }
   } catch (e) {
    print(e);
     return Left(Failure(msg:'Oops ! something went wrong'));
   }
  }
  
}