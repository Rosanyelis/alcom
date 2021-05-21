import 'package:alcom/utils/responsive.dart';
import 'package:alcom/widgets/circle.dart';
import 'package:alcom/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:alcom/widgets/icon_container.dart';

class LoginPage extends StatefulWidget {
  static const routeName = 'login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              children: [
                Positioned(
                  top: -blueSize * 0.35,
                  right: -blueSize * 0.2,
                  child: Circle(
                    size: blueSize * 0.95,
                    colors: [
                      Colors.blueAccent,
                      Colors.blue,
                    ],
                  ),
                ),
                Positioned(
                  top: -indigoSize * 0.3,
                  left: -indigoSize * 0.10,
                  child: Circle(
                    size: indigoSize * 0.97,
                    colors: [
                      Colors.indigo,
                      Colors.indigoAccent,
                    ],
                  ),
                ),
                Positioned(
                  top: blueSize * 0.35,
                  child: Column(
                    children: [
                      IconContainer(
                        size: responsive.wp(25),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Hello Again \n Welcome Back!",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
