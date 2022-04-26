import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import 'package:sample_flutter_design_ui/sample_flutter_design_ui.dart';
import 'package:example/widgets/widgets.dart';

String _prefixStoryName(String name) => 'Text Styles/$name';

final _heading1Story = Story(
  name: _prefixStoryName('Heading 1'),
  description: 'h1 - title - regular 34',
  builder: (context) {
    final text =
        context.knobs.text(label: 'Insert text', initial: 'Heading One');
    return DesignText.headingOne(text);
  },
);

final _headlineStory = Story(
  name: _prefixStoryName('Headline'),
  description: 'headline - bold 30',
  builder: (context) {
    final text =
        context.knobs.text(label: 'Insert text', initial: 'Heading Three');
    return DesignText.headline(text);
  },
);

final _heading2Story = Story(
  name: _prefixStoryName('Heading 2'),
  description: 'h2 - title - semi-bold 28',
  builder: (context) {
    final text =
        context.knobs.text(label: 'Insert text', initial: 'Heading Two');
    return DesignText.headingTwo(text);
  },
);

final _heading3Story = Story(
  name: _prefixStoryName('Heading 3'),
  description: 'h3 - title - semi-bold 24',
  builder: (context) {
    final text =
        context.knobs.text(label: 'Insert text', initial: 'Heading Three');
    return DesignText.headingThree(text);
  },
);

final _subHeadingStory = Story(
  name: _prefixStoryName('Sub-heading'),
  description: 'subhead - regular 20',
  builder: (context) {
    final text = context.knobs.text(
        label: 'Insert text',
        initial: 'This will be a sub heading to the heading');
    return DesignText.subheading(text);
  },
);

final _bodyStory = Story(
  name: _prefixStoryName('Body text'),
  description: 'body - regular 16',
  builder: (context) {
    final text = context.knobs.text(
        label: 'Insert text',
        initial: 'Body Text that will be used for the general body');
    return DesignText.body(text);
  },
);

final _captionStory = Story(
  name: _prefixStoryName('Caption'),
  description: 'caption regular 12',
  builder: (context) {
    final text = context.knobs.text(
        label: 'Insert text',
        initial: 'This will be the caption usually for smaller details');
    return DesignText.caption(text);
  },
);

final _textStylesAllStories = Story(
  name: 'Text Styles/All stories',
  description: 'All text styles',
  builder: (context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...textWidgets, // defined in example/lib/pages/showcase_vanilla/showcase_view_vanilla.dart
      ],
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
