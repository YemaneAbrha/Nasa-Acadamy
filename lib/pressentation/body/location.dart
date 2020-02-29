import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGoogleplex = CameraPosition(
    target: LatLng(8.988518, 38.831057),
    zoom: 20.4746,
  );
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.hybrid,
      initialCameraPosition: _kGoogleplex,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    );
  }
}
