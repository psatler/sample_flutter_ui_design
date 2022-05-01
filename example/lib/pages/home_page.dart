import 'package:example/pages/showcase_vanilla/showcase_view_vanilla.dart';
import 'package:example/pages/storybook/storybook.dart';
import 'package:example/pages/storybook/storybook_official_example.dart';
import 'package:example/pages/widgetbook/widgetbook.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: const Text('Showcase view (no storybook lib used)'),
              onTap: () {
                Navigator.pushNamed(context, ShowcaseViewVanilla.routeName);
              },
            ),
            ListTile(
              title: const Text('Flutter Storybook'),
              onTap: () {
                Navigator.pushNamed(context, StorybookFlutter.routeName);
              },
            ),
            ListTile(
              title: const Text('Flutter Storybook (Official Example)'),
              onTap: () {
                Navigator.pushNamed(
                    context, StorybookOfficialExample.routeName);
              },
            ),
            ListTile(
              title: const Text('Flutter Widgetbook'),
              onTap: () {
                Navigator.pushNamed(context, WidgetBookFlutter.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
