// To parse this JSON data, do
//
//     final customerDetailsModel = customerDetailsModelFromJson(jsonString);

// ignore_for_file: unused_import

import 'package:meta/meta.dart';
import 'dart:convert';

CustomerDetailsModel customerDetailsModelFromJson(String str) =>
    CustomerDetailsModel.fromJson(json.decode(str));

String customerDetailsModelToJson(CustomerDetailsModel data) =>
    json.encode(data.toJson());

class CustomerDetailsModel {
  // final int count;
  // final dynamic next;
  // final dynamic previous;
  final List<Result> results;

  CustomerDetailsModel({
    // required this.count,
    // required this.next,
    // required this.previous,
    required this.results,
  });

  factory CustomerDetailsModel.fromJson(Map<String, dynamic> json) =>
      CustomerDetailsModel(
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
  final String customerFullName;
  final int customerPhoneNumber;
  final DateTime createdAt;
  final DateTime updatedAt;

  Result({
    required this.id,
    required this.customerFullName,
    required this.customerPhoneNumber,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        customerFullName: json["customer_full_name"],
        customerPhoneNumber: json["customer_phone_number"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "customer_full_name": customerFullName,
        "customer_phone_number": customerPhoneNumber,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
