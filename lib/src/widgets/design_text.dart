import 'package:flutter/material.dart';
import 'package:sample_flutter_design_ui/src/shared/app_colors.dart';
import 'package:sample_flutter_design_ui/src/shared/styles.dart';

class DesignText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const DesignText.headingOne(this.text, {Key? key})
      : style = heading1Style,
        super(key: key);
  const DesignText.headingTwo(this.text, {Key? key})
      : style = heading2Style,
        super(key: key);
  const DesignText.headingThree(this.text, {Key? key})
      : style = heading3Style,
        super(key: key);
  const DesignText.headline(this.text, {Key? key})
      : style = headlineStyle,
        super(key: key);
  const DesignText.subheading(this.text, {Key? key})
      : style = subheadingStyle,
        super(key: key);
  const DesignText.caption(this.text, {Key? key})
      : style = captionStyle,
        super(key: key);

  // the body text has the possibility to have different colors
  DesignText.body(this.text, {Color color = kcMediumGreyColor, Key? key})
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
