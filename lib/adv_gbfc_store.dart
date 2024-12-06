import 'package:advanced_gbfc_store_app/core/app/env_variables.dart';
import 'package:advanced_gbfc_store_app/home_page.dart';
import 'package:flutter/material.dart';

class AdvancedGBFCStore extends StatelessWidget {
  const AdvancedGBFCStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced GBFC Store App',
      debugShowCheckedModeBanner: EnvVariables.instance.isProd,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
