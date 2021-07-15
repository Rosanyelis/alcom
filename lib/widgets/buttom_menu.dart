import 'package:alcom/pages/groups_page.dart';
import 'package:alcom/pages/home_page.dart';
import 'package:alcom/pages/notifications_page.dart';
import 'package:flutter/material.dart';

class ButtomNavigation extends StatefulWidget {
  ButtomNavigation({Key key}) : super(key: key);

  @override
  _ButtomNavigationState createState() => _ButtomNavigationState();
}

class _ButtomNavigationState extends State<ButtomNavigation> {
  set _currentTabIndex(int _currentTabIndex) {}

  @override
  Widget build(BuildContext context) {
    int _currentTabIndex = 0;
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      // backgroundColor: kContentColorLightTheme,
      // selectedIconTheme: IconThemeData(color: iconoColor),
      // selectedItemColor: Colors.white70,
      onTap: _onTap,
      currentIndex: _currentTabIndex,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
        BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Grupos'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications_rounded), label: 'Notificación'),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings), label: 'Configuración'),
      ],
    );
  }

  _onTap(int tabIndex) {
    switch (tabIndex) {
      case 0:
        Navigator.pushReplacementNamed(context, HomePage.routeName);
        break;
      case 1:
        Navigator.pushReplacementNamed(context, GroupsPage.routeName);
        break;
      case 2:
        Navigator.pushReplacementNamed(context, NotificationsPage.routeName);
        break;
    }
    setState(() {
      _currentTabIndex = tabIndex;
    });
  }
}
