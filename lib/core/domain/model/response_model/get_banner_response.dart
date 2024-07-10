// To parse this JSON data, do
//
//     final bannerResponseModel = bannerResponseModelFromJson(jsonString);

import 'dart:convert';

BannerResponseModel bannerResponseModelFromJson(String str) => BannerResponseModel.fromJson(json.decode(str));

String bannerResponseModelToJson(BannerResponseModel data) => json.encode(data.toJson());

class BannerResponseModel {
    List<Banner> banners;

    BannerResponseModel({
        required this.banners,
    });

    factory BannerResponseModel.fromJson(Map<String, dynamic> json) => BannerResponseModel(
        banners: List<Banner>.from(json["Banners"].map((x) => Banner.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "Banners": List<dynamic>.from(banners.map((x) => x.toJson())),
    };
}

class Banner {
    int id;
    String name;
    String imageurl;

    Banner({
        required this.id,
        required this.name,
        required this.imageurl,
    });

    factory Banner.fromJson(Map<String, dynamic> json) => Banner(
        id: json["id"],
        name: json["name"],
        imageurl: json["imageurl"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "imageurl": imageurl,
    };
}
