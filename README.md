# telbiz_sdk

Telbiz SDK for [Flutter](https://flutter.io) package to provider telgo service in Laos, developed by Telbiz.

## Installation

add the following code to your `pubspec.yaml` :

```yaml
dependencies:
  telbiz_sdk: ^0.0.1
```

## Usage

import the package

```dart
import 'package:telbiz_sdk/telbiz_sdk.dart';
```

For SMS Service please enter title, phone and message. If there is error it will return null 

```dart
Future<String?> smsService() async{
  TelbizSMSTitle smsTitle = TelbizSMSTitle.Default; // Telbiz
  String phoneNumber = '2055554444'; // Phone number must be start with 20 or 30
  String message = 'Hello from Telbiz';
  return await TelbizSDK.smsService(smsTitle, phoneNumber, message);
}
```

For Top-Up Service please enter phone number and amount. If there is error it will return null 
Note: Topup function SendTopupAsync Amount be at least 5000

```dart
Future<String?> topUpService() async{
  String phoneNumber = '2055554444'; // Phone number must be start with 20 or 30
  String amount = '5000';
  return await TelbizSDK.topUpService(phoneNumber, amount);
}
```
