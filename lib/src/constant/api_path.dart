class TelbizAPIPath{
  static const String BASE_URL = 'https://api.telbiz.la/api/v1/';
  static const String CONNECT_TOKEN = BASE_URL + 'connect/token';

  /// Sms service
  static const String SMS_SERVICE_NEW_TRANSACTION = BASE_URL + 'smsservice/newtransaction';

  /// Top-up service
  static const String TOP_UP_SERVICE_NEW_TRANSACTION = BASE_URL + 'topupservice/newtransaction';
}