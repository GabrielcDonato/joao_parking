import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'theme.dart';

abstract class IAppTextStyles {
  TextStyle get titleSplash;
  TextStyle get subTitleSplash;
  TextStyle get label;
  TextStyle get input;
  TextStyle get hint;
  TextStyle get buttonBackgroundColor;
  TextStyle get buttonBoldTextColor;
  TextStyle get buttonTextColor;
}

class AppTextStyles implements IAppTextStyles {
  @override
  TextStyle get buttonBackgroundColor => GoogleFonts.inter(
        fontSize: 14,
        color: AppTheme.colors.primary,
        fontWeight: FontWeight.bold,
      );
  @override
  TextStyle get buttonBoldTextColor => GoogleFonts.inter(
        fontSize: 14,
        color: AppTheme.colors.textColor,
        fontWeight: FontWeight.bold,
      );
  @override
  TextStyle get buttonTextColor => GoogleFonts.inter(
        fontSize: 14,
        color: AppTheme.colors.textColor,
        fontWeight: FontWeight.normal,
      );
  @override
  TextStyle get hint => GoogleFonts.inter(
        fontSize: 14,
        color: AppTheme.colors.inputNormal,
        fontWeight: FontWeight.normal,
      );
  @override
  TextStyle get input => GoogleFonts.inter(
        fontSize: 16,
        color: AppTheme.colors.inputNormal,
        fontWeight: FontWeight.normal,
      );
  @override
  TextStyle get label => GoogleFonts.inter(
        fontSize: 16,
        color: AppTheme.colors.textColor,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get titleSplash => GoogleFonts.inter(
        fontSize: 28,
        color: AppTheme.colors.titleSplash,
        fontWeight: FontWeight.bold,
      );
  @override
  TextStyle get subTitleSplash => GoogleFonts.inter(
        fontSize: 24,
        color: AppTheme.colors.subTitleSplash,
        fontWeight: FontWeight.bold,
      );
}
