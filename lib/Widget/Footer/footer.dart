import 'package:albadael/Widget/Footer/row_social_media.dart';
import 'package:albadael/Widget/Footer/space.dart';
import 'package:albadael/Widget/Footer/text.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 4.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text_footer(title: 'Swida - Syria'),
            space(),
            text_footer(title: '00963 991 552 107'),
            space(),
            text_footer(title: 'info@badaelonline.com'),
            SizedBox(
              height: MediaQuery.of(context).size.height / 60,
            ),
            social_media_in_footer(),
          ],
        ));
  }
}
