import 'package:flutter/material.dart';

import 'theme.dart';

extension TextExt on Text {
  Text get label => Text(
        this.data!,
        style: AppTheme.textStyles.label,
      );
  Text get title => Text(
        this.data!,
        style: AppTheme.textStyles.title,
      );
  Text get subTitle => Text(
        this.data!,
        style: AppTheme.textStyles.subTitle,
      );
}
