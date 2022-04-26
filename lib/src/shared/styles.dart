import 'package:flutter/material.dart';

/// h1 - title - regular 34
/// h2 - title - semi-bold 28
/// h3 - title - semi-bold 24
/// headline - bold 30
/// body - regular 16
/// subhead - regular 20
/// caption regular 12

const TextStyle heading1Style = TextStyle(
  fontSize: 34,
  fontWeight: FontWeight.w400, // regular, normal
);

const TextStyle heading2Style = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.w600, // semi-bold
);

const TextStyle heading3Style = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w600, // semi-bold
);

const TextStyle headlineStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.w700,
);

const TextStyle bodyStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
);

const TextStyle subheadingStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
);

const TextStyle captionStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
);
