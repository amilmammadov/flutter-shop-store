import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.06;
    return SafeArea(
        child: Scaffold(
            body: ListView(children: [
      Container(
          color: Colors.white,
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.40,
              width: double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/model3.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Positioned(
                    bottom: 20,
                    left: 20,
                    child: Text(
                      'Log Into Your\nAccount',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ],
              ),
            ),
          ]))
    ])));
  }
}
