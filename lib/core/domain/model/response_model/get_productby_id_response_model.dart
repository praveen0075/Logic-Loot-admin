// To parse this JSON data, do
//
//     final productDetailsById = productDetailsByIdFromJson(jsonString);

import 'dart:convert';

ProductDetailsById productDetailsByIdFromJson(String str) => ProductDetailsById.fromJson(json.decode(str));

String productDetailsByIdToJson(ProductDetailsById data) => json.encode(data.toJson());

class ProductDetailsById {
    Inventory inventory;
    ProductDetails productDetails;
<<<<<<< HEAD
    ProductById products;
=======
    Product products;
>>>>>>> 96b867c57ac070ca535e58f69d91c795a59ca909

    ProductDetailsById({
        required this.inventory,
        required this.productDetails,
        required this.products,
    });

    factory ProductDetailsById.fromJson(Map<String, dynamic> json) => ProductDetailsById(
        inventory: Inventory.fromJson(json["inventory"]),
        productDetails: ProductDetails.fromJson(json["product details"]),
<<<<<<< HEAD
        products: ProductById.fromJson(json["products"]),
=======
        products: Product.fromJson(json["products"]),
>>>>>>> 96b867c57ac070ca535e58f69d91c795a59ca909
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

<<<<<<< HEAD
class ProductById {
=======
class Product {
>>>>>>> 96b867c57ac070ca535e58f69d91c795a59ca909
    int id;
    String name;
    int price;
    int offerprice;
    String size;
    bool removed;
    int category;
    String imageurl;

<<<<<<< HEAD
    ProductById({
=======
    Product({
>>>>>>> 96b867c57ac070ca535e58f69d91c795a59ca909
        required this.id,
        required this.name,
        required this.price,
        required this.offerprice,
        required this.size,
        required this.removed,
        required this.category,
        required this.imageurl,
    });

<<<<<<< HEAD
    factory ProductById.fromJson(Map<String, dynamic> json) => ProductById(
=======
    factory Product.fromJson(Map<String, dynamic> json) => Product(
>>>>>>> 96b867c57ac070ca535e58f69d91c795a59ca909
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
