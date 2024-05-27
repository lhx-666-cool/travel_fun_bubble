import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MyAppState();
}

class _MyAppState extends State<MapPage> {
  // 1
  late WebViewController controller;
  @override
  void initState() {
    // 2
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://public.hxzzz.asia/demo4.html'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: WebViewWidget(controller: controller)
    );
  }
}
