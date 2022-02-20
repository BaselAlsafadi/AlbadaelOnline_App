import 'package:flutter/material.dart';
import 'icon_social_media.dart';

// ignore: camel_case_types
class social_media_in_footer extends StatelessWidget {
  const social_media_in_footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconSocialMedia(
          url: "https://facebook.com/badaelonline",
          image: "assets/images/facebook.png",
        ),
        SizedBox(width: 10),
        IconSocialMedia(
          url: "https://instagram.com/badaelonline",
          image: "assets/images/instagram.png",
        ),
        SizedBox(width: 10),
        IconSocialMedia(
          url: "https://linkedin.com/badaelonline",
          image: "assets/images/linkedin.png",
        ),
        SizedBox(width: 10),
        IconSocialMedia(
          url: "https://twitter.com/badaelonline",
          image: "assets/images/twitter.png",
        ),
      ],
    );
  }
}
