import 'package:flutter/material.dart';
import 'package:sample_flutter_design_ui/sample_flutter_design_ui.dart';

List<Widget> textWidgets = [
  const Center(child: DesignText.headline('Text Styles')),
  verticalSpaceSmall,
  const DesignText.headingOne('Heading One'),
  verticalSpaceSmall,
  const DesignText.headingTwo('Heading Two'),
  verticalSpaceSmall,
  const DesignText.headingThree('Heading Three'),
  verticalSpaceSmall,
  const DesignText.headline('Headline'),
  verticalSpaceSmall,
  const DesignText.subheading('This will be a sub heading to the headling'),
  verticalSpaceSmall,
  DesignText.body('Body Text that will be used for the general body'),
  verticalSpaceSmall,
  const DesignText.caption(
      'This will be the caption usually for smaller details'),
  verticalSpaceLarge,
];
