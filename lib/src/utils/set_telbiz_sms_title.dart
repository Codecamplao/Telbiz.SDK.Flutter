

import '../telbiz_sdk.dart';

String setTelbizSMSTitle(TelbizSMSTitle smsTitle){
  if(smsTitle == TelbizSMSTitle.Default){
    return 'Telbiz';
  }
  else if(smsTitle == TelbizSMSTitle.Info){
    return 'Info';
  }
  else if(smsTitle == TelbizSMSTitle.News){
    return 'News';
  }
  else if(smsTitle == TelbizSMSTitle.OTP){
    return 'OTP';
  }
  else if(smsTitle == TelbizSMSTitle.Promotion){
    return 'Promotion';
  }
  else {
    return 'Telbiz';
  }
}