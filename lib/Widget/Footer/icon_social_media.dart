import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IconSocialMedia extends StatelessWidget {
  final String url;
  final String image;
  const IconSocialMedia({Key? key, required this.url, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        // ignore: non_constant_identifier_names
        String URL = url;

        if (await canLaunch(URL)) {
          await launch(URL);
        } else {
          throw 'Could not launch $URL';
        }
      },
      child: Container(height: 25, width: 25, child: Image.asset(image)),
    );
  }
}
