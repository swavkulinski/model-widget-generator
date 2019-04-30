// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// ModelWidgetGenerator
// **************************************************************************

class UserWidget extends StatelessWidget {
  UserWidget(
    this.name,
    this.login,
    this.writesDartCode,
  );
  final String name;
  final String login;
  final bool writesDartCode;
  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Text("name $name"),
          Text("login $login"),
          Text("writesDartCode $writesDartCode"),
        ],
      );
}
