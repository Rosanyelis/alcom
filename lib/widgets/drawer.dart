/*import 'dart:ffi';
import 'package:alcom/utils/auth.dart';
import 'package:flutter/material.dart';
import 'package:alcom/pages/notifications_page.dart';
import 'package:alcom/pages/groups_page.dart';

class Drawer extends StatefulWidget {
  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<Drawer> with SingleTickerProviderStateMixin {
  Drawer _getDrawer(BuildContext context) {
    var header = new DrawerHeader(child: new Text("MENU"));
    var info = new AboutListTile(
      child: new Text("FOOTER"),
      applicationIcon: new Icon(Icons.favorite),
      applicationVersion: "1.0",
      applicationName: "alcom demo",
      icon: new Icon(Icons.info),
    );
    ListTile _getItem(Icon icon, String description, String rute) {
      return new ListTile(
        leading: icon,
        title: new Text(description),
        onTap: () {
          setState(() {
            Navigator.of(context).pushNamed(rute);
          });
        },
      );
    }

    ListView listView = new ListView(children: <Widget>[
      header,
      _getItem(new Icon(Icons.home), "Home", "/home_page"),
      _getItem(new Icon(Icons.settings), "Configuracion", ""),
      _getItem(new Icon(Icons.battery_full_rounded), "Bateria", ""),
      ElevatedButton(
        child: Text(
          "CERRAR SESION",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: () => Auth.instance.logOut(context),
      ),
      info
    ]);
    return new Drawer(
      child: listView,
    );
  }

  TabController controller;
  @override
  Void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _getDrawer(context),
      body: Center(child: new Text("alcom")),
      bottomNavigationBar: new Material(
        color: Colors.indigo,
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
              icon: new Icon(Icons.home),
            ),
            new Tab(
              icon: new Icon(Icons.add_alert),
            ),
            new Tab(
              icon: new Icon(Icons.people),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}
