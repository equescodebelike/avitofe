///TODO
// import 'dart:async';

// import 'package:core_interfaces/core_interfaces.dart';
// import 'package:core_models/core_models.dart';
// import 'package:onesignal_flutter/onesignal_flutter.dart';

// class OneSignalListener {
//   static late IProfile<UserData> profile;

//   static late StreamSubscription profileSubscription;

//   static Future<void> init(IProfile<UserData> profile) async {
//     OneSignalListener.profile = profile;

//     await OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
//     await OneSignal.shared.setAppId('');
//     await OneSignal.shared
//         .promptUserForPushNotificationPermission()
//         .then((accepted) {
//       logger.wtf('Accepted permission: $accepted');
//     });

//     profileSubscription = profile.userData.listen((value) {
//       if (value == null) {
//         OneSignal.shared.logoutEmail();
//         OneSignal.shared.logoutSMSNumber();
//         OneSignal.shared.removeExternalUserId();
//         logger.d('OneSignal logouted');
//       } else {
//         if (value.email != null) {
//           OneSignal.shared.setEmail(email: value.email!);
//           logger.d('OneSignal email: ${value.email}');
//         }
//         if (value.phone != null) {
//           OneSignal.shared.setSMSNumber(smsNumber: value.phone!);
//           logger.d('OneSignal phone: ${value.phone}');
//         }
//         OneSignal.shared.setExternalUserId(value.externalId.toString());
//         logger.d('OneSignal externalUserId: ${value.userId}');
//       }
//     });
//   }

//   static Future<void> dispose() async {
//     await profileSubscription.cancel();
//   }
// }
