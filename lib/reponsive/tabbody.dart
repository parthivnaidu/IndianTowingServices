import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:developer';
// import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indiantowing/about.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vertical_tabs_flutter/vertical_tabs.dart';

class tabbody extends StatefulWidget {
  const tabbody({super.key});

  @override
  State<tabbody> createState() => _tabbodyState();
}

class _tabbodyState extends State<tabbody> {
  int selectedindex = 0;
  PageController _pageController = PageController();
  int pagescount = 8;

  bool isHower = false;
  bool isHower1 = false;
  bool isHower2 = false;
  bool isHower3 = false;
  bool isHower4 = false;
  bool isHower5 = false;

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: GradientAppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'INDIAN TOWING SERVICES',
              style: GoogleFonts.getFont('Poppins',
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      shadows: [
                        Shadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: Offset(4, 4),
                            blurRadius: 8)
                      ])),
            ),
          ),
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.blueAccent, Colors.blueGrey]),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'logo.png',
                              ),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  InkWell(
                      onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => aboutus())),
                      child: Text('About us',
                          style: TextStyle(fontSize: 20, shadows: [
                            Shadow(
                                color: Colors.black.withOpacity(0.3),
                                offset: Offset(4, 4),
                                blurRadius: 8)
                          ]))),
                  SizedBox(
                    width: 38,
                  ),
                  Text('Services',
                      style: TextStyle(fontSize: 20, shadows: [
                        Shadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: Offset(4, 4),
                            blurRadius: 8)
                      ])),
                  SizedBox(
                    width: 38,
                  ),
                  InkWell(
                    onTap: () async {
                      String email =
                          Uri.encodeComponent("parthivlatchireddy.com");
                      String subject = Uri.encodeComponent("Hello Flutter");
                      String body =
                          Uri.encodeComponent("Hi! I'm Flutter Developer");
                      print(subject); //output: Hello%20Flutter
                      Uri mail = Uri.parse(
                          "mailto:$email?subject=$subject&body=$body");
                      if (await launchUrl(mail)) {
                        //  email app opened
                      } else {
                        //email app is not opened
                      }
                    },
                    child: Text('Email',
                        style: TextStyle(fontSize: 20, shadows: [
                          Shadow(
                              color: Colors.black.withOpacity(0.3),
                              offset: Offset(4, 4),
                              blurRadius: 8)
                        ])),
                  ),
                  SizedBox(width: 70),
                ],
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage('assets/main.jpg'),
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
                Positioned(
                  bottom: -0.5,
                  // left: 275,
                  // right: 275,
                  // top: 450,
                  child: Container(
                    //   height: 300,
                    //    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AnimatedTextKit(
                            animatedTexts: [
                              RotateAnimatedText('INDIAN TOWING\nSERVICE',
                                  textAlign: TextAlign.center,
                                  textStyle: TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold))
                            ],
                            isRepeatingAnimation: true,
                            totalRepeatCount: 1,
                            pause: Duration(milliseconds: 1000),
                            stopPauseOnTap: true,
                          ),
                          InkWell(
                            child: Text('INDIAN TOWING\nSERVICES',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.getFont('Poppins',
                                    fontSize: 50,
                                    fontWeight: FontWeight.w500,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black.withOpacity(0.3),
                                          offset: Offset(4, 4),
                                          blurRadius: 8)
                                    ])),
                          ),
                          Text('Your Road To Rescue : We Got Your Back',
                              style: GoogleFonts.getFont('Poppins',
                                  fontSize: 20,
                                  shadows: [
                                    Shadow(
                                        color: Colors.black.withOpacity(0.3),
                                        offset: Offset(4, 4),
                                        blurRadius: 8)
                                  ])),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _makePhoneCall('tel:6305702158');
                              });
                            },
                            child: MouseRegion(
                              child: Container(
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: isHower
                                        ? Color.fromARGB(255, 14, 0, 91)
                                        : Colors.white,
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: isHower
                                          ? Colors.white
                                          : Color.fromARGB(255, 14, 0, 91),
                                    )),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Contact Us',
                                        style: GoogleFonts.getFont('Poppins',
                                            color: isHower
                                                ? Colors.white
                                                : Color.fromARGB(
                                                    255, 14, 0, 91),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              cursor: SystemMouseCursors.click,
                              onExit: (event) {
                                isHower = false;
                                setState(() {});
                              },
                              onHover: (event) {
                                isHower = true;
                                setState(() {});
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Car Towing Services',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                    color: Colors.black.withOpacity(0.3),
                                    offset: Offset(4, 4),
                                    blurRadius: 8)
                              ]),
                          softWrap: true,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            'Car towing services are specialized roadside assistance services that primarily focus on towing and transporting cars from one location to another. These services are designed to assist drivers when their vehicles break down, are involved in accidents, or need to be moved for various reasons.',
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        MouseRegion(
                          child: Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                color: isHower1
                                    ? Color.fromARGB(255, 14, 0, 91)
                                    : Colors.white,
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: isHower1
                                      ? Colors.white
                                      : Color.fromARGB(255, 14, 0, 91),
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('More info',
                                    style: GoogleFonts.getFont('Poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: isHower1
                                            ? Colors.white
                                            : Color.fromARGB(255, 14, 0, 91))),
                              ],
                            ),
                          ),
                          cursor: SystemMouseCursors.click,
                          onExit: (event) {
                            isHower1 = false;
                            setState(() {});
                          },
                          onHover: (event) {
                            isHower1 = true;
                            setState(() {});
                          },
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Flatbed Towing Service',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                    color: Colors.black.withOpacity(0.3),
                                    offset: Offset(4, 4),
                                    blurRadius: 8)
                              ]),
                          softWrap: true,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            'Flatbed towing is a type of vehicle towing method that involves the use of a flatbed truck to transport cars and other vehicles. Unlike traditional towing methods where the towed vehicle wheels remain on the ground, flatbed towing entails placing the entire vehicle on the back of a flatbed truck. Flatbed ',
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        MouseRegion(
                          child: Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                color: isHower2
                                    ? Color.fromARGB(255, 14, 0, 91)
                                    : Colors.white,
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: isHower2
                                      ? Colors.white
                                      : Color.fromARGB(255, 14, 0, 91),
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('More info',
                                    style: GoogleFonts.getFont('Poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: isHower2
                                            ? Colors.white
                                            : Color.fromARGB(255, 14, 0, 91))),
                              ],
                            ),
                          ),
                          cursor: SystemMouseCursors.click,
                          onExit: (event) {
                            isHower2 = false;
                            setState(() {});
                          },
                          onHover: (event) {
                            isHower2 = true;
                            setState(() {});
                          },
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Luxary Vehicle Service',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                    color: Colors.black.withOpacity(0.3),
                                    offset: Offset(4, 4),
                                    blurRadius: 8)
                              ]),
                          softWrap: true,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            'Luxury vehicle towing services are specialized towing services that cater specifically to the transportation needs of high-end or luxury vehicles. These services are designed to ensure the safe and secure transport of luxury cars, sports cars, high-performance vehicles, and other valuable automobiles. ',
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        MouseRegion(
                          child: Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                color: isHower3
                                    ? Color.fromARGB(255, 14, 0, 91)
                                    : Colors.white,
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: isHower3
                                      ? Colors.white
                                      : Color.fromARGB(255, 14, 0, 91),
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('More info',
                                    style: GoogleFonts.getFont('Poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: isHower3
                                            ? Colors.white
                                            : Color.fromARGB(255, 14, 0, 91))),
                              ],
                            ),
                          ),
                          cursor: SystemMouseCursors.click,
                          onExit: (event) {
                            isHower3 = false;
                            setState(() {});
                          },
                          onHover: (event) {
                            isHower3 = true;
                            setState(() {});
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 400,
              child: Row(
                children: [
                  SizedBox(
                    width: 150,
                    child: ListView.separated(
                      itemCount: pagescount,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 5,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedindex = index;
                              _pageController.jumpToPage(index);
                            });
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 500),
                                  height: (selectedindex == index) ? 50 : 0,
                                  width: 5,
                                  color: Colors.amber,
                                ),
                                Expanded(
                                    child: AnimatedContainer(
                                  duration: Duration(milliseconds: 500),
                                  alignment: Alignment.center,
                                  height: 50,
                                  color: (selectedindex == index)
                                      ? Colors.blue.withOpacity(0.5)
                                      : Colors.transparent,
                                  child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 0, horizontal: 5),
                                      child: LayoutBuilder(
                                          builder: (context, constraints) {
                                        if (index == 0) {
                                          return Text(
                                            "car towing service",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          );
                                        } else if (index == 1) {
                                          return Text(
                                            "bike towing service",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          );
                                        } else if (index == 2) {
                                          return Text(
                                            "heavy vehicle towing service",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          );
                                        } else if (index == 3) {
                                          return Text(
                                            "accident vehicle recovery",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          );
                                        } else if (index == 4) {
                                          return Text(
                                            'flat bed vehicle',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          );
                                        } else if (index == 5) {
                                          return Text(
                                            'battery jumo start',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          );
                                        } else if (index == 6) {
                                          return Text(
                                            'Luxary vehicle towing service',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          );
                                        } else {
                                          return Text(
                                            'fuel service',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          );
                                        }
                                      })),
                                ))
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: PageView(
                        controller: _pageController,
                        children: [
                          for (var i = 0; i < pagescount; i++)
                            AnimatedContainer(
                              duration: Duration(milliseconds: 800),
                              color: const Color.fromARGB(255, 252, 252, 252),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  LayoutBuilder(
                                      builder: (context, Constraints) {
                                    if (i == 0) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              'CAR TOWING SERVICE',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  shadows: [
                                                    Shadow(
                                                        color: Colors.black
                                                            .withOpacity(0.3),
                                                        offset: Offset(4, 4),
                                                        blurRadius: 8)
                                                  ]),
                                            ),
                                            SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    4.5,
                                                child: Text(
                                                  'Luxury vehicle towing services are specialized towing services that cater specifically to the transportation needs of high-end or luxury vehicles. These services are designed to ensure the safe and secure transport of luxury cars, sports cars, high-performance vehicles, and other valuable automobiles. ',
                                                  textAlign: TextAlign.center,
                                                ))
                                          ],
                                        ),
                                      );
                                    } else if (i == 1) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              'CAR TOWING SERVICE',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  shadows: [
                                                    Shadow(
                                                        color: Colors.black
                                                            .withOpacity(0.3),
                                                        offset: Offset(4, 4),
                                                        blurRadius: 8)
                                                  ]),
                                            ),
                                            SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    4.5,
                                                child: Text(
                                                  'Luxury vehicle towing services are specialized towing services that cater specifically to the transportation needs of high-end or luxury vehicles. These services are designed to ensure the safe and secure transport of luxury cars, sports cars, high-performance vehicles, and other valuable automobiles. ',
                                                  textAlign: TextAlign.center,
                                                ))
                                          ],
                                        ),
                                      );
                                    } else if (i == 2) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              'CAR TOWING SERVICE',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  shadows: [
                                                    Shadow(
                                                        color: Colors.black
                                                            .withOpacity(0.3),
                                                        offset: Offset(4, 4),
                                                        blurRadius: 8)
                                                  ]),
                                            ),
                                            SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    4.5,
                                                child: Text(
                                                  'Luxury vehicle towing services are specialized towing services that cater specifically to the transportation needs of high-end or luxury vehicles. These services are designed to ensure the safe and secure transport of luxury cars, sports cars, high-performance vehicles, and other valuable automobiles. ',
                                                  textAlign: TextAlign.center,
                                                ))
                                          ],
                                        ),
                                      );
                                    } else if (i == 3) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              'CAR TOWING SERVICE',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  shadows: [
                                                    Shadow(
                                                        color: Colors.black
                                                            .withOpacity(0.3),
                                                        offset: Offset(4, 4),
                                                        blurRadius: 8)
                                                  ]),
                                            ),
                                            SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    4.5,
                                                child: Text(
                                                  'Luxury vehicle towing services are specialized towing services that cater specifically to the transportation needs of high-end or luxury vehicles. These services are designed to ensure the safe and secure transport of luxury cars, sports cars, high-performance vehicles, and other valuable automobiles. ',
                                                  textAlign: TextAlign.center,
                                                ))
                                          ],
                                        ),
                                      );
                                    } else if (i == 4) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              'CAR TOWING SERVICE',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  shadows: [
                                                    Shadow(
                                                        color: Colors.black
                                                            .withOpacity(0.3),
                                                        offset: Offset(4, 4),
                                                        blurRadius: 8)
                                                  ]),
                                            ),
                                            SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    4.5,
                                                child: Text(
                                                  'Luxury vehicle towing services are specialized towing services that cater specifically to the transportation needs of high-end or luxury vehicles. These services are designed to ensure the safe and secure transport of luxury cars, sports cars, high-performance vehicles, and other valuable automobiles. ',
                                                  textAlign: TextAlign.center,
                                                ))
                                          ],
                                        ),
                                      );
                                    } else if (i == 5) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              'CAR TOWING SERVICE',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  shadows: [
                                                    Shadow(
                                                        color: Colors.black
                                                            .withOpacity(0.3),
                                                        offset: Offset(4, 4),
                                                        blurRadius: 8)
                                                  ]),
                                            ),
                                            SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    4.5,
                                                child: Text(
                                                  'Luxury vehicle towing services are specialized towing services that cater specifically to the transportation needs of high-end or luxury vehicles. These services are designed to ensure the safe and secure transport of luxury cars, sports cars, high-performance vehicles, and other valuable automobiles. ',
                                                  textAlign: TextAlign.center,
                                                ))
                                          ],
                                        ),
                                      );
                                    } else if (i == 6) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              'CAR TOWING SERVICE',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  shadows: [
                                                    Shadow(
                                                        color: Colors.black
                                                            .withOpacity(0.3),
                                                        offset: Offset(4, 4),
                                                        blurRadius: 8)
                                                  ]),
                                            ),
                                            SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    4.5,
                                                child: Text(
                                                  'Luxury vehicle towing services are specialized towing services that cater specifically to the transportation needs of high-end or luxury vehicles. These services are designed to ensure the safe and secure transport of luxury cars, sports cars, high-performance vehicles, and other valuable automobiles. ',
                                                  textAlign: TextAlign.center,
                                                ))
                                          ],
                                        ),
                                      );
                                    } else if (i == 7) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              'CAR TOWING SERVICE',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  shadows: [
                                                    Shadow(
                                                        color: Colors.black
                                                            .withOpacity(0.3),
                                                        offset: Offset(4, 4),
                                                        blurRadius: 8)
                                                  ]),
                                            ),
                                            SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    4.5,
                                                child: Text(
                                                  'Luxury vehicle towing services are specialized towing services that cater specifically to the transportation needs of high-end or luxury vehicles. These services are designed to ensure the safe and secure transport of luxury cars, sports cars, high-performance vehicles, and other valuable automobiles. ',
                                                  textAlign: TextAlign.center,
                                                ))
                                          ],
                                        ),
                                      );
                                    } else {
                                      return Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              'CAR TOWING SERVICE',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  shadows: [
                                                    Shadow(
                                                        color: Colors.black
                                                            .withOpacity(0.3),
                                                        offset: Offset(4, 4),
                                                        blurRadius: 8)
                                                  ]),
                                            ),
                                            SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    4.5,
                                                child: Text(
                                                  'Luxury vehicle towing services are specialized towing services that cater specifically to the transportation needs of high-end or luxury vehicles. These services are designed to ensure the safe and secure transport of luxury cars, sports cars, high-performance vehicles, and other valuable automobiles. ',
                                                  textAlign: TextAlign.center,style: TextStyle(fontSize: 10),
                                                ))
                                          ],
                                        ),
                                      );
                                    }
                                  }),
                                  AnimatedContainer(
                                    duration: Duration(seconds: 2),
                                    child: Image(
                                      image:
                                          AssetImage('assets/cartowing$i.jpg'),
                                      fit: BoxFit.contain,width:300,
                                    ),
                                  )
                                ],
                              ),
                            )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/about.jpg',),
                        fit: BoxFit.cover,
                        opacity: 0.2)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '24/7 SERVICES',
                      style: TextStyle(shadows: [
                        Shadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: Offset(4, 4),
                            blurRadius: 8)
                      ], fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.6,
                      child: Text(
                        'WE PROVIDE TOWING SERVICES ALL OVER THE TELANGANA AND HYDRABAD.WE ARE AVALIABLE 24/7 IN HYDERABAD AND OTHER DISTRICTS OF HYDERABAD.WE WILL TEND TO YOUR SERVICES WITHIN 30-80 OF THE SCHEDULED TIME',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      child: MouseRegion(
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                              color: isHower4
                                  ? Color.fromARGB(255, 14, 0, 91)
                                  : Colors.white,
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: isHower4
                                    ? Colors.white
                                    : Color.fromARGB(255, 14, 0, 91),
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('CONTACT',
                                  style: GoogleFonts.getFont('Poppins',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: isHower4
                                          ? Colors.white
                                          : Color.fromARGB(255, 14, 0, 91))),
                            ],
                          ),
                        ),
                        cursor: SystemMouseCursors.click,
                        onExit: (event) {
                          isHower4 = false;
                          setState(() {});
                        },
                        onHover: (event) {
                          isHower4 = true;
                          setState(() {});
                        },
                      ),
                    )
                  ],
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'CUSTOMER REVIEWS',
                    style: TextStyle(fontSize: 40, shadows: [
                      Shadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(4, 4),
                          blurRadius: 8)
                    ]),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CarouselSlider(
                      items: [
                        Card(
                          elevation: 6,
                          shadowColor: Color.fromARGB(255, 34, 37, 234),
                          child: Container(
                              width: 500,
                              height: 50,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Colors.blue,
                                    Colors.blueAccent,
                                    Colors.lightBlue
                                  ]),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Guru Prasanth',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    Text(
                                      'Manager In TCS',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    RatingBar.builder(
                                      initialRating: 5,
                                      minRating: 5,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemCount: 5,
                                      itemSize: 16,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      child: Text(
                                        '('
                                        'the services are very good and onpar with many towing companies.their timing is also quite impressive'
                                        ')',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                  ],
                                ),
                              )
                              //Text('',textAlign: TextAlign.center,),

                              ),
                        ),
                        Card(
                          elevation: 6,
                          shadowColor: Color.fromARGB(255, 34, 37, 234),
                          child: Container(
                              width: 500,
                              height: 50,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Colors.blue,
                                    Colors.blueAccent,
                                    Colors.lightBlue
                                  ]),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'viswa Teja',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Car Driver',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    RatingBar.builder(
                                      initialRating: 4,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemCount: 5,
                                      itemSize: 16,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      child: Text(
                                        '('
                                        'the services are very good and onpar with many towing companies.their timing is also quite impressive'
                                        ')',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ),
                         Card(
                          elevation: 6,
                          shadowColor: Color.fromARGB(255, 34, 37, 234),
                          child: Container(
                              width: 500,
                              height: 50,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Colors.blue,
                                    Colors.blueAccent,
                                    Colors.lightBlue
                                  ]),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'parthiv Naidu',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    Text(
                                      'Police Officer',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    RatingBar.builder(
                                      initialRating: 3.5,
                                      minRating: 4,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemCount: 5,
                                      itemSize: 16,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      child: Text(
                                        '('
                                        'the services are very good and onpar with many towing companies.their timing is also quite impressive'
                                        ')',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ),
                      ],
                      options: CarouselOptions(
                        initialPage: 0,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 5),
                        enableInfiniteScroll: true,
                        // enlargeCenterPage: true,
                        clipBehavior: Clip.antiAlias,
                        scrollPhysics: BouncingScrollPhysics(),

                        height: 270,
                      ))
                ],
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.blue,
                  Colors.blueAccent,
                  Colors.lightBlue,
                  Colors.lightBlueAccent
                ])),
                alignment: Alignment.center,
                // color: const Color.fromARGB(255, 255, 255, 255),
                width: MediaQuery.of(context).size.width,
                height: 350,
                child: Padding(
                  padding: const EdgeInsets.only(left: 100, right: 100),
                  child: Column(children: [
                    Text(
                      'CONTACT',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, shadows: [
                            Shadow(
                                color: Colors.black.withOpacity(0.3),
                                offset: Offset(4, 4),
                                blurRadius: 8)
                          ],
                          fontSize: 35,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      cursorHeight: 1,
                      cursorWidth: 1,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          labelText: 'NAME',
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                        style: TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        cursorHeight: 1,
                        cursorWidth: 1,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          labelText: 'EMAIl',
                          labelStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                        style: TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        cursorHeight: 1,
                        cursorWidth: 1,
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            labelText: 'MOBILE NUMBER',
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))),
                    SizedBox(
                      height: 20,
                    ),
                    MouseRegion(
                      child: Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                            color:
                                isHower5 ? (Colors.blueAccent) : Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: isHower5
                                  ? Colors.white
                                  : Color.fromARGB(255, 14, 0, 91),
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('SUBMIT',
                                style: GoogleFonts.getFont('Poppins',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: isHower5
                                        ? Colors.white
                                        : Color.fromARGB(255, 14, 0, 91)
                                            .withOpacity(0.7))),
                          ],
                        ),
                      ),
                      cursor: SystemMouseCursors.click,
                      onExit: (event) {
                        isHower5 = false;
                        setState(() {});
                      },
                      onHover: (event) {
                        isHower5 = true;
                        setState(() {});
                      },
                    )
                  ]),
                ))
          ],
        ),
      ),
    ));
  }
}
