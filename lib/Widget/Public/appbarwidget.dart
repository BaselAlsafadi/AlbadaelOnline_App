import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.grey[600],
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      title: Padding(
        padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 5),
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width / 1.5,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                height: MediaQuery.of(context).size.height / 14,
                width: MediaQuery.of(context).size.width / 6,
                child: Image.asset('assets/images/logo.png')),
            Text(
              'Badael Online',
              style: TextStyle(color: Colors.black),
            ),
          ]),
        ),
      ),
    );
  }
}
