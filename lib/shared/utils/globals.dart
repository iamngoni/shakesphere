//
//  shakesphere
//  globals
//
//  Created by Ngonidzashe Mangudya on 30/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import '../../injection.dart';
import '../services/notifications.dart';
import '../services/secure_storage.dart';
import '../services/storage.dart';
import '../services/vibration.dart';

SecureStorageService get $secureStorage => getIt<SecureStorageService>();
StorageService get $storage => getIt<StorageService>();
PushNotifications get $notifications => getIt<PushNotifications>();
VibrationService get $vibrator => getIt<VibrationService>();
