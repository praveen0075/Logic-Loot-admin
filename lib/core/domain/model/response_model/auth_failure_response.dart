// To parse this JSON data, do
//
//     final authFailureResponse = authFailureResponseFromJson(jsonString);

import 'dart:convert';

AuthFailureResponse authFailureResponseFromJson(String str) => AuthFailureResponse.fromJson(json.decode(str));

String authFailureResponseToJson(AuthFailureResponse data) => json.encode(data.toJson());

class AuthFailureResponse {
    String details;
    String error;

    AuthFailureResponse({
        required this.details,
        required this.error,
    });

    factory AuthFailureResponse.fromJson(Map<String, dynamic> json) => AuthFailureResponse(
        details: json["details"],
        error: json["error"],
    );

    Map<String, dynamic> toJson() => {
        "details": details,
        "error": error,
    };
}
