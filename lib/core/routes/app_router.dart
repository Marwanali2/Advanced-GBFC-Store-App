import 'package:advanced_gbfc_store_app/core/app/extensions.dart';
import 'package:advanced_gbfc_store_app/core/routes/base_routes.dart';
import 'package:advanced_gbfc_store_app/core/routes/routes.dart';
import 'package:advanced_gbfc_store_app/core/routes/under_build_screen.dart';
import 'package:advanced_gbfc_store_app/home_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.loginScreen:
        return BaseRoute(page: const LoginScreen());
      case Routes.homeScreen:
        return BaseRoute(page: const HomePage());
      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.pushNamed(Routes.homeScreen);
          },
          child: const Text('Go to Home Screen'),
        ),
      ),
    );
  }
}
