import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';

// https://github.com/adrianflutur/webviewx/blob/main/example/lib/webview_page.dart

class CustomWebView extends StatefulWidget {
  const CustomWebView({
    Key? key,
    this.webUrl,
  }) : super(key: key);

  final String? webUrl;

  @override
  State<CustomWebView> createState() => _CustomWebViewState();
}

class _CustomWebViewState extends State<CustomWebView> {
  late WebViewXController webviewController;

  bool isLoading = true;

  @override
  void dispose() {
    webviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.webUrl == null) {
      return const Center(
        child: Text('Invalid URL'),
      );
    }

    return Stack(
      children: [
        WebViewX(
          // key: const ValueKey('webviewx'),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (controller) async {
            webviewController = controller;

            log('webviewx CREATED: ${widget.webUrl}');

            await webviewController.loadContent(
              widget.webUrl!,
              SourceType.url,
            );

            setState(() {
              isLoading = false;
            });
          },
          webSpecificParams: const WebSpecificParams(
            printDebugInfo: true,
          ),
        ),
        if (isLoading)
          const Center(
            child: CircularProgressIndicator(),
          ),
      ],
    );
  }
}
