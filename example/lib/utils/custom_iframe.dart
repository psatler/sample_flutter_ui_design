// https://stackoverflow.com/questions/63407370/can-i-use-two-iframes-on-flutter-web
// https://dartpad.dev/?id=7c782166dfda8455d2ef4c77082502c2

// /ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class IframeView extends StatefulWidget {
  final String source;

  const IframeView({Key? key, required this.source}) : super(key: key);

  @override
  _IframeViewState createState() => _IframeViewState();
}

class _IframeViewState extends State<IframeView> {
  // Widget _iframeWidget;
  final IFrameElement _iframeElement = IFrameElement();

  @override
  void initState() {
    super.initState();
    _iframeElement.src = widget.source;
    _iframeElement.style.border = 'none';

    //ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'iframeElement',
      (int viewId) => _iframeElement,
    );
  }

  @override
  Widget build(BuildContext context) {
    return HtmlElementView(
      key: UniqueKey(),
      viewType: 'iframeElement',
    );
  }
}
