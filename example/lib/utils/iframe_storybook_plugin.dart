import 'package:example/utils/custom_webview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class IframeStoryBookPlugin extends Plugin {
  IframeStoryBookPlugin()
      : super(
          wrapperBuilder: _buildWrapper,
        );
}

double _figmaBoxWidth(double width) {
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

  final story =
      context.select<StoryNotifier, Story?>((story) => story.currentStory);

  // log('Story ${story?.description}');

  if (!kIsWeb ||
      story?.description == null ||
      story?.description?.startsWith('https://www.figma.com') == false) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Row(
        children: [
          Expanded(child: child!),
        ],
      ),
    );
  }

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
                left: BorderSide(color: Colors.black12, width: 3),
              ),
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: _figmaBoxWidth(width),
              ),
              child: CustomWebView(
                key: UniqueKey(),
                webUrl: story?.description,
              ),
              // child: IframeView(
              //   key: UniqueKey(),
              //   source: story?.description ?? '',
              //   // source:
              //   //     "https://api.flutter.dev/flutter/widgets/HtmlElementView-class.html",
              // ),
            ),
          ),
        ),
      ],
    ),
  );
}
