import 'package:flutter/material.dart';
import 'package:sample_flutter_design_ui/sample_flutter_design_ui.dart';

List<Widget> buttonWidgets = [
  verticalSpaceSmall,
  DesignText.body('Normal'),
  verticalSpaceSmall,
  const DesignButton(title: 'SIGN IN'),
  verticalSpaceSmall,
  DesignText.body('Disabled'),
  verticalSpaceSmall,
  const DesignButton(title: 'SIGN IN', disabled: true),
  verticalSpaceSmall,
  DesignText.body('Busy'),
  verticalSpaceSmall,
  const DesignButton(title: 'SIGN IN', busy: true),
  verticalSpaceSmall,
  DesignText.body('Outline'),
  verticalSpaceSmall,
  const DesignButton.outline(
    title: 'Select location',
    leading: Icon(Icons.send, color: kcPrimaryColor),
  ),
  verticalSpaceLarge,
];
