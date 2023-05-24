import 'package:flutter/material.dart';
import 'package:shop_store_1/pages/sign_in_page.dart';

import '../constants.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.06;
    return SafeArea(
        child: Scaffold(
            body: ListView(children: [
      Container(
        color: Colors.white,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    'Create Your\nAccount',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(width),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'User Name',
                      style: Constants.getTextStyle(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(15),
                            hintText: 'Amil Mammadov',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Phone Number',
                      style: Constants.getTextStyle(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(15),
                            hintText: '+994 50 679 63 04',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter your Email',
                      style: Constants.getTextStyle(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(15),
                            hintText: 'amilmammadov.m@gmail.com',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: Constants.getTextStyle(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(15),
                            hintText: '********',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Confirm Password',
                      style: Constants.getTextStyle(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(15),
                            hintText: '********',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ],
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                  value: isChecked,
                  title: const Text(
                    'You agree the terms and privacy policy',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: MediaQuery.of(context).size.width - 2 * width,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                const Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: Colors.black,
                      thickness: 2,
                      height: 4,
                    )),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'OR',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      color: Colors.black,
                      thickness: 2,
                      height: 4,
                    )),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: MediaQuery.of(context).size.width - 2 * width,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.5),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2008px-Google_%22G%22_Logo.svg.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          textAlign: TextAlign.center,
                          'Continue with Google',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 15,
                ),
                Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: MediaQuery.of(context).size.width - 2 * width,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.5),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook,
                          size: 20,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'Continue with Facebook',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account? ",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignInPage()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      )
    ])));
  }
}
