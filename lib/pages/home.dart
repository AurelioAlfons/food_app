// Author: Aurelio Hevi Alfons
// Home Page

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        leading: GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color(0x000000ff),
                borderRadius: BorderRadius.circular(10)),
            child: SvgPicture.asset(
              'assets/icons/Arrow - Left 2.svg',
              // ignore: deprecated_member_use
              color: Colors.white,
              height: 30,
              width: 30,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              width: 20,
              decoration: BoxDecoration(
                  color: const Color(0x000000ff),
                  borderRadius: BorderRadius.circular(10)),
              child: SvgPicture.asset(
                'assets/icons/dots.svg',
                // ignore: deprecated_member_use
                color: Colors.white,
                height: 30,
                width: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
