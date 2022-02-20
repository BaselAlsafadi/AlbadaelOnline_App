import 'package:flutter/material.dart';

// ignore: camel_case_types
class Header_Drawer extends StatelessWidget {
  const Header_Drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 35,
            bottom: MediaQuery.of(context).size.height / 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: Image.asset(
              'assets/images/logo.png',
            )),
            Text(
              'Badael Online',
              style: TextStyle(
                  fontSize: 25,
                  color: Color(0xff1B75BC),
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
