import 'package:example/utils/prefix_figma_url.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

@immutable
class CustomStory extends Story {
  CustomStory.withFigmaUrl({
    String? figmaUrl,
    required String name,
    String? description,
    required WidgetBuilder builder,
  })  : prefixedFigmaUrl = figmaUrl != null ? prefixFigmaUrl(figmaUrl) : null,
        super(name: name, description: description, builder: builder);

  final String? prefixedFigmaUrl;
}
