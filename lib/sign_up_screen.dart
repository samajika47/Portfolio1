import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icon.png",
              height: 150,
              width: 150,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Sign Up",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
         
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,),
              child: Column(
                children: [
                  GlobalTextField(label1: "Name",hint: "Enter your name",),
                
              SizedBox(
                height: 10,
              ),
              GlobalTextField(label1: "Email",hint: "Enter your email",),
              SizedBox(
                height: 10,
              ),
              GlobalTextField(label1: "Password",hint: "Enter your password",),
              SizedBox(
                height: 10,
              ),
              GlobalTextField(label1: "Confirm Password",hint: "Enter your password again ",),
              SizedBox(
                height: 10,
              ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class GlobalTextField extends StatelessWidget {
  const GlobalTextField({super.key, required this.label1, required this.hint});
  final String label1;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label:  Text(label1),
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.black,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
