// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BoringWidgetGenerator
// **************************************************************************

class UserWidget extends StatelessWidget {
  UserWidget(this.name, this.login, this.writesDartCode);

  final String name;

  final String login;

  final bool writesDartCode;

  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Text('name : $name'),
            Text('login : $login'),
            Text('writesDartCode : $writesDartCode'),
          ],
        ),
      );
}
