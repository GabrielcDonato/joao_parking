import 'package:flutter/material.dart';
import 'package:joao_parking/core/core.dart';
import 'package:joao_parking/core/shared/theme/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.splashImage,
            ),
            Text("João").title,
            Text("Parking").subTitle,
          ],
        ),
      ),
    );
  }
}
