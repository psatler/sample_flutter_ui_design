import 'package:flutter/material.dart';
import 'package:sample_flutter_design_ui/sample_flutter_design_ui.dart';

import '../widgets/widgets.dart';

class ShowcaseViewVanilla extends StatelessWidget {
  const ShowcaseViewVanilla({Key? key}) : super(key: key);

  static const String routeName = '/showcase_example';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            const Center(child: DesignText.headline('Design System Showcase')),
            verticalSpaceSmall,
            const Divider(),
            ...textWidgets,
            const Divider(),
            ...buttonWidgets,
            const Divider(),
            ...inputFields,
          ],
        ),
      ),
    );
  }
}