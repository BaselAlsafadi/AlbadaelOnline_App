import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';

class ButtonContactUs extends StatefulWidget {
  const ButtonContactUs({Key? key}) : super(key: key);

  @override
  _ButtonContactUsState createState() => _ButtonContactUsState();
}

class _ButtonContactUsState extends State<ButtonContactUs> {
  @override
  Widget build(BuildContext context) {
    return FabCircularMenu(
        fabOpenColor: Color(0xff1daad2),
        fabCloseColor: Color(0xff1daad2),
        fabSize: 60,
        fabElevation: 5,
        fabOpenIcon: Icon(
          Icons.message,
          color: Colors.white,
        ),
        ringWidth: 50,
        ringDiameter: 250,
        ringColor: Color(0xff1daad2),
        fabCloseIcon: Icon(
          Icons.close,
          color: Colors.white,
        ),
        // fabChild: Icon(Icons.add),
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.facebook,
                color: Colors.white,
              ),
              onPressed: () {
                print('Home');
              }),
          IconButton(
              icon: Icon(
                Icons.call,
                color: Colors.white,
              ),
              onPressed: () {
                print('Favorite');
              }),
          IconButton(
              icon: Icon(
                Icons.messenger_outline_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                print('Favorite');
              }),
          IconButton(
              icon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              onPressed: () {
                print('Favorite');
              })
        ]);
  }
}
