import 'package:flutter/material.dart';

// ignore: camel_case_types
class Name_Screen_On_Drawer extends StatelessWidget {
  final String? name;
  final Function()? navigator;
  final Icon icon;
  const Name_Screen_On_Drawer({
    Key? key,
    this.navigator,
    this.name,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: icon, onTap: navigator, title: Text(name.toString()));
  }
}
