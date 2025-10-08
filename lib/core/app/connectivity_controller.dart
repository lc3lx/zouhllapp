import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';

class ConnectivityController {
  ConnectivityController._();
  static final ConnectivityController instance = ConnectivityController._();

  ValueNotifier<bool> isConnected = ValueNotifier(true);

  Future<void> init() async {
    final results = await Connectivity().checkConnectivity();
    updateConnectionStatus(results);
    Connectivity().onConnectivityChanged.listen(updateConnectionStatus);
  }

  void updateConnectionStatus(List<ConnectivityResult> results) {
    bool connected = isInternetConnected(results);
    isConnected.value = connected;
  }

  bool isInternetConnected(List<ConnectivityResult> results) {
    for (final result in results) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi ||
          result == ConnectivityResult.ethernet) {
        return true;
      }
    }
    return false;
  }
}
