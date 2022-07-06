import 'dart:convert';
import 'package:dio/dio.dart';
import '../constant/api_path.dart';
import '../models/sms_service_new_transaction_model.dart';

Future<NewTransactionModel?> smsNewTransaction(
    String accessToken, String title, String phone, String message) async {
  String url = TelbizAPIPath.SMS_SERVICE_NEW_TRANSACTION;
  String payload =
      jsonEncode({'title': title, 'phone': phone, 'message': message});
  try {
    var response = await Dio().post(url,
        options: Options(
          headers: {
            'accept': 'text/plain',
            'Authorization': 'Bearer $accessToken',
            'Content-Type': 'application/json'
          },
        ),
        data: payload);
    if (response.statusCode == 200) {
      NewTransactionModel newTransactionModel =
          newTransactionModelFromJson(response.data);
      return newTransactionModel;
    } else {
      return null;
    }
  } catch (e) {
    return await smsNewTransactionExceptionOne(
        accessToken, title, phone, message);
  }
}

Future<NewTransactionModel?> smsNewTransactionExceptionOne(
    String accessToken, String title, String phone, String message) async {
  String url = TelbizAPIPath.SMS_SERVICE_NEW_TRANSACTION;
  String payload =
      jsonEncode({'title': title, 'phone': phone, 'message': message});
  try {
    var response = await Dio().post(url,
        options: Options(
          headers: {
            'accept': 'text/plain',
            'Authorization': 'Bearer $accessToken',
            'Content-Type': 'application/json'
          },
        ),
        data: payload);
    if (response.statusCode == 200) {
      NewTransactionModel newTransactionModel =
          newTransactionModelFromJson(response.data);
      return newTransactionModel;
    } else {
      return null;
    }
  } catch (e) {
    return await smsNewTransactionExceptionTwo(
        accessToken, title, phone, message);
  }
}

Future<NewTransactionModel?> smsNewTransactionExceptionTwo(
    String accessToken, String title, String phone, String message) async {
  String url = TelbizAPIPath.SMS_SERVICE_NEW_TRANSACTION;
  String payload =
      jsonEncode({'title': title, 'phone': phone, 'message': message});
  try {
    var response = await Dio().post(url,
        options: Options(
          headers: {
            'accept': 'text/plain',
            'Authorization': 'Bearer $accessToken',
            'Content-Type': 'application/json'
          },
        ),
        data: payload);
    if (response.statusCode == 200) {
      NewTransactionModel newTransactionModel =
          newTransactionModelFromJson(response.data);
      return newTransactionModel;
    } else {
      return null;
    }
  } catch (e) {
    return null;
  }
}
