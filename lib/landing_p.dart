// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'login_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      width: 393,
      height: 852,
      padding: const EdgeInsets.only(
        top: 85,
        left: 37,
        right: 38,
        bottom: 69,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Color(0xFFF2F2F2)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 107,
            height: 83,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/3.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 505),
          SizedBox(
            width: 318,
            height: 110,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: SizedBox(
                    width: 318,
                    height: 50,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 53,
                          top: 5,
                          child: SizedBox(
                            width: 200,
                            height: 35,
                            child: ElevatedButton(
                              onPressed: () {
                    
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF0558EE),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Text('Sign Up',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 60,
                  top: 57,
                  child: SizedBox(
                    width: 190,
                    height: 23,
                    child: Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w200,
                        height: 0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Positioned(
                  left: 115,
                  top: 80,
                  child: SizedBox(
                    width: 80,
                    height: 30,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text('Login',
                      style: TextStyle(
                        color: Color(0xFF0558EE),
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )
    );
  }
}
