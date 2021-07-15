import 'package:alcom/widgets/buttom_menu.dart';
import 'package:flutter/material.dart';

class GroupsPage extends StatefulWidget {
  static const routeName = 'grupos';
  GroupsPage({Key key}) : super(key: key);

  @override
  _GroupsPageState createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grupos'),
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
            leading: Icon(Icons.group),
            title: Text('Grupo A'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('Grupo B'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('Grupo C'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('Grupo D'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('Grupo E'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ],
      ),
      bottomNavigationBar: ButtomNavigation(),
    );
  }
}
