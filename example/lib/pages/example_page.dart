import 'package:flutter/material.dart';
import 'package:sample_flutter_design_ui/sample_flutter_design_ui.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          UiText.body('Design System Demo'),
          const UiButton(
            title: 'Button',
            // leading: Icon(Icons.send),
            // busy: true,
            // disabled: true,
          ),
        ],
      ),
    );
  }
}
