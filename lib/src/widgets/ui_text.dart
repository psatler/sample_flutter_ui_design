import 'package:flutter/material.dart';
import 'package:sample_flutter_design_ui/src/shared/app_colors.dart';
import 'package:sample_flutter_design_ui/src/shared/styles.dart';

class UiText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const UiText.headingOne(this.text, {Key? key})
      : style = heading1Style,
        super(key: key);
  const UiText.headingTwo(this.text, {Key? key})
      : style = heading2Style,
        super(key: key);
  const UiText.headingThree(this.text, {Key? key})
      : style = heading3Style,
        super(key: key);
  const UiText.headline(this.text, {Key? key})
      : style = headlineStyle,
        super(key: key);
  const UiText.subheading(this.text, {Key? key})
      : style = subheadingStyle,
        super(key: key);
  const UiText.caption(this.text, {Key? key})
      : style = captionStyle,
        super(key: key);

  // the body text has the possibility to have different colors
  UiText.body(this.text, {Color color = kcMediumGreyColor, Key? key})
      : style = bodyStyle.copyWith(color: color),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
