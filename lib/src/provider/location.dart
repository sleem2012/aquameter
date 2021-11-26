import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class LocationProvider extends ChangeNotifier {
  double? lat;
  double? long;
  String? address;
  void assignLocation(
      {double? latitude, double? longtuide, String? addressDetails}) {
    address = addressDetails;
    notifyListeners();
  }
}
