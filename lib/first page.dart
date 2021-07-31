import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'dart:ui';
import 'menu.dart';

import 'package:animated_text_kit/animated_text_kit.dart';

class firstpage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<firstpage> with TickerProviderStateMixin {
  AnimationController _controller;
  int cont = 0;
  int targetCount = 5;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        print('Animation ${cont + 1} completed. ');
        cont++;
        if (cont < 5000) {
          _controller.reset();
          _controller.forward();
        }
      }
    });
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                // Box decoration takes a gradient
                gradient: LinearGradient(
                  // Where the linear gradient begins and ends
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  // Add one stop for each color. Stops should increase from 0 to 1
                  stops: [0.0, 1.0],
                  colors: [
                    Color(0xffFF2400),

                    Color(0xffFFDE8879),
                    // Color.fromRGBO(170, 207, 211, 1.0),
                    //Color.fromRGBO(93, 142, 155, 1.0),
                  ],
                ),
              ),
            ),
           //BackgroundImage(),
            Column(
              children: [
                SizedBox(
                  height: 40.0,

                ),


                Center(

                  child:AnimatedTextKit(

                    animatedTexts: [
                      ColorizeAnimatedText(
                        'I FOOD ',
                        textStyle: const TextStyle(
                          fontSize: 69.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'fonts',
                        ),
                        speed: const Duration(milliseconds: 500),
                        colors: [
                          Colors.white,
                          //Colors.cyanAccent,

                          Color(0xFFFF2400),
                          Colors.white,
                        ],
                      ),
                    ],

                    totalRepeatCount: 600,
                    pause: const Duration(milliseconds: 80),
                    displayFullTextOnTap: true,
                    //stopPauseOnTap: true,
                  ),
                ),
                Align(

                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),


                    decoration: BoxDecoration(




                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(

                              "assets/logo.png"),
                          fit: BoxFit.contain,
                        )),
                    width: 300,
                    height: 220,
                  ),
                ),

                //padding: EdgeInsets.fromLTRB(100.0, 20.0, 50.0, 0.0),

                Center(
                  // margin: EdgeInsets.fromLTRB(80.0, 320.0,10.0,0.0),

                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText(
                        "Yummy !",
                        textStyle: const TextStyle(
                          letterSpacing: 2.0,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'fnt',
                        ),
                        speed: const Duration(milliseconds: 260),
                      ),
                    ],

                    totalRepeatCount: 600,
                    pause: const Duration(milliseconds: 900),
                    displayFullTextOnTap: true,
                    //stopPauseOnTap: true,
                  ),
                ),

                Container(
                   height: 230,
                  //width: 800,
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

                  child: Lottie.asset('assets/firstpage.json'),

                ),
                /* Center(
                 // margin: EdgeInsets.fromLTRB(60.0, 20.0,10.0,0.0),

                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 35,
                        color:  Color(0xFFFF2400),
                        shadows: [
                          Shadow(
                            blurRadius: 7.0,
                            color: Colors.white,
                            offset: Offset(1, 0),
                          ),
                        ],
                      ),
                      child: SizedBox(
                        height: 70.0,
                        child: AnimatedTextKit(
                          animatedTexts: [
                            FlickerAnimatedText(
                              // '🍟🍔',
                              'Delicious !',
                              textStyle: const TextStyle(
                                fontSize: 52.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'fntt',
                              ),
                              speed: const Duration(milliseconds: 2600),
                            ),
                          ],

                          totalRepeatCount: 600,
                          pause: const Duration(milliseconds: 900),
                          displayFullTextOnTap: true,
                          //stopPauseOnTap: true,
                        ),
                      ),
                    ),

                ),*/
                SizedBox(
                  height: 10.0,

                ),
                Container(
                  child: Column(
                    children: [
                      Column(
                        children: [


                          Center(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(54.0),
                                      side: BorderSide(color: Colors.black)),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  // Colors.deepOrange[300]
                                  // Colors.yellow[400],
                                    Color(0xFFFF2400)),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.fromLTRB(
                                        50.0, 10.0, 50.0, 10.0)),
                              ),
                              onPressed: () {
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => menu()),
                                );
                              },
                              child:
                              Text(
                                'START',
                                style: TextStyle(

                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'font',
                                  fontSize: 33,
                                  letterSpacing: 4.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

class BackgroundImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/logo.png'),
          //  fit: BoxFit.cover,
          //alignment: Alignment.center,
          colorFilter: ColorFilter.mode(Colors.white, BlendMode.darken),
        ),
      ),

    );

  }
}