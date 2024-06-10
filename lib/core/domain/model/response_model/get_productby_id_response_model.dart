// To parse this JSON data, do
//
//     final productDetailsById = productDetailsByIdFromJson(jsonString);

import 'dart:convert';

ProductDetailsById productDetailsByIdFromJson(String str) => ProductDetailsById.fromJson(json.decode(str));

String productDetailsByIdToJson(ProductDetailsById data) => json.encode(data.toJson());

class ProductDetailsById {
    Inventory inventory;
    ProductDetails productDetails;
    Product products;

    ProductDetailsById({
        required this.inventory,
        required this.productDetails,
        required this.products,
    });

    factory ProductDetailsById.fromJson(Map<String, dynamic> json) => ProductDetailsById(
        inventory: Inventory.fromJson(json["inventory"]),
        productDetails: ProductDetails.fromJson(json["product details"]),
        products: Product.fromJson(json["products"]),
    );

    Map<String, dynamic> toJson() => {
        "inventory": inventory.toJson(),
        "product details": productDetails.toJson(),
        "products": products.toJson(),
    };
}

class Inventory {
    int productId;
    int quantity;
    int productCategory;

    Inventory({
        required this.productId,
        required this.quantity,
        required this.productCategory,
    });

    factory Inventory.fromJson(Map<String, dynamic> json) => Inventory(
        productId: json["ProductId"],
        quantity: json["Quantity"],
        productCategory: json["ProductCategory"],
    );

    Map<String, dynamic> toJson() => {
        "ProductId": productId,
        "Quantity": quantity,
        "ProductCategory": productCategory,
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
