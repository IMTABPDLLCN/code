import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import './text_affichage.dart';

class LocationStreamWidget extends StatefulWidget {
  @override
  State<LocationStreamWidget> createState() => LocationStreamState();
}

class LocationStreamState extends State<LocationStreamWidget> {

  StreamSubscription<Position> _positionStreamSubscription;
  Position _position;

 void _toggleListening() {
    if (_positionStreamSubscription == null) {
      final LocationOptions locationOptions = const LocationOptions(
          accuracy: LocationAccuracy.best, distanceFilter: 10);
      final Stream<Position> positionStream =
          Geolocator().getPositionStream(locationOptions);
      _positionStreamSubscription = positionStream
          .listen((position) => setState(() => _position=position));
      _positionStreamSubscription.pause();
    }

    setState(() {
      if (_positionStreamSubscription.isPaused) {
        _positionStreamSubscription.resume();
      } else {
        _positionStreamSubscription.pause();
      }
    });
  }

  @override
  void dispose() {
    if (_positionStreamSubscription != null) {
      _positionStreamSubscription.cancel();
      _positionStreamSubscription = null;
    }
    super.dispose();
  }

  
  

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Geolocator().checkGeolocationPermissionStatus(),
        builder:
            (BuildContext context, AsyncSnapshot<GeolocationStatus> snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.data == GeolocationStatus.denied) {
            return TextAffichage(Colors.black,"Location services disabled, Enable location services for this App using the device settings.",15.0);
          }

          return _buildPosView();
        });
  }

  Widget _buildPosView() {
    Widget bouton;

    bouton=new RaisedButton(
      child: Text("Press to get position"),
      color: Colors.black,
      onPressed: _toggleListening,
    );

    return bouton;
  }

  
  

}