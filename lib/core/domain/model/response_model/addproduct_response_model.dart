// To parse this JSON data, do
//
//     final addProductResponseModel = addProductResponseModelFromJson(jsonString);

import 'dart:convert';

AddProductResponseModel addProductResponseModelFromJson(String str) => AddProductResponseModel.fromJson(json.decode(str));

String addProductResponseModelToJson(AddProductResponseModel data) => json.encode(data.toJson());

class AddProductResponseModel {
    Product product;
    String success;

    AddProductResponseModel({
        required this.product,
        required this.success,
    });

    factory AddProductResponseModel.fromJson(Map<String, dynamic> json) => AddProductResponseModel(
        product: Product.fromJson(json["product"]),
        success: json["success"],
    );

    Map<String, dynamic> toJson() => {
        "product": product.toJson(),
        "success": success,
    };
}

class Product {
    int id;
    String name;
    int price;
    int offerprice;
    String size;  
    bool removed;
    int category;
    String imageurl;

    Product({
        required this.id,
        required this.name,
        required this.price,
        required this.offerprice,
        required this.size,
        required this.removed,
        required this.category,
        required this.imageurl,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["ID"],
        name: json["name"],
        price: json["price"],
        offerprice: json["offerprice"],
        size: json["size"],
        removed: json["removed"],
        category: json["Category"],
        imageurl: json["imageurl"],
    );

    Map<String, dynamic> toJson() => {
        "ID": id,
        "name": name,
        "price": price,
        "offerprice": offerprice,
        "size": size,
        "removed": removed,
        "Category": category,
        "imageurl": imageurl,
    };
}
