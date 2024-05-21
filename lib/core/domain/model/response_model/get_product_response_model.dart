// To parse this JSON data, do
//
//     final getAllProducts = getAllProductsFromJson(jsonString);

import 'dart:convert';

GetAllProducts getAllProductsFromJson(String str) => GetAllProducts.fromJson(json.decode(str));

String getAllProductsToJson(GetAllProducts data) => json.encode(data.toJson());

class GetAllProducts {
    List<Products> products;

    GetAllProducts({
        required this.products,
    });

    factory GetAllProducts.fromJson(Map<String, dynamic> json) => GetAllProducts(
        products: List<Products>.from(json["products"].map((x) => Products.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
    };
}

class Products {
    int id;
    String name;
    int price;
    int offerprice;
    String size;
    int category;
    String imageUrl;
    int quantity;

    Products({
        required this.id,
        required this.name,
        required this.price,
        required this.offerprice,
        required this.size,
        required this.category,
        required this.imageUrl,
        required this.quantity,
    });

    factory Products.fromJson(Map<String, dynamic> json) => Products(
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
