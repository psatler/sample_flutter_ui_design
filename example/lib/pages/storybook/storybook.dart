import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import 'text_styles/text_styles.dart';

// https://medium.com/flutter-community/storybook-flutter-storybook-flutter-7fbe23a8188a

class StorybookFlutter extends StatelessWidget {
  const StorybookFlutter({Key? key}) : super(key: key);

  static const String routeName = '/storybook_flutter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Storybook(
        stories: [
          ...textStylesStories,

          // Story(
          //     name: 'Screens/Counter',
          //     description: 'Demo Counter app with about dialog.',
          //     builder: (context) => CounterPage(
          //       title: context.knobs.text(label: 'Title', initial: 'Counter'),
          //       enabled: context.knobs.boolean(label: 'Enabled', initial: true),
          //     ),
          //   ),
          Story(
            name: 'Widgets/Text',
            description: 'Simple text widget.',
            builder: (context) => const Center(child: Text('Simple text')),
          ),
        ],
      ),
    );
  }
}
