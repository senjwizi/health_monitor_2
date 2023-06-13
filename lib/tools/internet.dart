import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';

class InternetTool {
  static Future<bool> isInternetAvailable() async {
    var connectivity = await (Connectivity().checkConnectivity());
    if (connectivity == ConnectivityResult.mobile) {
      return true;
    } else if (connectivity == ConnectivityResult.wifi) {
      return true;
    }
    else {
      return false;
    }
  }
}