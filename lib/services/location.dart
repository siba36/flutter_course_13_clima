import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longitude;

  Future getCurrentLocation() async {
    Position? position;
    try {
      position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
    } catch (e) {
      print(e);
    }
    return position;
  }
}
