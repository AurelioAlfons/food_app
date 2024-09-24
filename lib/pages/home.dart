// Author: Aurelio Hevi Alfons
// Simple Food App

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // const - constant it means value cannot change & created only once
    return const MaterialApp(
      // Remove the debug banner on top right
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
