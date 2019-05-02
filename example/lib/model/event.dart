import 'package:boring_widget/boring_widget.dart';
import 'package:flutter/material.dart';

part 'event.g.dart'; 

@widget
class Event {
  final String name;
  final DateTime starts;
  final DateTime ends;
  final double longitude;
  final double latitude;
  final String placeName;

  Event(this.name, this.starts, this.ends, this.longitude, this.latitude, this.placeName);

}