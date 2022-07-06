import 'dart:convert';

NewTransactionModel newTransactionModelFromJson(String str) => NewTransactionModel.fromJson(json.decode(str));

String newTransactionModelToJson(NewTransactionModel data) => json.encode(data.toJson());

class NewTransactionModel {
  NewTransactionModel({
    this.response,
    this.key,
  });

  Response? response;
  Key? key;

  factory NewTransactionModel.fromJson(Map<String, dynamic> json) => NewTransactionModel(
    response: Response.fromJson(json["response"]),
    key: Key.fromJson(json["key"]),
  );

  Map<String, dynamic> toJson() => {
    "response": response!.toJson(),
    "key": key!.toJson(),
  };
}

class Key {
  Key({
    this.partitionKey,
    this.rangeKey,
  });

  String? partitionKey;
  String? rangeKey;

  factory Key.fromJson(Map<String, dynamic> json) => Key(
    partitionKey: json["partitionKey"],
    rangeKey: json["rangeKey"],
  );

  Map<String, dynamic> toJson() => {
    "partitionKey": partitionKey,
    "rangeKey": rangeKey,
  };
}

class Response {
  Response({
    this.code,
    this.message,
    this.success,
    this.detail,
  });

  String? code;
  String? message;
  bool? success;
  String? detail;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
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
