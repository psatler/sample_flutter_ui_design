import 'package:example/pages/storybook/model/custom_story.dart';
import 'package:example/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sample_flutter_design_ui/sample_flutter_design_ui.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

String _prefixStoryName(String name) => 'Input fields/$name';

final _normaInputFieldStory = CustomStory.withFigmaUrl(
  name: _prefixStoryName('Normal'),
  description: 'Default button',
  builder: (context) {
    return DesignInputField(
      controller: TextEditingController(),
      placeholder: 'Insert your name',
    );
  },
);

final _withLeadingIconInputFieldStory = CustomStory.withFigmaUrl(
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

final _withTrailingIconInputFieldStory = CustomStory.withFigmaUrl(
  name: _prefixStoryName('With trailing icon'),
  description: 'Input field with trailing icon',
  builder: (context) {
    return const TrailingIconInputField();
  },
);

final _passwordInputFieldStory = CustomStory.withFigmaUrl(
  name: _prefixStoryName('As password field'),
  description: 'Input field with obscure text',
  builder: (context) {
    return const PasswordInputField();
  },
);

final _showingErrorTextInputFieldStory = CustomStory.withFigmaUrl(
  name: _prefixStoryName('With error text'),
  description: 'Input field with possibility of displaying an error text',
  builder: (context) {
    return const ErrorInputField();
  },
);

final _withPropsInputFieldStory = CustomStory.withFigmaUrl(
  name: _prefixStoryName('With custom input props'),
  figmaUrl:
      'https://www.figma.com/file/h2JWnjXWHOhYbd68FsPb9i/Styleguide?node-id=2344%3A816',

  // description: 'Allows using custom props for input field',
  builder: (context) {
    final inputPlaceholderText =
        context.knobs.text(label: 'Placeholder text', initial: 'Placeholder');

    IconData? _iconData = context.knobs.nullable.options(
      label: 'Leading icon',
      initial: Icons.send,
      options: const [
        Option(
          label: 'Send icon',
          value: Icons.send,
        ),
        Option(
          label: 'Reset TV icon',
          value: Icons.reset_tv,
        ),
        Option(
          label: 'Wifi icon',
          value: Icons.wifi,
        ),
      ],
      enabled: false,
    );

    IconData? _iconDataTrailing = context.knobs.nullable.options(
      label: 'Trailing icon',
      initial: Icons.clear,
      options: const [
        Option(
          label: 'Clear icon',
          value: Icons.clear,
        ),
        Option(
          label: 'Send icon',
          value: Icons.send,
        ),
      ],
      enabled: false,
    );

    final errorText = context.knobs.nullable.text(
      label: 'Error text',
      initial: 'Error text',
      enabled: false,
    );

    final isPassword =
        context.knobs.boolean(label: 'Is password?', initial: false);

    final isEnabled =
        context.knobs.boolean(label: 'Is enabled?', initial: true);

    Widget? _trailing() {
      if (_iconDataTrailing != null) {
        return MouseRegion(
          // https://www.youtube.com/watch?v=1oF3pI5umck&ab_channel=Flutter
          child: Icon(_iconDataTrailing),
          cursor: SystemMouseCursors.click,
        );
      }
      return null;
    }

    return HookBuilder(builder: (context) {
      final controller = useTextEditingController();

      return SafeArea(
        child: DesignInputField(
          controller: controller,
          leading: _iconData != null ? Icon(_iconData) : null,
          trailing: _trailing(),
          placeholder: inputPlaceholderText,
          errorText: errorText,
          isPassword: isPassword,
          isEnabled: isEnabled,
          trailingTapped: () {
            if (_iconDataTrailing != null && _iconDataTrailing == Icons.clear) {
              controller.clear();
            }
          },
        ),
      );
    });
  },
);

final _inputFieldsAllStories = CustomStory.withFigmaUrl(
  name: _prefixStoryName('All stories'),
  figmaUrl:
      'https://www.figma.com/file/h2JWnjXWHOhYbd68FsPb9i/Styleguide?node-id=2344%3A816',

  // description: 'All input fields',
  builder: (context) {
    return Scaffold(
      appBar: AppBar(
        title: const DesignText.subheading('All Stories'),
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
  _withPropsInputFieldStory,
];
