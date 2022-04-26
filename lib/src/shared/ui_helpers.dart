import 'package:flutter/material.dart';

const SizedBox horizontalSpaceTiny = SizedBox(width: 5);
const SizedBox horizontalSpaceSmall = SizedBox(width: 10);
const SizedBox horizontalSpaceRegular = SizedBox(width: 18);
const SizedBox horizontalSpaceMedium = SizedBox(width: 25);
const SizedBox horizontalSpaceLarge = SizedBox(width: 50);

const SizedBox verticalSpaceTiny = SizedBox(height: 5);
const SizedBox verticalSpaceSmall = SizedBox(height: 10);
const SizedBox verticalSpaceRegular = SizedBox(height: 18);
const SizedBox verticalSpaceMedium = SizedBox(height: 25);
const SizedBox verticalSpaceLarge = SizedBox(height: 50);

// screen size helpers
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenWidthPercentage(BuildContext context, {double percentage = 1}) =>
    screenWidth(context) * percentage;

double screenHeightPercentage(BuildContext context, {double percentage = 1}) =>
    screenHeight(context) * percentage;
