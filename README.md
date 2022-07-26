# Telbiz

Telbiz SDK for [Flutter](https://flutter.io) package to provide telgo service in Laos (SMS and Topup), developed by Telbiz.

## Installation

add the following code to your `pubspec.yaml` :

```yaml
dependencies:
  telbiz: ^0.0.5
```

## Usage

import the package

```dart
import 'package:telbiz/telbiz.dart';
```

For SMS Service please enter clientID, secret, title, phone and message (accessToken parameter for Telbiz developer only)

```dart
Future<String> smsService() async{
  String clientID = 'XXXXX253832870000';
  String secret = 'b266ef94-bb18-4ff2-8f38-e358f130XXXX';
  TelbizSMSTitle smsTitle = TelbizSMSTitle.Default; // Telbiz
  String phoneNumber = '2055554444'; // Phone number must be start with 20 or 30
  String message = 'Hello from Telbiz';
  try{
    return await Telbiz.smsService(clientID, secret, smsTitle, phoneNumber, message);
  }
  catch(e){
    rethrow;
  }
}
```

For Top-Up Service please enter clientID, secret, phone number and amount (accessToken parameter for Telbiz developer only)
##Note: Topup function SendTopupAsync Amount be at least 5000

```dart
Future<String> topUpService() async{
  String clientID = 'XXXXX253832870000';
  String secret = 'b266ef94-bb18-4ff2-8f38-e358f130XXXX';
  String phoneNumber = '2055554444'; // Phone number must be start with 20 or 30
  String amount = '5000';
  try{
    return await Telbiz.topUpService(clientID, secret, phoneNumber, amount);
  }
  catch(e){
    rethrow;    
  }
  
}
```
