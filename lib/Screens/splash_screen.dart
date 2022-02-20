import 'dart:async';
import 'package:albadael/Screens/home.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  stratTimer() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute<void>(builder: (BuildContext context) {
          return Home();
        }),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    stratTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          Container(
            child: Image.asset(
              'assets/images/dd.jpeg',
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 13,
            left: MediaQuery.of(context).size.width / 7,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 90,
                    child: Hero(
                      transitionOnUserGestures: true,
                      tag: 'assets/images/logo.png',
                      child: Material(
                        color: Colors.transparent,
                        child: Image.asset(
                          'assets/images/logo.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 170,
                    child: TextLiquidFill(
                      textAlign: TextAlign.center,
                      text: 'Badael Online ',
                      waveColor: Color(0xff1daad2),
                      boxBackgroundColor: Colors.white,
                      textStyle: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                      boxHeight: 50.0,
                      loadDuration: Duration(seconds: 4),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
