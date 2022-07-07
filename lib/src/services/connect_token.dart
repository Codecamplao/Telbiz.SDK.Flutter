import 'dart:convert';
import 'package:http/http.dart' as http;
import '../constant/api_path.dart';
import '../constant/data.dart';
import '../models/connect_token_model.dart';

Future<ConnectTokenModel> connectToken(String clientID, String secret) async {
  String url = TelbizAPIPath.CONNECT_TOKEN;
  String payload = jsonEncode({
    'clientID': clientID,
    'secret': secret,
    'grantType': TelbizData.grantType,
    'scope': TelbizData.scope
  });
  try {
    var response = await http.post(Uri.parse(url),
        headers: {'accept': 'text/plain', 'Content-Type': 'application/json'},
        body: payload);
    if (response.statusCode == 200) {
      ConnectTokenModel connectTokenModel =
          connectTokenModelFromJson(response.body);
      return connectTokenModel;
    } else {
      throw Exception(response.body);
    }
  } catch (e) {
    return await connectTokenExceptionOne(clientID, secret);
  }
}

Future<ConnectTokenModel> connectTokenExceptionOne(
    String clientID, String secret) async {
  String url = TelbizAPIPath.CONNECT_TOKEN;
  String payload = jsonEncode({
    'clientID': clientID,
    'secret': secret,
    'grantType': TelbizData.grantType,
    'scope': TelbizData.scope
  });
  try {
    var response = await http.post(Uri.parse(url),
        headers: {'accept': 'text/plain', 'Content-Type': 'application/json'},
        body: payload);
    if (response.statusCode == 200) {
      ConnectTokenModel connectTokenModel =
          connectTokenModelFromJson(response.body);
      return connectTokenModel;
    } else {
      throw Exception(response.body);
    }
  } catch (e) {
    return await connectTokenExceptionTwo(clientID, secret);
  }
}

Future<ConnectTokenModel> connectTokenExceptionTwo(
    String clientID, String secret) async {
  String url = TelbizAPIPath.CONNECT_TOKEN;
  String payload = jsonEncode({
    'clientID': clientID,
    'secret': secret,
    'grantType': TelbizData.grantType,
    'scope': TelbizData.scope
  });
  try {
    var response = await http.post(Uri.parse(url),
        headers: {'accept': 'text/plain', 'Content-Type': 'application/json'},
        body: payload);
    if (response.statusCode == 200) {
      ConnectTokenModel connectTokenModel =
          connectTokenModelFromJson(response.body);
      return connectTokenModel;
    } else {
      throw Exception(response.body);
    }
  } catch (e) {
    rethrow;
  }
}
