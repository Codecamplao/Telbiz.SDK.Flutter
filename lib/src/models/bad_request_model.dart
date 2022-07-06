import 'dart:convert';

BadRequestModel badRequestModelFromJson(String str) =>
    BadRequestModel.fromJson(json.decode(str));

String badRequestModelToJson(BadRequestModel data) =>
    json.encode(data.toJson());

class BadRequestModel {
  BadRequestModel({
    this.code,
    this.message,
    this.success,
    this.detail,
  });

  String? code;
  String? message;
  bool? success;
  String? detail;

  factory BadRequestModel.fromJson(Map<String, dynamic> json) =>
      BadRequestModel(
        code: json["code"],
        message: json["message"],
        success: json["success"],
        detail: json["detail"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "success": success,
        "detail": detail,
      };
}
