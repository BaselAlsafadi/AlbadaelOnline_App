import 'package:albadael/Screens/about.dart';
import 'package:albadael/Screens/home.dart';
import 'package:albadael/Screens/blog.dart';
import 'package:albadael/Screens/protfloio.dart';
import 'package:albadael/Screens/services.dart';
import 'package:flutter/material.dart';
import 'name_of_screen_in_drawer.dart';

// ignore: camel_case_types
class Column_Drawer extends StatefulWidget {
  const Column_Drawer({Key? key}) : super(key: key);

  @override
  _Column_DrawerState createState() => _Column_DrawerState();
}

// ignore: camel_case_types
class _Column_DrawerState extends State<Column_Drawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Name_Screen_On_Drawer(
          icon: Icon(
            Icons.home,
            color: Color(0xff1daad2),
          ),
          name: 'Home',
          navigator: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Home())),
        ),
        Name_Screen_On_Drawer(
          icon: Icon(
            Icons.amp_stories_rounded,
            color: Color(0xff1daad2),
          ),
          name: 'About',
          navigator: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AboutScreen())),
        ),
        Name_Screen_On_Drawer(
            icon: Icon(
              Icons.space_dashboard_rounded,
              color: Color(0xff1daad2),
            ),
            navigator: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Srevices())),
            name: 'Services'),
        Name_Screen_On_Drawer(
          icon: Icon(
            Icons.work_rounded,
            color: Color(0xff1daad2),
          ),
          navigator: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Protfolio())),
          name: 'Protfolio',
        ),
        Name_Screen_On_Drawer(
          icon: Icon(
            Icons.book_rounded,
            color: Color(0xff1daad2),
          ),
          navigator: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Blog())),
          name: 'Blog',
        ),
        Name_Screen_On_Drawer(
          icon: Icon(
            Icons.settings,
            color: Color(0xff1daad2),
          ),
          navigator: () {},
          name: 'Setting',
        ),
      ],
    );
  }
}
