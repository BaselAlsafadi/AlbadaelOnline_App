import 'package:albadael/Widget/About-Us/section_about_us.dart';
import 'package:albadael/Widget/About-Us/section_faq.dart';
import 'package:albadael/Widget/About-Us/section_partner.dart';
import 'package:albadael/Widget/About-Us/section_team.dart';
import 'package:albadael/Widget/Public/appbarwidget.dart';
import 'package:albadael/Widget/Public/divider_between_section.dart';
import 'package:albadael/Widget/Public/fab_message.dart';
import 'package:albadael/Widget/Public/title_name_screen.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  bool visibile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(children: [
          Title_name_screen(title: 'About-Us'),
          Section_About_us_In_Screen_About_us(),
          Divider_between_section(name: 'Our Team'),
          Section_Team(),
          Divider_between_section(name: 'Partner'),
          Section_Bartner(),
          Divider_between_section(name: 'FAQ'),
          Section_Faq(),
          SizedBox(
            height: MediaQuery.of(context).size.height / 12,
          )
        ]),
      ),
      floatingActionButton: ButtonContactUs(),
    );
  }
}
