// To parse this JSON data, do
//
//     final productsSoldinCash = productsSoldinCashFromJson(jsonString);

import 'dart:convert';

ProductsSoldinCash productsSoldinCashFromJson(String str) =>
    ProductsSoldinCash.fromJson(json.decode(str));

String productsSoldinCashToJson(ProductsSoldinCash data) =>
    json.encode(data.toJson());

class ProductsSoldinCash {
  // final int count;
  // final String next;
  // final dynamic previous;
  final List<Result> results;

  ProductsSoldinCash({
    // required this.count,
    // required this.next,
    // required this.previous,
    required this.results,
  });

  factory ProductsSoldinCash.fromJson(Map<String, dynamic> json) =>
      ProductsSoldinCash(
        // count: json["count"],
        // next: json["next"],
        // previous: json["previous"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        // "count": count,
        // "next": next,
        // "previous": previous,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Result {
  final String id;
  final int numberOfProductNedeed;
  final DateTime dateProductSold;
  final int totalProductCost;
  final int totalProfitObtained;
  final int storeRemain;
  final DateTime dateForIssuesInvoice;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String productName;
  final String customerFullName;
  final int supervisor;
  final String shopName;

  Result({
    required this.id,
    required this.numberOfProductNedeed,
    required this.dateProductSold,
    required this.totalProductCost,
    required this.totalProfitObtained,
    required this.storeRemain,
    required this.dateForIssuesInvoice,
    required this.createdAt,
    required this.updatedAt,
    required this.productName,
    required this.customerFullName,
    required this.supervisor,
    required this.shopName,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        numberOfProductNedeed: json["number_of_product_nedeed"],
        dateProductSold: DateTime.parse(json["date_product_sold"]),
        totalProductCost: json["total_product_cost"],
        totalProfitObtained: json["total_profit_obtained"],
        storeRemain: json["store_remain"],
        dateForIssuesInvoice: DateTime.parse(json["date_for_issues_invoice"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        productName: json["product_name"],
        customerFullName: json["customer_full_name"],
        supervisor: json["supervisor"],
        shopName: json["shop_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "number_of_product_nedeed": numberOfProductNedeed,
        "date_product_sold": dateProductSold.toIso8601String(),
        "total_product_cost": totalProductCost,
        "total_profit_obtained": totalProfitObtained,
        "store_remain": storeRemain,
        "date_for_issues_invoice":
            "${dateForIssuesInvoice.year.toString().padLeft(4, '0')}-${dateForIssuesInvoice.month.toString().padLeft(2, '0')}-${dateForIssuesInvoice.day.toString().padLeft(2, '0')}",
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "product_name": productName,
        "customer_full_name": customerFullName,
        "supervisor": supervisor,
        "shop_name": shopName,
      };
}
