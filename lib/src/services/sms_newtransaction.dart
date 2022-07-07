import 'dart:convert';
import 'package:http/http.dart' as http;
import '../constant/api_path.dart';
import '../models/sms_service_new_transaction_model.dart';

Future<NewTransactionModel> smsNewTransaction(
    String accessToken, String title, String phone, String message) async {
  String url = TelbizAPIPath.SMS_SERVICE_NEW_TRANSACTION;
  String payload =
      jsonEncode({'title': title, 'phone': phone, 'message': message});
  try {
    var response = await http.post(Uri.parse(url),
        headers: {
          'accept': 'text/plain',
          'Authorization': 'Bearer $accessToken',
          'Content-Type': 'application/json'
        },
        body: payload);
    if (response.statusCode == 200) {
      NewTransactionModel newTransactionModel =
          newTransactionModelFromJson(response.body);
      return newTransactionModel;
    } else {
      throw Exception(response.body);
    }
  } catch (e) {
    return await smsNewTransactionExceptionOne(
        accessToken, title, phone, message);
  }
}

Future<NewTransactionModel> smsNewTransactionExceptionOne(
    String accessToken, String title, String phone, String message) async {
  String url = TelbizAPIPath.SMS_SERVICE_NEW_TRANSACTION;
  String payload =
      jsonEncode({'title': title, 'phone': phone, 'message': message});
  try {
    var response = await http.post(Uri.parse(url),
        headers: {
          'accept': 'text/plain',
          'Authorization': 'Bearer $accessToken',
          'Content-Type': 'application/json'
        },
        body: payload);
    if (response.statusCode == 200) {
      NewTransactionModel newTransactionModel =
          newTransactionModelFromJson(response.body);
      return newTransactionModel;
    } else {
      throw Exception(response.body);
    }
  } catch (e) {
    return await smsNewTransactionExceptionTwo(
        accessToken, title, phone, message);
  }
}

Future<NewTransactionModel> smsNewTransactionExceptionTwo(
    String accessToken, String title, String phone, String message) async {
  String url = TelbizAPIPath.SMS_SERVICE_NEW_TRANSACTION;
  String payload =
      jsonEncode({'title': title, 'phone': phone, 'message': message});
  try {
    var response = await http.post(Uri.parse(url),
        headers: {
          'accept': 'text/plain',
          'Authorization': 'Bearer $accessToken',
          'Content-Type': 'application/json'
        },
        body: payload);
    if (response.statusCode == 200) {
      NewTransactionModel newTransactionModel =
          newTransactionModelFromJson(response.body);
      return newTransactionModel;
    } else {
      throw Exception(response.body);
    }
  } catch (e) {
    rethrow;
  }
}
