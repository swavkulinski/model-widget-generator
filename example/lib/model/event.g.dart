// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// ModelWidgetGenerator
// **************************************************************************

class EventWidget extends StatelessWidget {
  EventWidget(
    this.name,
    this.starts,
    this.ends,
    this.longitude,
    this.latitude,
    this.placeName,
  );
  final String name;
  final DateTime starts;
  final DateTime ends;
  final double longitude;
  final double latitude;
  final String placeName;
  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
        Text("name $name"),
        Text("starts $name"),
        Text("ends $name"),
        Text("longitude $name"),
        Text("latitude $name"),
        Text("placeName $name"),
      ]);
}
