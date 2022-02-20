import 'package:albadael/Widget/Drawer/column_in_drawer.dart';
import 'package:albadael/Widget/Footer/footer.dart';
import 'package:flutter/material.dart';
import 'divider.dart';
import 'header_drawer.dart';

class Wdrawer extends StatefulWidget {
  const Wdrawer({
    Key? key,
  }) : super(key: key);

  @override
  _WdrawerState createState() => _WdrawerState();
}

class _WdrawerState extends State<Wdrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Header_Drawer(),
            divider_drawer(),
            Container(color: Colors.white, child: Column_Drawer()),
            divider_drawer(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
