import 'package:connectivity_plus/connectivity_plus.dart';

class InternetConnectivityController {
  InternetConnectivityController._();

  static final InternetConnectivityController instance =
      InternetConnectivityController._();

  final Connectivity _connectivity = Connectivity();

  Stream<ConnectivityResult> get onConnectivityChanged =>
      _connectivity.onConnectivityChanged;

  Future<ConnectivityResult> checkConnectivity() =>
      _connectivity.checkConnectivity();

  Future<bool> get isConnected async {
    final result = await checkConnectivity();
    return result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi;
  }
}
