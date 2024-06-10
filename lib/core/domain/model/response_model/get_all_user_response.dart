// To parse this JSON data, do
//
//     final getAllUserModel = getAllUserModelFromJson(jsonString);

import 'dart:convert';

GetAllUserModel getAllUserModelFromJson(String str) => GetAllUserModel.fromJson(json.decode(str));

String getAllUserModelToJson(GetAllUserModel data) => json.encode(data.toJson());

class GetAllUserModel {
    List<User> users;

    GetAllUserModel({
        required this.users,
    });

    factory GetAllUserModel.fromJson(Map<String, dynamic> json) => GetAllUserModel(
        users: List<User>.from(json["users"].map((x) => User.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "users": List<dynamic>.from(users.map((x) => x.toJson())),
    };
}

class User {
    int id;
    String name;
    String? email;
    String phone;
    String password;
    int? wallet;
    bool permission;
    String? referalcode;

    User({
        required this.id,
        required this.name,
        this.email,
        required this.phone,
        required this.password,
        this.wallet,
        required this.permission,
        this.referalcode,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        password: json["password"],
        wallet: json["wallet"],
        permission: json["permission"],
        referalcode: json["referalcode"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "phone": phone,
        "password": password,
        "wallet": wallet,
        "permission": permission,
        "referalcode": referalcode,
    };
}