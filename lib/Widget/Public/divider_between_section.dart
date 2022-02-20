import 'package:flutter/material.dart';

// ignore: camel_case_types
class Divider_between_section extends StatelessWidget {
  final String name;
  const Divider_between_section({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8, top: 14, bottom: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: Divider(
                thickness: 1,
                endIndent: 10,
                indent: 35,
                color: Color(0xff1daad2),
                // Color(0xff2c4755)
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff1daad2),
            ),
          ),
          Expanded(
            child: Container(
              child: Divider(
                thickness: 1,
                endIndent: 35,
                indent: 10,
                color: Color(0xff1daad2),
                //  Color(0xff2c4755)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
