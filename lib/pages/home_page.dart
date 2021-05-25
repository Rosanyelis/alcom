import 'package:alcom/utils/auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'home';
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text(
            "CERRAR SESION",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () => Auth.instance.logOut(context),
        ),
      ),
    );
  }
}
