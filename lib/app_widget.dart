import 'package:flutter/material.dart';
import 'package:joao_parking/core/router/router.dart';

import 'core/core.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      AppSize().init(constraints);

      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'João Parking',
        // theme: ThemeData(primarySwatch: Colors.green),
        initialRoute: '/splash_page',
        onGenerateRoute: RouteGenerator.generateRoute,
      );
    });
  }
}
