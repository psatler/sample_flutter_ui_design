import 'package:example/utils/figma_url_launcher.dart';
import 'package:example/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:sample_flutter_design_ui/sample_flutter_design_ui.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

String _prefixStoryName(String name) => 'Input fields/$name';

final _normaInputFieldStory = Story(
  name: _prefixStoryName('Normal'),
  description: 'Default button',
  builder: (context) {
    return DesignInputField(
      controller: TextEditingController(),
      placeholder: 'Insert your name',
    );
  },
);

final _withLeadingIconInputFieldStory = Story(
  name: _prefixStoryName('With leading icon'),
  description: 'Input field with leading icon',
  builder: (context) {
    return DesignInputField(
      controller: TextEditingController(),
      leading: const Icon(Icons.reset_tv),
      placeholder: 'Enter TV Code',
    );
  },
);

final _withTrailingIconInputFieldStory = Story(
  name: _prefixStoryName('With trailing icon'),
  description: 'Input field with trailing icon',
  builder: (context) {
    return const TrailingIconInputField();
  },
);

final _passwordInputFieldStory = Story(
  name: _prefixStoryName('As password field'),
  description: 'Input field with obscure text',
  builder: (context) {
    return const PasswordInputField();
  },
);

final _showingErrorTextInputFieldStory = Story(
  name: _prefixStoryName('With error text'),
  description: 'Input field with possibility of displaying an error text',
  builder: (context) {
    return const ErrorInputField();
  },
);

final _inputFieldsAllStories = Story(
  name: _prefixStoryName('All stories'),
  description: 'All input fields',
  builder: (context) {
    return Scaffold(
      appBar: AppBar(
        title: const DesignText.subheading('All Stories'),
        actions: [
          figmaUrlLauncher('https://www.figma.com/'),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...inputFields, // defined in example/lib/widgets/input_widgets/input_widgets.dart
            ],
          ),
        ),
      ),
    );
  },
);

Iterable<Story> inputFieldStories = [
  _inputFieldsAllStories,
  _normaInputFieldStory,
  _withLeadingIconInputFieldStory,
  _withTrailingIconInputFieldStory,
  _passwordInputFieldStory,
  _showingErrorTextInputFieldStory,
];
