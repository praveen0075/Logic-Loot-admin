// To parse this JSON data, do
//
//     final ordersModel = ordersModelFromJson(jsonString);

import 'dart:convert';

OrdersModel ordersModelFromJson(String str) => OrdersModel.fromJson(json.decode(str));

String ordersModelToJson(OrdersModel data) => json.encode(data.toJson());

class OrdersModel {
    List<Orderlist> orderlist;

    OrdersModel({
        required this.orderlist,
    });

    factory OrdersModel.fromJson(Map<String, dynamic> json) => OrdersModel(
        orderlist: List<Orderlist>.from(json["orderlist"].map((x) => Orderlist.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "orderlist": List<dynamic>.from(orderlist.map((x) => x.toJson())),
    };
}

class Orderlist {
    int orderid;
    int userid;
    int addressid;
    int total;
    String status;
    String paymentmethod;
    String payemntstatus;
    String paymentid;

    Orderlist({
        required this.orderid,
        required this.userid,
        required this.addressid,
        required this.total,
        required this.status,
        required this.paymentmethod,
        required this.payemntstatus,
        required this.paymentid,
    });

    factory Orderlist.fromJson(Map<String, dynamic> json) => Orderlist(
        orderid: json["orderid"],
        userid: json["userid"],
        addressid: json["addressid"],
        total: json["total"],
        status: json["status"],
        paymentmethod: json["paymentmethod"],
        payemntstatus: json["payemntstatus"],
        paymentid: json["paymentid"],
    );

    Map<String, dynamic> toJson() => {
        "orderid": orderid,
        "userid": userid,
        "addressid": addressid,
        "total": total,
        "status": status,
        "paymentmethod": paymentmethod,
        "payemntstatus": payemntstatus,
        "paymentid": paymentid,
    };
}
