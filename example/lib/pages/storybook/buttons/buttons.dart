import 'package:example/utils/figma_url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    return DesignButton(
      title: buttonText,
      onTap: () {},
    );
  },
);

final _disabledButtonStory = Story(
  name: _prefixStoryName('Disabled'),
  description: 'Disabled button',
  builder: (context) {
    final buttonText =
        context.knobs.text(label: 'Button text', initial: 'Sign In');

    final bool isDisabled = context.knobs.boolean(
      label: 'Disabled button',
      initial: true,
    );
    return DesignButton(
      title: buttonText,
      disabled: isDisabled,
      onTap: () {},
    );
  },
);

final _busyButtonStory = Story(
  name: _prefixStoryName('Busy'),
  description: 'Button on a busy state such as performing an API request',
  builder: (context) {
    final buttonText =
        context.knobs.text(label: 'Button text', initial: 'Sign In');

    final bool isBusy = context.knobs.boolean(
      label: 'Simulate busy state',
      initial: true,
    );
    return DesignButton(
      title: buttonText,
      busy: isBusy,
      onTap: () {},
    );
  },
);

final _outlineButtonStory = Story(
  name: _prefixStoryName('Outlined'),
  description: 'Outlined button',
  builder: (context) {
    return DesignButton.outline(
      title: 'Select location',
      leading: const Icon(Icons.send, color: kcPrimaryColor),
      onTap: () {},
    );
  },
);

final _allButtonPropsStory = Story(
  name: _prefixStoryName('All button props'),
  description: 'It allows to customize the props of the button',
  builder: (context) {
    final bool isDisabled = context.knobs.boolean(
      label: 'Disabled button',
      initial: false,
    );

    final bool isBusy = context.knobs.boolean(
      label: 'Simulate busy state',
      initial: false,
    );

    final bool withOutline = context.knobs.boolean(
      label: 'Toggle outline button',
      initial: true,
    );

    final buttonText =
        context.knobs.text(label: 'Button text', initial: 'Sign In');

    IconData _iconData = context.knobs.options(
      label: 'Icon for Outlined button',
      initial: Icons.send,
      description: 'Alignment of the text (left, center, right)',
      options: const [
        Option(
          label: 'Send icon',
          value: Icons.send,
        ),
        Option(
          label: 'Figma icon',
          value: FontAwesomeIcons.figma,
        ),
        Option(
          label: 'Wifi icon',
          value: Icons.wifi,
        ),
      ],
    );

    if (withOutline) {
      return DesignButton.outline(
        title: buttonText,
        disabled: isDisabled,
        busy: isBusy,
        leading: Icon(_iconData, color: kcPrimaryColor),
        onTap: () {},
      );
    }

    return DesignButton(
      title: buttonText,
      disabled: isDisabled,
      busy: isBusy,
      onTap: () {},
    );
  },
);

final _buttonAllStories = Story(
  name: _prefixStoryName('All stories'),
  description: 'All text styles',
  builder: (context) {
    return Scaffold(
      appBar: AppBar(
        title: const DesignText.subheading('All Stories'),
        actions: [
          figmaUrlLauncher('https://www.figma.com/'),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...buttonWidgets, // defined in eexample/lib/widgets/button_widgets/button_widget.dart
        ],
      ),
    );
  },
);

Iterable<Story> buttonStories = [
  _buttonAllStories,
  _normalButtonStory,
  _disabledButtonStory,
  _busyButtonStory,
  _outlineButtonStory,
  _allButtonPropsStory,
];
