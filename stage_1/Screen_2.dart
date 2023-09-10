import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class SecondScreen extends StatelessWidget{
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: webpage(),
        );
  }

}

class webpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _webpagestate();

}

class _webpagestate extends State<webpage>{
   
  
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://github.com/mohammedtohamym'),
      );
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }

}