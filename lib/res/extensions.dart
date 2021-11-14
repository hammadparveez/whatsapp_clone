import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ThemeStyle on BuildContext {
  TextTheme get style => Theme.of(this).textTheme;
  Color get primaryColor => Theme.of(this).colorScheme.primary;
  Color get secondaryColor => Theme.of(this).colorScheme.secondary;
}
