import 'dart:developer';

import 'package:example/pages/storybook/model/custom_story.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import 'package:sample_flutter_design_ui/sample_flutter_design_ui.dart';
import 'package:example/widgets/widgets.dart';

String _prefixStoryName(String name) => 'Text Styles/$name';

final _heading1Story = CustomStory.withFigmaUrl(
  name: _prefixStoryName('Heading 1'),
  description: 'h1 - title - regular 34',
  builder: (context) {
    final text =
        context.knobs.text(label: 'Insert text', initial: 'Heading One');
    return DesignText.headingOne(text);
  },
);

final _headlineStory = CustomStory.withFigmaUrl(
  name: _prefixStoryName('Headline'),
  figmaUrl:
      'https://www.figma.com/file/h2JWnjXWHOhYbd68FsPb9i/Styleguide?node-id=2406%3A989',
  builder: (context) {
    final text = context.knobs.text(label: 'Insert text', initial: 'Headline');
    return DesignText.headline(text);
  },
);

final _heading2Story = CustomStory.withFigmaUrl(
  name: _prefixStoryName('Heading 2'),
  description: 'h2 - title - semi-bold 28',
  builder: (context) {
    final text =
        context.knobs.text(label: 'Insert text', initial: 'Heading Two');
    return DesignText.headingTwo(text);
  },
);

final _heading3Story = CustomStory.withFigmaUrl(
  name: _prefixStoryName('Heading 3'),
  description: 'h3 - title - semi-bold 24',
  builder: (context) {
    final text =
        context.knobs.text(label: 'Insert text', initial: 'Heading Three');
    return DesignText.headingThree(text);
  },
);

final _subHeadingStory = CustomStory.withFigmaUrl(
  name: _prefixStoryName('Sub-heading'),
  description: 'subhead - regular 20',
  builder: (context) {
    final text = context.knobs.text(
        label: 'Insert text',
        initial: 'This will be a sub heading to the heading');
    return DesignText.subheading(text);
  },
);

final _bodyStory = CustomStory.withFigmaUrl(
  name: _prefixStoryName('Body text'),
  description: 'body - regular 16',
  builder: (context) {
    final text = context.knobs.text(
        label: 'Insert text',
        initial: 'Body Text that will be used for the general body');
    return DesignText.body(text);
  },
);

final _captionStory = CustomStory.withFigmaUrl(
  name: _prefixStoryName('Caption'),
  description: 'caption regular 12',
  builder: (context) {
    final text = context.knobs.text(
        label: 'Insert text',
        initial: 'This will be the caption usually for smaller details');
    return DesignText.caption(text);
  },
);

final _textStylesAllStories = CustomStory.withFigmaUrl(
  name: _prefixStoryName('All stories'),
  figmaUrl:
      'https://www.figma.com/file/h2JWnjXWHOhYbd68FsPb9i/Styleguide?node-id=2381%3A1176',
  description: 'All Stories',
  builder: (context) {
    CrossAxisAlignment _crossAxisAlignment = context.knobs.options(
      label: 'Pick a horizontal alignment',
      initial: CrossAxisAlignment.start,
      description: 'Alignment of the text (left, center, right)',
      options: const [
        Option(
          label: 'Left',
          value: CrossAxisAlignment.start,
          description: 'Left alignment',
        ),
        Option(
          label: 'Center',
          value: CrossAxisAlignment.center,
          description: 'Center alignment',
        ),
        Option(
          label: 'Right',
          value: CrossAxisAlignment.end,
          description: 'Right alignment',
        ),
      ],
    );

    // https://stackoverflow.com/a/68680939/13137278
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    log('isDarkMode $isDarkMode');

    return Scaffold(
      appBar: AppBar(
        title: const DesignText.subheading('All Stories'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: _crossAxisAlignment,
          children: [
            ...textWidgets, // defined in example/lib/pages/showcase_vanilla/showcase_view_vanilla.dart
          ],
        ),
      ),
    );
  },
);

Iterable<Story> textStylesStories = [
  _textStylesAllStories,
  _heading1Story,
  _headlineStory,
  _heading2Story,
  _heading3Story,
  _subHeadingStory,
  _bodyStory,
  _captionStory,
];
