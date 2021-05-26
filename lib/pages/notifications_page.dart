import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  static const String routeName = "/notifications_page";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
            child: new Center(
      child: new Text("Notificationes"),
    )));
  }
}
