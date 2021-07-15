import 'package:alcom/utils/auth.dart';
import 'package:alcom/widgets/buttom_menu.dart';
// import 'package:alcom/utils/colors.dart';
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
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('Cerrar Sesion'),
                value: Auth.instance.logOut(context),
              ),
            ],
          ),
        ],
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(30),
        crossAxisSpacing: 30,
        mainAxisSpacing: 30,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Médica"),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Incendio'),
            decoration: BoxDecoration(
              color: Colors.orange[900],
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Robo'),
            decoration: BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Extravío'),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ButtomNavigation(),
    );
  }
}
