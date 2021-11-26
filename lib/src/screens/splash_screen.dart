import 'dart:async';
import 'package:aquameter/src/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../Helper/map_helper.dart';

class Splash extends StatefulWidget {
  final GlobalKey<NavigatorState>? navigator;

  const Splash({Key? key, this.navigator}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Provider.of<MapHelper>(context, listen: false).getLocation();
    super.initState();
    Timer(
        const Duration(seconds:3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SigninScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jfif'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 150, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/aqualogo.png',
                  height: 100,
                  width: 400,
                  fit: BoxFit.none,
                ),
                const SizedBox(height: 10.0),
                Text(
                  "The Best Application For Fish",
                  style: TextStyle(
                      color: Colors.blue[400],
                      fontSize: 20,
                      fontStyle: FontStyle.normal),
                ),
               const  SizedBox(
                  height: 300,
                ),
                Text(
                  "التطبيق الأفضل و الأدق فى علوم الثروة السمكية",
                  style: TextStyle(
                      color: Colors.indigo[900],
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
