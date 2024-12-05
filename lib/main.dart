import 'package:advanced_gbfc_store_app/adv_gbfc_store.dart';
import 'package:advanced_gbfc_store_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const AdvancedGBFCStore());
}
