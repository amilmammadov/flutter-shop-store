import 'package:flutter/material.dart';
import 'package:shop_store_1/pages/choose_gender_page.dart';
import 'package:shop_store_1/pages/sign_in_page.dart';
import 'package:shop_store_1/pages/sign_up_page.dart';

class EntrancePage extends StatelessWidget {
  const EntrancePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.05;
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            'assets/images/model2.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            top: 30,
            right: 15,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SignUpPage()));
              },
              child: const Row(
                children: [
                  Text(
                    'Sign up',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
            )),
        Positioned(
            right: width,
            left: width,
            bottom: MediaQuery.of(context).size.height * 0.1,
            child: Container(
              height: 150,
              color: Colors.transparent,
              child: Column(children: [
                const Text(
                  'Ideal Store For Shopping',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 2 * width,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignInPage()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: const Text(
                        'Sign In With Email',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ChooseGenderPage(),
                    ));
                  },
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width - 2 * width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Continue with Facebook',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ]),
            ))
      ],
    );
  }
}
