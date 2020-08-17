import 'package:geolocator/geolocator.dart';

class GeoLocatorServices {
  Geolocator _geolocator = Geolocator();
  //Position position;

  Future<Position> getCurrentPosition() async {
    return await _geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }
}
