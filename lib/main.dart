import 'package:alcom/pages/groups_page.dart';
import 'package:alcom/pages/home_page.dart';
import 'package:alcom/pages/login_page.dart';
import 'package:alcom/pages/notifications_page.dart';
import 'package:alcom/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Bloquea el cambio de orientacion de la app al ser rotado
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginPage(),
        routes: {
          RegisterPage.routeName: (_) => RegisterPage(),
          LoginPage.routeName: (_) => LoginPage(),
          HomePage.routeName: (_) => HomePage(),
          GroupsPage.routeName: (_) => GroupsPage(),
          NotificationsPage.routeName: (_) => NotificationsPage(),
        });
  }
}
