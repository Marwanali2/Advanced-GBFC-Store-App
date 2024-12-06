import 'dart:developer';

import 'package:advanced_gbfc_store_app/adv_gbfc_store.dart';
import 'package:advanced_gbfc_store_app/core/app/env_variables.dart';
import 'package:advanced_gbfc_store_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariables.instance.init(EnvironmentType.dev);
  log('Environment type: ${EnvVariables.instance.envType}');
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(const AdvancedGBFCStore());
}
