import 'dart:convert';
import 'package:dio/dio.dart';
import '../constant/api_path.dart';
import '../constant/data.dart';
import '../models/connect_token_model.dart';

Future<ConnectTokenModel?> connectToken() async {
  String url = TelbizAPIPath.CONNECT_TOKEN;
  String payload = jsonEncode({
    'clientID': TelbizData.clientID,
    'secret': TelbizData.secret,
    'grantType': TelbizData.grantType,
    'scope': TelbizData.scope
  });
  try {
    var response = await Dio().post(url,
        options: Options(headers: {
          'accept': 'text/plain',
          'Content-Type': 'application/json'
        }),
        data: payload);
    if (response.statusCode == 200) {
      ConnectTokenModel connectTokenModel =
          connectTokenModelFromJson(response.data);
      return connectTokenModel;
    } else {
      return null;
    }
  } catch (e) {
    return await connectTokenExceptionOne();
  }
}

Future<ConnectTokenModel?> connectTokenExceptionOne() async {
  String url = TelbizAPIPath.CONNECT_TOKEN;
  String payload = jsonEncode({
    'clientID': TelbizData.clientID,
    'secret': TelbizData.secret,
    'grantType': TelbizData.grantType,
    'scope': TelbizData.scope
  });
  try {
    var response = await Dio().post(url,
        options: Options(headers: {
          'accept': 'text/plain',
          'Content-Type': 'application/json'
        }),
        data: payload);
    if (response.statusCode == 200) {
      ConnectTokenModel connectTokenModel =
          connectTokenModelFromJson(response.data);
      return connectTokenModel;
    } else {
      return null;
    }
  } catch (e) {
    return await connectTokenExceptionTwo();
  }
}

Future<ConnectTokenModel?> connectTokenExceptionTwo() async {
  String url = TelbizAPIPath.CONNECT_TOKEN;
  String payload = jsonEncode({
    'clientID': TelbizData.clientID,
    'secret': TelbizData.secret,
    'grantType': TelbizData.grantType,
    'scope': TelbizData.scope
  });
  try {
    var response = await Dio().post(url,
        options: Options(headers: {
          'accept': 'text/plain',
          'Content-Type': 'application/json'
        }),
        data: payload);
    if (response.statusCode == 200) {
      ConnectTokenModel connectTokenModel =
          connectTokenModelFromJson(response.data);
      return connectTokenModel;
    } else {
      return null;
    }
  } catch (e) {
    return null;
  }
}
