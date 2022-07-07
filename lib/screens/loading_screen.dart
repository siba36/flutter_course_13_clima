import 'package:flutter/material.dart';
import 'package:flutter_course_13_clima/services/location.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    Location location = Location();
    Position p = await location.getCurrentLocation();
    print(p.longitude);
    print(p.latitude);
    location.latitude = p.latitude;
    location.longitude = p.longitude;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
