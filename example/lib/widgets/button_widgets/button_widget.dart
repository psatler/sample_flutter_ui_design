import 'package:flutter/material.dart';
import 'package:sample_flutter_design_ui/sample_flutter_design_ui.dart';

List<Widget> buttonWidgets = [
  verticalSpaceSmall,
  DesignText.body('Normal'),
  verticalSpaceSmall,
  DesignButton(
    title: 'SIGN IN',
    onTap: () {},
  ),
  verticalSpaceSmall,
  DesignText.body('Disabled'),
  verticalSpaceSmall,
  DesignButton(
    title: 'SIGN IN',
    disabled: true,
    onTap: () {},
  ),
  verticalSpaceSmall,
  DesignText.body('Busy'),
  verticalSpaceSmall,
  DesignButton(
    title: 'SIGN IN',
    busy: true,
    onTap: () {},
  ),
  verticalSpaceSmall,
  DesignText.body('Outline'),
  verticalSpaceSmall,
  DesignButton.outline(
    title: 'Select location',
    leading: const Icon(
      Icons.send,
      color: kcPrimaryColor,
    ),
    onTap: () {},
  ),
  verticalSpaceLarge,
];
