import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import 'package:example/widgets/widgets.dart';
import 'package:sample_flutter_design_ui/sample_flutter_design_ui.dart';

String _prefixStoryName(String name) => 'Buttons/$name';

final _normalButtonStory = Story(
  name: _prefixStoryName('Normal'),
  description: 'Default button',
  builder: (context) {
    final buttonText =
        context.knobs.text(label: 'Button text', initial: 'Sign In');
    return DesignButton(title: buttonText);
  },
);

final _buttonAllStories = Story(
  name: _prefixStoryName('All stories'),
  description: 'All text styles',
  builder: (context) {
    return Scaffold(
      appBar: AppBar(title: const DesignText.subheading('All Stories')),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...buttonWidgets, // defined in eexample/lib/widgets/button_widgets/button_widget.dart
          ],
        ),
      ),
    );
  },
);

Iterable<Story> buttonStories = [
  _buttonAllStories,
  _normalButtonStory,
];
