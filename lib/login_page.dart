// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, use_build_context_synchronously

import "package:flutter/material.dart";
import 'landing_p.dart';
import 'auth_service.dart';

class LoginPage extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
        body: Column(
      children: [
        Container(
          width: 393,
          height: 852,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 94,
                top: 0,
                child: Container(
                  width: 299,
                  height: 852,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/background_login.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 784,
                child: Container(
                  width: 35,
                  height: 33,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/help.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 37,
                top: 339,
                child: SizedBox(
                  width: 318,
                  height: 47,
                  child: Positioned(
                    left: 130,
                    top: 12,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF0558EE),
                          borderRadius: BorderRadius.circular(20)),
                      width: 57,
                      height: 24,
                      child: ElevatedButton(
                        onPressed: () async {
                          String result = await _auth.login(usernameController.text, passwordController.text, context);
                          if (result != "Authenticated") {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Invalid Login'),
                                  icon: Icon(Icons.error),
                                  content: Text(result),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text('OK'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF0558EE)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 312,
                top: 790,
                child: SizedBox(
                    width: 60,
                    height: 30,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => LandingPage(),
                        ));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 160, 160, 161)),
                      ),
                      child: Text(
                        'Back',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    )),
              ),
              Positioned(
                left: 30,
                top: 182,
                child: SizedBox(
                  width: 333,
                  height: 105,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 333,
                          height: 49,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 333,
                                  height: 49,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFE0E0E0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 41,
                                top: 16,
                                child: SizedBox(
                                  width: 225,
                                  height: 21.36,
                                  child: TextFormField(
                                      controller: usernameController,
                                      decoration: InputDecoration(
                                        hintText: 'Username',
                                        hintStyle: TextStyle(
                                          color: Color(0xFF949494),
                                          fontSize: 15,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                        border: InputBorder.none,
                                      )),
                                ),
                              ),
                              Positioned(
                                left: 9,
                                top: 8.79,
                                child: Container(
                                  width: 23,
                                  height: 31.41,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/user.png"),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 56,
                        child: SizedBox(
                          width: 333,
                          height: 49,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 333,
                                  height: 49,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFE0E0E0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  left: 41,
                                  top: 14,
                                  child: SizedBox(
                                    width: 225,
                                    height: 21.36,
                                    child: TextFormField(
                                        controller: passwordController,
                                        decoration: InputDecoration(
                                          hintText: 'Password',
                                          hintStyle: TextStyle(
                                            color: Color(0xFF949494),
                                            fontSize: 15,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                          border: InputBorder.none,
                                        )),
                                  )),
                              Positioned(
                                left: 305,
                                top: 13.82,
                                child: Container(
                                  width: 17,
                                  height: 22.62,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/eye.png"),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 9,
                                top: 8.79,
                                child: Container(
                                  width: 23,
                                  height: 31.41,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/lock.png"),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 230,
                top: 294,
                child: SizedBox(
                  width: 150,
                  height: 20,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Credentials?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w300,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 71,
                child: SizedBox(
                  width: 165,
                  height: 60,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 165,
                          height: 48,
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Color(0xFF0558EE),
                              fontSize: 30,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 41,
                        child: SizedBox(
                          width: 158,
                          height: 19,
                          child: Text(
                            'to access Banki',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w200,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
