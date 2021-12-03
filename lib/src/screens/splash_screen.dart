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
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SigninScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 90, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/aqualogo.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
