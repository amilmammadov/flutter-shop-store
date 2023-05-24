import 'package:flutter/material.dart';

class ChooseGenderPage extends StatelessWidget {
  const ChooseGenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.height * 0.05;
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            'assets/images/model1.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            top: 30,
            left: 15,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Card(
                    color: Colors.transparent,
                    child: Text(
                      'Back',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.7,
            bottom: MediaQuery.of(context).size.height * 0.08,
            left: width,
            right: width,
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width - 2 * width,
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Card(
                    elevation: 0,
                    color: Colors.transparent,
                    child: Text(
                      'Make your purchases as',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width:
                            (MediaQuery.of(context).size.width - 3 * width) / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.red),
                        child: const Center(
                          child: Card(
                            elevation: 0,
                            color: Colors.transparent,
                            child: Text(
                              'MAN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width,
                      ),
                      Container(
                        height: 50,
                        width:
                            (MediaQuery.of(context).size.width - 3 * width) / 2,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Card(
                            elevation: 0,
                            color: Colors.transparent,
                            child: Text(
                              'WOMAN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ))
      ],
    );
  }
}
