import 'package:alcom/widgets/icon_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alcom/utils/responsive.dart';
import 'package:alcom/widgets/circle.dart';
import 'package:alcom/widgets/register_form.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = 'register';
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final double blueSize = responsive.wp(80);
    final double indigoSize = responsive.wp(57);

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: responsive.height,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  top: -blueSize * 0.2,
                  right: -blueSize * 0.2,
                  child: Circle(
                    size: blueSize,
                    colors: [
                      Colors.blueAccent,
                      Colors.blue,
                    ],
                  ),
                ),
                Positioned(
                  top: -indigoSize * 0.25,
                  left: -indigoSize * 0.15,
                  child: Circle(
                    size: indigoSize,
                    colors: [
                      Colors.indigo,
                      Colors.indigoAccent,
                    ],
                  ),
                ),
                Positioned(
                  top: blueSize * 0.30,
                  child: Column(
                    children: [
                      Text("Bienvenido a ALCOM",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: responsive.dp(2.2),
                              color: Colors.white)),
                      SizedBox(
                        height: 30,
                      ),
                      IconContainer(
                        size: responsive.wp(25),
                      ),
                    ],
                  ),
                ),
                RegisterForm(),
                Positioned(
                  left: 15,
                  top: 10,
                  child: SafeArea(
                    child: CupertinoButton(
                      color: Colors.black26,
                      padding: EdgeInsets.all(10),
                      borderRadius: BorderRadius.circular(30),
                      child: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
