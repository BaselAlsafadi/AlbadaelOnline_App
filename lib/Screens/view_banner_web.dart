import 'dart:io';
import 'package:albadael/Widget/Public/appbarwidget.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: camel_case_types
class View_Banner_Web extends StatefulWidget {
  final String? link;

  View_Banner_Web(this.link, {Key? key}) : super(key: key);

  @override
  _View_Banner_WebState createState() => _View_Banner_WebState();
}

// ignore: camel_case_types
class _View_Banner_WebState extends State<View_Banner_Web> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: WebView(
        initialUrl:
            // "https://badaelonline.com/about"
            widget.link,
      ),
    );
  }
}
