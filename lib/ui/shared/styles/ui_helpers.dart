import 'package:flutter/material.dart';

/// Contains useful consts to reduce boilerplate and duplicate code
class UIHelper {
  // Vertical spacing constants. Adjust to your liking.
  static const double _small = 10.0;
  static const double _medium = 20.0;
  static const double _large = 60.0;

  static const Widget verticalSpaceSmall = SizedBox(height: _small);
  static const Widget verticalSpaceMedium = SizedBox(height: _medium);
  static const Widget verticalSpaceLarge = SizedBox(height: _large);

  static const Widget horizontalSpaceSmall = SizedBox(width: _small);
  static const Widget horizontalSpaceMedium = SizedBox(width: _medium);
  static const Widget horizontalSpaceLarge = SizedBox(width: _large);

  static const verticalEdgeSmall = EdgeInsets.symmetric(vertical: _small);
  static const verticalEdgeMedium = EdgeInsets.symmetric(vertical: _medium);
  static const verticalEdgeLarge = EdgeInsets.symmetric(vertical: _large);

  static const horizontalEdgeSmall = EdgeInsets.symmetric(horizontal: _small);
  static const horizontalEdgeMedium = EdgeInsets.symmetric(horizontal: _medium);
  static const horizontalEdgeLarge = EdgeInsets.symmetric(horizontal: _large);

  static const bothEdgeSmall = EdgeInsets.all(_small);
  static const bothEdgeMedium = EdgeInsets.all(_medium);
  static const bothEdgeLarge = EdgeInsets.all(_large);
}
