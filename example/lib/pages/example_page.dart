import 'package:flutter/material.dart';
import 'package:sample_flutter_design_ui/sample_flutter_design_ui.dart';

import 'button_widgets/button_widget.dart';
import 'input_widgets/input_widgets.dart';
import 'text_widgets/text_widgets.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({Key? key}) : super(key: key);

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
