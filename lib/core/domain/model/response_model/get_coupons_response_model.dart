// To parse this JSON data, do
//
//     final getCouponsResponse = getCouponsResponseFromJson(jsonString);

import 'dart:convert';

GetCouponsResponse getCouponsResponseFromJson(String str) => GetCouponsResponse.fromJson(json.decode(str));

String getCouponsResponseToJson(GetCouponsResponse data) => json.encode(data.toJson());

class GetCouponsResponse {
    List<AvialableCoupon> avialableCoupons;

    GetCouponsResponse({
        required this.avialableCoupons,
    });

    factory GetCouponsResponse.fromJson(Map<String, dynamic> json) => GetCouponsResponse(
        avialableCoupons: List<AvialableCoupon>.from(json["avialable coupons"].map((x) => AvialableCoupon.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "avialable coupons": List<dynamic>.from(avialableCoupons.map((x) => x.toJson())),
    };
}

class AvialableCoupon {
    int id;
    String code;
    String type;
    int amount;
    DateTime validUntil;
    int usageLimit;
    int usedcount;

    AvialableCoupon({
        required this.id,
        required this.code,
        required this.type,
        required this.amount,
        required this.validUntil,
        required this.usageLimit,
        required this.usedcount,
    });

    factory AvialableCoupon.fromJson(Map<String, dynamic> json) => AvialableCoupon(
        id: json["id"],
        code: json["code"],
        type: json["type"],
        amount: json["amount"],
        validUntil: DateTime.parse(json["valid_until"]),
        usageLimit: json["usage_limit"],
        usedcount: json["usedcount"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "type": type,
        "amount": amount,
        "valid_until": validUntil.toIso8601String(),
        "usage_limit": usageLimit,
        "usedcount": usedcount,
    };
}
