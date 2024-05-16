// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
    width: 393,
    height: 852,
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(color: Colors.white),
    child: Stack(
        children: [
            Positioned(
                left: -3.59,
                top: 462.41,
                child: Transform(
                    transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-1.66),
                    child: Container(
                        width: 460.10,
                        height: 438.01,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/background_login.png"),
                                fit: BoxFit.cover,
                            ),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 18,
                top: 69,
                child: SizedBox(
                    width: 325,
                    height: 36,
                    child: Text(
                        'Good Morning, Omar',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 28,
                top: 546,
                child: Container(
                    width: 338,
                    height: 197,
                    decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
            ),
            Positioned(
                left: 27,
                top: 441,
                child: SizedBox(
                    width: 339,
                    height: 89,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                    width: 77.25,
                                    height: 89,
                                    child: Stack(
                                        children: [
                                            Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                    width: 77.25,
                                                    height: 89,
                                                    decoration: ShapeDecoration(
                                                        color: Color(0xFF0558EE),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                        ),
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 15,
                                                top: 8,
                                                child: SizedBox(
                                                    width: 48,
                                                    height: 66,
                                                    child: Stack(
                                                        children: [
                                                            Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: Container(
                                                                    width: 48,
                                                                    height: 52,
                                                                    decoration: BoxDecoration(
                                                                        image: DecorationImage(
                                                                            image: NetworkImage("https://via.placeholder.com/48x52"),
                                                                            fit: BoxFit.contain,
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 9,
                                                                top: 55,
                                                                child: SizedBox(
                                                                    width: 31,
                                                                    height: 11,
                                                                    child: Text(
                                                                        'Cards',
                                                                        textAlign: TextAlign.center,
                                                                        style: TextStyle(
                                                                            color: Colors.white,
                                                                            fontSize: 10,
                                                                            fontFamily: 'Inter',
                                                                            fontWeight: FontWeight.w400,
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
                            ),
                            Positioned(
                                left: 87.25,
                                top: 0,
                                child: SizedBox(
                                    width: 77.25,
                                    height: 89,
                                    child: Stack(
                                        children: [
                                            Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                    width: 77.25,
                                                    height: 89,
                                                    decoration: ShapeDecoration(
                                                        color: Color(0xFF0558EE),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                        ),
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 14.75,
                                                top: 8,
                                                child: SizedBox(
                                                    width: 48,
                                                    height: 69,
                                                    child: Stack(
                                                        children: [
                                                            Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: Container(
                                                                    width: 48,
                                                                    height: 52,
                                                                    decoration: BoxDecoration(
                                                                        image: DecorationImage(
                                                                            image: NetworkImage("https://via.placeholder.com/48x52"),
                                                                            fit: BoxFit.contain,
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 6,
                                                                top: 55,
                                                                child: SizedBox(
                                                                    width: 37,
                                                                    height: 14,
                                                                    child: Text(
                                                                        'Insights',
                                                                        textAlign: TextAlign.center,
                                                                        style: TextStyle(
                                                                            color: Colors.white,
                                                                            fontSize: 10,
                                                                            fontFamily: 'Inter',
                                                                            fontWeight: FontWeight.w400,
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
                            ),
                            Positioned(
                                left: 174.50,
                                top: 0,
                                child: SizedBox(
                                    width: 77.25,
                                    height: 89,
                                    child: Stack(
                                        children: [
                                            Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                    width: 77.25,
                                                    height: 89,
                                                    decoration: ShapeDecoration(
                                                        color: Color(0xFF0558EE),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                        ),
                                                    ),
                                                    child: Stack(
                                                        children: [
                                                            Positioned(
                                                                left: 14.50,
                                                                top: 8,
                                                                child: Container(
                                                                    width: 48,
                                                                    height: 52,
                                                                    decoration: BoxDecoration(
                                                                        image: DecorationImage(
                                                                            image: NetworkImage("https://via.placeholder.com/48x52"),
                                                                            fit: BoxFit.contain,
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 15,
                                                                top: 64,
                                                                child: SizedBox(
                                                                    width: 47,
                                                                    height: 14,
                                                                    child: Text(
                                                                        'Transfers',
                                                                        textAlign: TextAlign.center,
                                                                        style: TextStyle(
                                                                            color: Colors.white,
                                                                            fontSize: 10,
                                                                            fontFamily: 'Inter',
                                                                            fontWeight: FontWeight.w400,
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
                            ),
                            Positioned(
                                left: 261.75,
                                top: 0,
                                child: SizedBox(
                                    width: 77.25,
                                    height: 89,
                                    child: Stack(
                                        children: [
                                            Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                    width: 77.25,
                                                    height: 89,
                                                    decoration: ShapeDecoration(
                                                        color: Color(0xFF0558EE),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                        ),
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 14.25,
                                                top: 8,
                                                child: SizedBox(
                                                    width: 48,
                                                    height: 69,
                                                    child: Stack(
                                                        children: [
                                                            Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: Container(
                                                                    width: 48,
                                                                    height: 52,
                                                                    decoration: BoxDecoration(
                                                                        image: DecorationImage(
                                                                            image: NetworkImage("https://via.placeholder.com/48x52"),
                                                                            fit: BoxFit.contain,
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                            Positioned(
                                                                left: 1,
                                                                top: 55,
                                                                child: SizedBox(
                                                                    width: 47,
                                                                    height: 14,
                                                                    child: Text(
                                                                        'Bills',
                                                                        textAlign: TextAlign.center,
                                                                        style: TextStyle(
                                                                            color: Colors.white,
                                                                            fontSize: 10,
                                                                            fontFamily: 'Inter',
                                                                            fontWeight: FontWeight.w400,
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
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 18,
                top: 139,
                child: SizedBox(
                    width: 636,
                    height: 272,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 0,
                                top: 1.74,
                                child: SizedBox(
                                    width: 314.95,
                                    height: 270.26,
                                    child: Stack(
                                        children: [
                                            Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                    width: 314.95,
                                                    height: 270.26,
                                                    decoration: ShapeDecoration(
                                                        color: Color(0xFFE0E0E0),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(20),
                                                        ),
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 15,
                                                top: 26.72,
                                                child: SizedBox(
                                                    width: 197,
                                                    height: 45.86,
                                                    child: Text(
                                                        'EGCHECKING',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 25,
                                                            fontFamily: 'Inter',
                                                            fontWeight: FontWeight.w300,
                                                            height: 0,
                                                        ),
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 15,
                                                top: 58.26,
                                                child: SizedBox(
                                                    width: 257,
                                                    height: 56.93,
                                                    child: Text(
                                                        'Primary Account - Checking\nEGXXXXXXXXXXXXXXXXXXXXXXXX',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                            fontFamily: 'Inter',
                                                            fontWeight: FontWeight.w300,
                                                            height: 0,
                                                        ),
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 15,
                                                top: 223.26,
                                                child: SizedBox(
                                                    width: 200,
                                                    height: 29,
                                                    child: Text(
                                                        'EGP 10,000.00',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 25,
                                                            fontFamily: 'Inter',
                                                            fontWeight: FontWeight.w500,
                                                            height: 0,
                                                        ),
                                                    ),
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 321,
                                top: 1.58,
                                child: SizedBox(
                                    width: 314.95,
                                    height: 270.26,
                                    child: Stack(
                                        children: [
                                            Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                    width: 314.95,
                                                    height: 270.26,
                                                    decoration: ShapeDecoration(
                                                        color: Color(0xFFE0E0E0),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(20),
                                                        ),
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 15,
                                                top: 26.72,
                                                child: SizedBox(
                                                    width: 197,
                                                    height: 45.86,
                                                    child: Text(
                                                        'EGSavings',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 25,
                                                            fontFamily: 'Inter',
                                                            fontWeight: FontWeight.w300,
                                                            height: 0,
                                                        ),
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 15,
                                                top: 58.42,
                                                child: SizedBox(
                                                    width: 257,
                                                    height: 56.93,
                                                    child: Text(
                                                        'Secondary Account - Savings\nEGXXXXXXXXXXXXXXXXXXXXXXXXX',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                            fontFamily: 'Inter',
                                                            fontWeight: FontWeight.w300,
                                                            height: 0,
                                                        ),
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 15,
                                                top: 223.42,
                                                child: SizedBox(
                                                    width: 207,
                                                    height: 26,
                                                    child: Text(
                                                        'EGP 30,000.00',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 25,
                                                            fontFamily: 'Inter',
                                                            fontWeight: FontWeight.w500,
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
            ),
        ],
    ),
)
    );
  }
}