import 'package:best_ten_ui_expanse_app/first_screen.dart';
import 'package:best_ten_ui_expanse_app/navigation_bar_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:FirstScreen(),
    );
  }
}

