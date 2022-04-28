import 'dart:developer';

import 'package:example/utils/custom_iframe.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class IframeStoryBookPlugin extends Plugin {
  IframeStoryBookPlugin()
      : super(
          wrapperBuilder: _buildWrapper,
        );
}

double _iFrameWidth(double width) {
  if (width < 1400) {
    return 500;
  }

  if (width > 1400 && width < 2000) {
    return 850;
  }

  return 1100;
}

Widget _buildWrapper(BuildContext context, Widget? child) {
  final width = MediaQuery.of(context).size.width;

  log('width $width');

  return Directionality(
    textDirection: TextDirection.ltr,
    child: Row(
      children: [
        Expanded(child: child!),
        Material(
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(color: Colors.black12),
                left: BorderSide(color: Colors.black12, width: 2),
              ),
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: _iFrameWidth(width),
                // maxWidth: 500,
              ),
              child: const IframeView(
                  source:
                      "https://api.flutter.dev/flutter/widgets/HtmlElementView-class.html"),
            ),
          ),
        ),
      ],
    ),
  );
}
