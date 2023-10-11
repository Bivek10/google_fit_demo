import 'package:appsflyer_sdk/appsflyer_sdk.dart';

class AppFlyerServices {
  AppsFlyerOptions appsFlyerOptions = AppsFlyerOptions(
    afDevKey: "528yGcPw2ta6NFdWkkZLVH",
    showDebug: true,
    timeToWaitForATTUserAuthorization: 50, // for iOS 14.5
    disableAdvertisingIdentifier: false, // Optional field
    disableCollectASA: false,
  );
}
