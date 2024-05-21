// To parse this JSON data, do
//
//     final getProductById = getProductByIdFromJson(jsonString);

import 'dart:convert';

GetProductById getProductByIdFromJson(String str) => GetProductById.fromJson(json.decode(str));

String getProductByIdToJson(GetProductById data) => json.encode(data.toJson());

class GetProductById {
    ProductDetails productDetails;
    ProductsById products;

    GetProductById({
        required this.productDetails,
        required this.products,
    });

    factory GetProductById.fromJson(Map<String, dynamic> json) => GetProductById(
        productDetails: ProductDetails.fromJson(json["product details"]),
        products: ProductsById.fromJson(json["products"]),
    );

    Map<String, dynamic> toJson() => {
        "product details": productDetails.toJson(),
        "products": products.toJson(),
    };
}

class ProductDetails {
    int productid;
    String description;
    String specification;

    ProductDetails({
        required this.productid,
        required this.description,
        required this.specification,
    });

    factory ProductDetails.fromJson(Map<String, dynamic> json) => ProductDetails(
        productid: json["productid"],
        description: json["description"],
        specification: json["specification"],
    );

    Map<String, dynamic> toJson() => {
        "productid": productid,
        "description": description,
        "specification": specification,
    };
}

class ProductsById {
    int id;
    String name;
    int price;
    int offerprice;
    String size;
    bool removed;
    int category;
    String imageurl;

    ProductsById({
        required this.id,
        required this.name,
        required this.price,
        required this.offerprice,
        required this.size,
        required this.removed,
        required this.category,
        required this.imageurl,
    });

    factory ProductsById.fromJson(Map<String, dynamic> json) => ProductsById(
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
