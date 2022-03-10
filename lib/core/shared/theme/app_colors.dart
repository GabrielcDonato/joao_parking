import 'package:flutter/material.dart';

abstract class IAppColors {
  Color get primary;
  Color get secondary;
  Color get titleSplash;
  Color get subTitleSplash;
  Color get goodColor;
  Color get badColor;
  Color get arrowColor;
  Color get buttonLogin;
  Color get dividerColor;
  Color get textDisabled;
  Color get textEnabled;
  Color get inputNormal;
  Color get iconInactive;
  Color get textColor;
  Color get border;
}

class AppColors implements IAppColors {
  @override
  Color get primary => const Color(0xFFFFFFFF);

  @override
  Color get secondary => const Color(0xFFEA3C53);

  @override
  Color get titleSplash => const Color(0xFF000000);

  @override
  Color get subTitleSplash => const Color(0xFFEA3C53);

  @override
  Color get goodColor => const Color(0xFF00FF19);

  @override
  Color get badColor => const Color(0xFFFF0800);

  @override
  Color get arrowColor => const Color(0xFFA45A52);

  @override
  Color get buttonLogin => const Color(0xFFABABAB);

  @override
  Color get dividerColor => const Color(0xFFB43757);

  @override
  Color get iconInactive => const Color(0xFF8C8C8C);

  @override
  Color get inputNormal => const Color(0xFF949B9C);

  @override
  Color get textColor => const Color(0xFF272727);

  @override
  Color get textDisabled => const Color(0xFFD9D9D9);

  @override
  Color get textEnabled => const Color(0xFFFFFFFF);

  @override
  Color get border => const Color(0xFFE9E9EC);
}
