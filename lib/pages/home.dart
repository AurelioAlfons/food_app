// Author: Aurelio Hevi Alfons
// Home Page

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/models/category_model.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<CategoryModel> categories = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  @override
  // ignore: override_on_non_overriding_member
  void initState() {
    _getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    // const - constant it means value cannot change & created only once
    return Scaffold(
      // Extract the appBar function()
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchField(),
          const SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 150,
                color: Colors.green,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container();
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container _searchField() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: const Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0)
      ]),
      // Text Field
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(15),
            hintText: 'Search Pancake',
            hintStyle: const TextStyle(
              color: Color.fromARGB(255, 214, 220, 220),
              fontSize: 20,
            ),
            // Left Icon
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset('assets/icons/Search.svg'),
            ),
            // Right Icon
            // Here we used SizedBox to size the width cuz it's blocking the Hint
            suffixIcon: SizedBox(
              width: 80,
              child: IntrinsicHeight(
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  const VerticalDivider(
                    color: Color.fromARGB(255, 0, 0, 0),
                    indent: 10,
                    endIndent: 10,
                    thickness: 0.4,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset('assets/icons/Filter.svg'),
                  ),
                ]),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
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
    );
  }
}
