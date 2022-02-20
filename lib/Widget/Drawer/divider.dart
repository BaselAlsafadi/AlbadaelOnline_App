import 'package:flutter/material.dart';

// ignore: camel_case_types
class divider_drawer extends StatelessWidget {
  const divider_drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12, left: 12),
      child: Divider(
        thickness: 1,
      ),
    );
  }
}
