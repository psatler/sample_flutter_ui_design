import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import 'buttons/buttons.dart';
import 'input_fields/input_fields.dart';
import 'text_styles/text_styles.dart';

// https://medium.com/flutter-community/storybook-flutter-storybook-flutter-7fbe23a8188a

final disableIfAndroidOrIOS = kIsWeb
    ? true
    : (Platform.isAndroid || Platform.isIOS)
        ? false
        : true;

final _defaultPlugins = initializePlugins(
  contentsSidePanel: disableIfAndroidOrIOS,
  knobsSidePanel: disableIfAndroidOrIOS,
  initialDeviceFrameData: DeviceFrameData(
    device: Devices.ios.iPhone13,
  ),
);

class StorybookFlutter extends StatelessWidget {
  const StorybookFlutter({Key? key}) : super(key: key);

  static const String routeName = '/storybook_flutter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Storybook(
        initialStory: textStylesStories.first.name,
        plugins: [
          ..._defaultPlugins,
        ],
        stories: [
          ...textStylesStories,
          ...buttonStories,
          ...inputFieldStories,
        ],
      ),
    );
  }
}
