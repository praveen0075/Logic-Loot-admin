// To parse this JSON data, do
//
//     final getAllCategories = getAllCategoriesFromJson(jsonString);

import 'dart:convert';

GetAllCategories getAllCategoriesFromJson(String str) => GetAllCategories.fromJson(json.decode(str));

String getAllCategoriesToJson(GetAllCategories data) => json.encode(data.toJson());

class GetAllCategories {
    List<Category> categories;

    GetAllCategories({
        required this.categories,
    });

    factory GetAllCategories.fromJson(Map<String, dynamic> json) => GetAllCategories(
        categories: List<Category>.from(json["Categories"].map((x) => Category.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "Categories": List<dynamic>.from(categories.map((x) => x.toJson())),
    };
}

class Category {
    int id;
    String name;
    String description;

    Category({
        required this.id,
        required this.name,
        required this.description,
    });

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["ID"],
        name: json["name"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "ID": id,
        "name": name,
        "description": description,
    };
}
