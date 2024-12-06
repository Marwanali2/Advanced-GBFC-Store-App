import 'dart:developer';

import 'package:advanced_gbfc_store_app/adv_gbfc_store.dart';
import 'package:advanced_gbfc_store_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await dotenv.load(fileName: '.env'); // Load environment variables
  log(dotenv.env['API_BASE_URL'].toString()); // Print the environment variable
  } catch (e) {
    throw Exception('Error loading .env file: $e'); // Print error if any
  }
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const AdvancedGBFCStore());
}
