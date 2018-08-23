import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocation/geolocation.dart';

class AppLocalisation extends StatefulWidget {
  @override
  AppLocalisationState createState() => AppLocalisationState();

}

class AppLocalisationState extends State<AppLocalisation> {
  LocationResult locations;
  StreamSubscription<LocationResult> streamSubscription;
  bool trackLocation = false;

  @override
  initState() {
    super.initState();
    checkGps();

    trackLocation = false;
    locations = null;
  }

  getLocations() {
    if (trackLocation) {
      setState(() => trackLocation = false);
      streamSubscription.cancel();
      streamSubscription = null;
      locations = null;
    } else {
      setState(() => trackLocation = true);

      streamSubscription = Geolocation
          .locationUpdates(
        accuracy: LocationAccuracy.best,
        displacementFilter: 0.0,
        inBackground: false,
      )
          .listen((result) {
        final location = result;
        setState(() {
          locations = location;
        });
      });

      streamSubscription.onDone(() => setState(() {
            trackLocation = false;
          }));
    }
    print("latitude: "+locations.location.latitude.toString());
    print("longitude: "+locations.location.longitude.toString());
    
  }

  checkGps() async {
    final GeolocationResult result = await Geolocation.isLocationOperational();
    if (result.isSuccessful) {
      print("Success");
    } else {
      print("Failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
            child: Text("Get Location"),
            onPressed: getLocations,
          );
  }
}

  