import 'package:model_widget/model_widget.dart';
import 'package:flutter/material.dart';

part 'user.g.dart';

@widget
class User {
  final String name;
  final String login;
  final bool writesDartCode;

  User(this.name, this.login, this.writesDartCode);


}