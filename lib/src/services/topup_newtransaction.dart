import 'dart:convert';
import 'package:dio/dio.dart';
import '../constant/api_path.dart';
import '../models/sms_service_new_transaction_model.dart';

Future<NewTransactionModel?> topUpNewTransaction(
    String accessToken, String phone, String amount) async {
  String url = TelbizAPIPath.TOP_UP_SERVICE_NEW_TRANSACTION;
  String payload = jsonEncode({'phone': phone, 'amount': amount});
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
    return await topUpNewTransactionExceptionOne(accessToken, phone, amount);
  }
}

Future<NewTransactionModel?> topUpNewTransactionExceptionOne(
    String accessToken, String phone, String amount) async {
  String url = TelbizAPIPath.TOP_UP_SERVICE_NEW_TRANSACTION;
  String payload = jsonEncode({'phone': phone, 'amount': amount});
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
    return await topUpNewTransactionExceptionTwo(accessToken, phone, amount);
  }
}

Future<NewTransactionModel?> topUpNewTransactionExceptionTwo(
    String accessToken, String phone, String amount) async {
  String url = TelbizAPIPath.TOP_UP_SERVICE_NEW_TRANSACTION;
  String payload = jsonEncode({'phone': phone, 'amount': amount});
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
