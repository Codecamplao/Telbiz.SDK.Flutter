import 'package:telbiz/src/services/connect_token.dart';
import 'package:telbiz/src/services/sms_newtransaction.dart';
import 'package:telbiz/src/services/topup_newtransaction.dart';
import 'package:telbiz/src/utils/set_telbiz_sms_title.dart';
import 'models/connect_token_model.dart';
import 'models/sms_service_new_transaction_model.dart';

class TelbizSDK {
  /// ສຳລັບບໍລິການ SMS
  static Future<String?> smsService(TelbizSMSTitle smsTitle, String phone, String message) async {
    ConnectTokenModel? connectTokenModel = await connectToken();
    if (connectTokenModel != null) {
      String title = setTelbizSMSTitle(smsTitle);
      NewTransactionModel? newTransactionModel = await smsNewTransaction(
          connectTokenModel.accessToken!, title, phone, message);
      if (newTransactionModel != null) {
        return newTransactionModelToJson(newTransactionModel);
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  /// ສຳລັບບໍລິການ Top-up
  static Future<String?> topUpService(String phone, String amount) async {
    ConnectTokenModel? connectTokenModel = await connectToken();
    if (connectTokenModel != null) {
      NewTransactionModel? newTransactionModel = await topUpNewTransaction(
          connectTokenModel.accessToken!, phone, amount);
      if (newTransactionModel != null) {
        return newTransactionModelToJson(newTransactionModel);
      } else {
        return null;
      }
    } else {
      return null;
    }
  }
}

/// SMS Title
enum TelbizSMSTitle{
  Default,
  Info,
  News,
  OTP,
  Promotion
}
