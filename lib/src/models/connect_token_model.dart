import 'dart:convert';

ConnectTokenModel connectTokenModelFromJson(String str) => ConnectTokenModel.fromJson(json.decode(str));

String connectTokenModelToJson(ConnectTokenModel data) => json.encode(data.toJson());

class ConnectTokenModel {
  ConnectTokenModel({
    this.code,
    this.message,
    this.success,
    this.detail,
    this.accessToken,
    this.expire,
    this.refreshToken,
    this.username,
    this.password,
  });

  String? code;
  String? message;
  bool? success;
  String? detail;
  String? accessToken;
  int? expire;
  String? refreshToken;
  String? username;
  String? password;

  factory ConnectTokenModel.fromJson(Map<String, dynamic> json) => ConnectTokenModel(
    code: json["code"],
    message: json["message"],
    success: json["success"],
    detail: json["detail"],
    accessToken: json["accessToken"],
    expire: json["expire"],
    refreshToken: json["refreshToken"],
    username: json["username"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "message": message,
    "success": success,
    "detail": detail,
    "accessToken": accessToken,
    "expire": expire,
    "refreshToken": refreshToken,
    "username": username,
    "password": password,
  };
}
