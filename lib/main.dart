// Author: Aurelio Hevi Alfons
// Simple Food App

import 'package:flutter/material.dart';
import 'package:food_app/pages/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // const - constant it means value cannot change & created only once
    return const MaterialApp(
      title: 'Simple Food Gallery App',
      // Remove the debug banner on top right
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
