// To parse this JSON data, do
//
//     final categoryResponse = categoryResponseFromJson(jsonString);

import 'dart:convert';

CategoryResponse categoryResponseFromJson(String str) => CategoryResponse.fromJson(json.decode(str));

String categoryResponseToJson(CategoryResponse data) => json.encode(data.toJson());

class CategoryResponse {
    Category category;
    String success;

    CategoryResponse({
        required this.category,
        required this.success,
    });

    factory CategoryResponse.fromJson(Map<String, dynamic> json) => CategoryResponse(
        category: Category.fromJson(json["category "]),
        success: json["success"],
    );

    Map<String, dynamic> toJson() => {
        "category ": category.toJson(),
        "success": success,
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
