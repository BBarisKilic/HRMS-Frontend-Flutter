import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms_ui/views/home/home_page.dart';

void main() {
  runApp(HRMSApp());
}

class HRMSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      routes: {
        HomePage.id: (context) => HomePage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
