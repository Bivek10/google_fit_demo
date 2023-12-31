import 'package:appsflyer_sdk/appsflyer_sdk.dart';

class AppFlyerServices {
  AppsFlyerOptions appsFlyerOptions = AppsFlyerOptions(
    afDevKey: "528yGcPw2ta6NFdWkkZLVH",
    showDebug: true,
    timeToWaitForATTUserAuthorization: 50, // for iOS 14.5
    disableAdvertisingIdentifier: false, // Optional field
    disableCollectASA: false,
  );
  AppsflyerSdk? appsflyerSdk;

  AppsflyerSdk initAppFlyer() {
    appsflyerSdk = AppsflyerSdk(appsFlyerOptions);
    appsflyerSdk!.initSdk(
        registerConversionDataCallback: true,
        registerOnAppOpenAttributionCallback: true,
        registerOnDeepLinkingCallback: true);

    return appsflyerSdk!;
  }

  Future<bool?> logEvent(String eventName, Map? eventValues) async {
    bool? result;
    try {
      result = await appsflyerSdk!.logEvent(eventName, eventValues);
    } on Exception catch (e) {}
    print("Result logEvent: $result");
  }
}
