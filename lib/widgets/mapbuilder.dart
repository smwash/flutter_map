import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_map/services/geolocator.dart';
import 'package:geolocator/geolocator.dart';

class GmapBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final geoservice = GeoLocatorServices();
    return FutureBuilder<Position>(
      future: geoservice.getCurrentPosition(),
      builder: (context, snapshot) {
        if (!snapshot.hasData)
          return Center(child: CircularProgressIndicator());
        print('lat: ${snapshot.data.latitude}');
        print('lat: ${snapshot.data.longitude}');
        return GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(
              snapshot.data.latitude,
              snapshot.data.longitude,
            ),
          ),
          myLocationButtonEnabled: true,
          myLocationEnabled: true,
          mapType: MapType.normal,
        );
      },
    );
  }
}
