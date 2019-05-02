// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// BoringWidgetGenerator
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
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: <Widget>[
            Text("name $name"),
            Text("starts $starts"),
            Text("ends $ends"),
            Text("longitude $longitude"),
            Text("latitude $latitude"),
            Text("placeName $placeName"),
          ],
        ),
      );
}
