import 'package:flutter/material.dart';

// ignore: camel_case_types
class Title_name_screen extends StatelessWidget {
  final String title;
  const Title_name_screen({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 20,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.grey[200]),
        child: Text(
          title,
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xff2c4755)),
        ),
      ),
    );
  }
}
