import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapHelper with ChangeNotifier {
  Position? position;
  MapType mapType = MapType.normal;
  Future<Position?> getLocation() async {
    Position? currentLocation;
    try {
      currentLocation = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
     debugPrint(currentLocation.toString());
      position = currentLocation;
      notifyListeners();
    } catch (e) {
      currentLocation = null;
    }
    return currentLocation;
  }

  changeMapType(MapType m) {
    mapType = m;
    notifyListeners();
  }
}
