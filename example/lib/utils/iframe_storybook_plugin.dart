import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:example/utils/custom_iframe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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

  final grouped =
      context.watch<StoryNotifier>().stories.groupListsBy((s) => s.section);

  final story = context.watch<StoryNotifier>().currentStory;

  final knobs = context.watch<KnobsNotifier>();
  final items = knobs.all();

  // final figmaUrl = context.watch<FigmaUrlNotifier>().figmaUrl;
  // log('figmaUrl $figmaUrl');

  log('Story ${story.toString()}');
  log('Story ${story?.name}');
  log('Story ${story?.description}');
  log('items $items');
  log('knobs $knobs');
  log('grouped $grouped');
  // log('label ${items.first.label}');
  // log('value ${items.first.value}');

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
              child: IframeView(
                key: UniqueKey(),
                source: story?.description ?? '',
                // source:
                //     "https://api.flutter.dev/flutter/widgets/HtmlElementView-class.html",
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

class FigmaUrlNotifier extends ChangeNotifier {
  String _figmaUrl = '';

  String get figmaUrl => _figmaUrl;

  set figmaUrl(String value) {
    _figmaUrl = value;
    notifyListeners();
  }
}
