import 'dart:convert';
import 'package:http/http.dart' as http;
import '../constant/api_path.dart';
import '../models/sms_service_new_transaction_model.dart';

Future<NewTransactionModel> topUpNewTransaction(
    String accessToken, String phone, String amount) async {
  String url = TelbizAPIPath.TOP_UP_SERVICE_NEW_TRANSACTION;
  String payload = jsonEncode({'phone': phone, 'amount': amount});
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
    return await topUpNewTransactionExceptionOne(accessToken, phone, amount);
  }
}

Future<NewTransactionModel> topUpNewTransactionExceptionOne(
    String accessToken, String phone, String amount) async {
  String url = TelbizAPIPath.TOP_UP_SERVICE_NEW_TRANSACTION;
  String payload = jsonEncode({'phone': phone, 'amount': amount});
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
    return await topUpNewTransactionExceptionTwo(accessToken, phone, amount);
  }
}

Future<NewTransactionModel> topUpNewTransactionExceptionTwo(
    String accessToken, String phone, String amount) async {
  String url = TelbizAPIPath.TOP_UP_SERVICE_NEW_TRANSACTION;
  String payload = jsonEncode({'phone': phone, 'amount': amount});
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
