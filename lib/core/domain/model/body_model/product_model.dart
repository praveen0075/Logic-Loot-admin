// To parse this JSON data, do
//
//     final addproductModel = addproductModelFromJson(jsonString);

import 'dart:convert';
import 'dart:io';


AddproductModel addproductModelFromJson(String str) => AddproductModel.fromJson(json.decode(str));

String addproductModelToJson(AddproductModel data) => json.encode(data.toJson());

class AddproductModel {
    String name;
    num price;
    String size;
    String specification;
    int quantity;
    String description;
    int categoryId;
    File imageurl;

    AddproductModel({
        required this.name,
        required this.price,
        required this.size,
        required this.specification,
        required this.quantity,
        required this.description,
        required this.categoryId,
        required this.imageurl
    });

    factory AddproductModel.fromJson(Map<String, dynamic> json) => AddproductModel(
        name: json["name"],
        price: json["price"] as num,
        size: json["size"],
        specification: json["specification"],
        quantity: json["quantity"],
        description: json["description"],
        categoryId: json["category"],
        imageurl: json["image"]
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "price": price,
        "size": size,
        "specification": specification,
        "quantity": quantity,
        "description": description,
        "category": categoryId,
        "image" : imageurl
    };
}
