import 'dart:ffi';
import 'package:alcom/utils/auth.dart';
import 'package:flutter/material.dart';
import 'package:alcom/pages/notifications_page.dart';
import 'package:alcom/pages/groups_page.dart';
import 'package:alcom/pages/buttons_page.dart';
import 'package:alcom/pages/posts_page.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'home';
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //================================DRAWER========================================
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
      _getItem(new Icon(Icons.add), "Crear Grupo", ""),
      _getItem(new Icon(Icons.favorite), "Favoritos", ""),
      _getItem(new Icon(Icons.settings), "Configuracion", ""),
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

//=================================================================================
  TabController controller;
  @override
  Void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Alcom"),
        backgroundColor: Colors.indigo,
      ),
      drawer: _getDrawer(context),
      body: new TabBarView(
        children: <Widget>[
          new Buttons(),
          new Posts(),
          new Groups(),
          new Notifications()
        ],
        controller: controller,
      ),
      bottomNavigationBar: new Material(
        color: Colors.indigo,
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
              icon: new Icon(Icons.home),
            ),
            new Tab(
              icon: new Icon(Icons.work),
            ),
            new Tab(
              icon: new Icon(Icons.people),
            ),
            new Tab(
              icon: new Icon(Icons.add_alert),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}
