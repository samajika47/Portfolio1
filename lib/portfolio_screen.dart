import 'package:flutter/material.dart';
import 'package:portfolio1/details_section.dart';
import 'package:portfolio1/white_box.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(backgroundColor: Colors.blue,),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("assets/girl1.jpg"),
            SizedBox(
              height: 10,
            ),
            const Text(
              "Jova Chakma",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            WhiteBox(title: "Email :", value: "jova@gmail.com"),
            SizedBox(
              height: 10,
            ),
            WhiteBox(title: "Github :", value: "www.github.com/jova47"),
            SizedBox(
              height: 10,
            ),
            DetailsSection(
                title1: "Institute Name :",
                value1: "CHT Polytechnic Institute",
                title2: "Department :",
                value2: "Computer Technology",
                title3: "Shift :",
                value3: "2nd",
                title4: "blood Group :",
                value4: "A+"),
          ],
        ),
      ),
    );
  }
}
