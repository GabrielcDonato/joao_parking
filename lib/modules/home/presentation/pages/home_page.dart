import 'package:flutter/material.dart';
import 'package:joao_parking/core/core.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: AppSize.widthMultiplier! * 20,
        height: AppSize.heightMultiplier! * 20,
        color: Colors.blue,
      ),
    );
  }
}
