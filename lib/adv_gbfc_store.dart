import 'package:advanced_gbfc_store_app/core/app/env_variables.dart';
import 'package:advanced_gbfc_store_app/core/routes/app_router.dart';
import 'package:advanced_gbfc_store_app/core/routes/routes.dart';
import 'package:advanced_gbfc_store_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdvancedGBFCStore extends StatelessWidget {
  const AdvancedGBFCStore({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        ScreenUtil.init(context);

        return MaterialApp(
          title: 'Advanced GBFC Store App',
          debugShowCheckedModeBanner: EnvVariables.instance.isProd,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: Routes.loginScreen,
          onGenerateRoute: AppRouter.onGenerateRoute,
        );
      },
    );
  }
}
