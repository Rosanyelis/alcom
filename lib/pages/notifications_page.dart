import 'package:alcom/widgets/buttom_menu.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  static const routeName = 'notificaciones';
  NotificationsPage({Key key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificaciones'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        children: [
          ListTile(
            // leading: Icon(Icons.group),
            title: Text('notificacion de Grupo A '),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
            // trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            // leading: Icon(Icons.group),
            title: Text('notificacion de Grupo A '),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
            // trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            // leading: Icon(Icons.group),
            title: Text('notificacion de Grupo A '),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
            // trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            // leading: Icon(Icons.group),
            title: Text('notificacion de Grupo A '),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
            // trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            // leading: Icon(Icons.group),
            title: Text('notificacion de Grupo A '),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
            // trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ],
      ),
      bottomNavigationBar: ButtomNavigation(),
    );
  }
}
