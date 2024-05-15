// To parse this JSON data, do
//
//     final getAllproductResponseModel = getAllproductResponseModelFromJson(jsonString);

import 'dart:convert';

GetAllproductResponseModel getAllproductResponseModelFromJson(String str) => GetAllproductResponseModel.fromJson(json.decode(str));

String getAllproductResponseModelToJson(GetAllproductResponseModel data) => json.encode(data.toJson());

class GetAllproductResponseModel {
    List<Product> products;

    GetAllproductResponseModel({
        required this.products,
    });

    factory GetAllproductResponseModel.fromJson(Map<String, dynamic> json) => GetAllproductResponseModel(
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
    };
}

class Product {
    int id;
    String name;
    int price;
    int offerprice;
    String size;
    int category;
    String imageUrl;
    int quantity;

    Product({
        required this.id,
        required this.name,
        required this.price,
        required this.offerprice,
        required this.size,
        required this.category,
        required this.imageUrl,
        required this.quantity,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        offerprice: json["offerprice"],
        size: json["size"],
        category: json["category"],
        imageUrl: json["image_url"],
        quantity: json["quantity"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "offerprice": offerprice,
        "size": size,
        "category": category,
        "image_url": imageUrl,
        "quantity": quantity,
    };
}
