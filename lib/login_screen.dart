import 'package:flutter/material.dart';
import 'package:portfolio1/portfolio2_screen.dart';
import 'package:portfolio1/portfolio_screen.dart';
import 'package:portfolio1/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icon.png",
              height: 380,
            ),
            SizedBox(
             height: 2,
            ),
            Text(
              "Hello",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Wellcom to Our Portfolio App.You can make your portfolio easyly.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Portfolio2Screen()),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: OutlinedButton(
                  //style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(width: 1.5,color: Colors.deepPurple),),
                  onPressed: () {
                    Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context) => SignUpScreen()),
                    );
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.deepPurple),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
