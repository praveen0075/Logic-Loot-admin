// To parse this JSON data, do
//
//     final addCouponBody = addCouponBodyFromJson(jsonString);

import 'dart:convert';

AddCouponBody addCouponBodyFromJson(String str) => AddCouponBody.fromJson(json.decode(str));

String addCouponBodyToJson(AddCouponBody data) => json.encode(data.toJson());

class AddCouponBody {
    int amount;
    String code;
    String type;
    int usageLimit;
    String validUntil;

      AddCouponBody({
        required this.amount,
        required this.code,
        required this.type,
        required this.usageLimit,
        required this.validUntil,
    });

    factory AddCouponBody.fromJson(Map<String, dynamic> json) => AddCouponBody(
        amount: json["amount"],
        code: json["code"],
        type: json["type"],
        usageLimit: json["usage_limit"],
        validUntil: json["valid_until"],
    );

    Map<String, dynamic> toJson() => {
        "amount": amount,
        "code": code,
        "type": type,
        "usage_limit": usageLimit,
        "valid_until": validUntil,
    };
}
