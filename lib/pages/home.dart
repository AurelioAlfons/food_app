// Author: Aurelio Hevi Alfons
// Home Page

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // const - constant it means value cannot change & created only once
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '🍔Breakfast🍕',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        // Change App bar bg color
        backgroundColor: Colors.yellow,
        // Remove the shadow of the app bar
        elevation: 0.0,
        // Center the text
        centerTitle: true,
      ),
    );
  }
}
