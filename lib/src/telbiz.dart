import 'package:telbiz/src/services/connect_token.dart';
import 'package:telbiz/src/services/sms_newtransaction.dart';
import 'package:telbiz/src/services/topup_newtransaction.dart';
import 'package:telbiz/src/utils/set_telbiz_sms_title.dart';
import 'models/connect_token_model.dart';
import 'models/sms_service_new_transaction_model.dart';

class Telbiz {
  /// ສຳລັບບໍລິການ SMS
  static Future<String> smsService(String clientID, String secret,
      TelbizSMSTitle smsTitle, String phone, String message,
      {String? accessToken}) async {
    /// ສຳລັບນັກພັດທະນາເທລບິສ
    if (clientID.isEmpty && secret.isEmpty) {
      String title = setTelbizSMSTitle(smsTitle);
      try {
        NewTransactionModel newTransactionModel = await smsNewTransaction(
            accessToken.toString(), title, phone, message);
        return newTransactionModelToJson(newTransactionModel);
      } catch (e) {
        rethrow;
      }
    }

    /// ສຳລັບນັກພັດທະນາ Flutter
    else {
      try {
        ConnectTokenModel connectTokenModel =
            await connectToken(clientID, secret);
        String title = setTelbizSMSTitle(smsTitle);
        try {
          NewTransactionModel newTransactionModel = await smsNewTransaction(
              connectTokenModel.accessToken!, title, phone, message);
          return newTransactionModelToJson(newTransactionModel);
        } catch (e) {
          rethrow;
        }
      } catch (e) {
        rethrow;
      }
    }
  }

  /// ສຳລັບບໍລິການ Top-up
  static Future<String?> topUpService(
      String clientID, String secret, String phone, String amount,
      {String? accessToken}) async {
    /// ສຳລັບນັກພັດທະນາເທລບິສ
    if (clientID.isEmpty && secret.isEmpty) {
      try {
        NewTransactionModel newTransactionModel =
            await topUpNewTransaction(accessToken.toString(), phone, amount);
        return newTransactionModelToJson(newTransactionModel);
      } catch (e) {
        rethrow;
      }
    }

    /// ສຳລັບນັກພັດທະນາ Flutter
    else {
      try {
        ConnectTokenModel? connectTokenModel =
            await connectToken(clientID, secret);
        try {
          NewTransactionModel newTransactionModel = await topUpNewTransaction(
              connectTokenModel.accessToken!, phone, amount);
          return newTransactionModelToJson(newTransactionModel);
        } catch (e) {
          rethrow;
        }
      } catch (e) {
        rethrow;
      }
    }
  }
}

/// SMS Title
enum TelbizSMSTitle { Default, Info, News, OTP, Promotion }
