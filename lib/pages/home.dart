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
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        // Change App bar bg color
        backgroundColor: const Color.fromARGB(255, 81, 61, 236),
        // Remove the shadow of the app bar
        elevation: 0.0,
        // Center the text
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 251, 207, 15),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
