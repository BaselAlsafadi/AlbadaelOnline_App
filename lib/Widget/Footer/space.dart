import 'package:flutter/material.dart';

// ignore: camel_case_types
class space extends StatelessWidget {
  const space({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 75,
    );
  }
}
