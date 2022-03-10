import 'package:joao_parking/core/shared/theme/app_colors.dart';
import 'package:joao_parking/core/shared/theme/app_text_styles.dart';

class AppTheme {
  static final AppTheme instance = AppTheme();

  final _colors = AppColors();
  static AppColors get colors => instance._colors;

  final _textStyles = AppTextStyles();
  static AppTextStyles get textStyles => instance._textStyles;
}
