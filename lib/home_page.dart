import 'package:advanced_gbfc_store_app/core/app/internet_connectivity_controller.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final InternetConnectivityController _connectivityController;
  @override
  void initState() {
    super.initState();
    _connectivityController = InternetConnectivityController.instance;
    _connectivityController.onConnectivityChanged.listen(
      (status) {
        if (status == ConnectivityResult.none) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('No internet connection'),
              backgroundColor: Colors.red,
              duration: Duration(hours: 1),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Internet Connection Restored!'),
              backgroundColor: Colors.green,
              duration: Duration(seconds: 3),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Advanced GBFC Store App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Text Sccaling',
              style: TextStyle(
                fontSize: MediaQuery.textScalerOf(context).scale(
                  10,
                ),
                //   fontSize: 10.sp,
              ),
              // textScaleFactor: 2,
              textScaler: TextScaler.noScaling,
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('xxxxxx'),
      ),
    );
  }
}
