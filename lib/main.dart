import 'package:flutter/material.dart';
import 'package:webview_site_to_app/WebViewSitePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(child: WebViewSitePage("https://chat.openai.com"),),
        ],
      ),
    );
  }
}