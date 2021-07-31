import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/rendering.dart';
import 'teddy_controllerforget.dart';
import 'tracking_text_inputforget.dart';
import 'package:flutter_app3/login/mm.dart';
import 'signin_buttonforget.dart';
import '../verefecation/verificate.dart';

class forget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePagef(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePagef extends StatefulWidget {
  MyHomePagef({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePagef> {
  TeddyController _teddyController;
  @override
  initState() {
    _teddyController = TeddyController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    EdgeInsets devicePadding = MediaQuery.of(context).padding;

    return Scaffold(
      backgroundColor: Color(0xffFF2400),
      //Color.fromRGBO(93, 142, 155, 1.0),

      body: Container(
          child: Stack(
        children: <Widget>[
          Positioned.fill(
              child: Container(
            decoration: BoxDecoration(
              // Box decoration takes a gradient
              gradient: LinearGradient(
                // Where the linear gradient begins and ends
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                // Add one stop for each color. Stops should increase from 0 to 1
                stops: [0.0, 1.0],
                colors: [
                  Color(0xffFFDE8879),
                  Color(0xffFF2400),
                  // Color.fromRGBO(170, 207, 211, 1.0),
                  //Color.fromRGBO(93, 142, 155, 1.0),
                ],
              ),
            ),
          )),
          Positioned.fill(
            child: SingleChildScrollView(
                //padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 35.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  SizedBox(
                    height: 35.0,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          new MaterialPageRoute(builder: (context) => login()));
                      //showThankYouBottomSheet(context);
                    },
                   
                    padding: EdgeInsets.fromLTRB(20.0,0.0,0.0,0.0),
                    child: Row(
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 40.0,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          "Go Back",
                          style: TextStyle(color: Colors.black, fontSize: 20.0),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(100.0, 10.0, 0.0, 0.0),
                          child: Text(
                            "Forgot your password?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.all(19.0),
                          child:                        Text(
                            "Please enter the Phone number  associated with your account and we will send you a verification Code  for resetting your password.",
                            style: TextStyle(
                              //  color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          )
                          ,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: 200,
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: FlareActor(
                        "assets/Teddy.flr",
                        shouldClip: false,
                        alignment: Alignment.bottomCenter,
                        fit: BoxFit.contain,
                        controller: _teddyController,
                      )),
                  Container(
                      margin:
                          EdgeInsets.only(left: 20.0, right: 20.0, top: 0.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Form(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            TrackingTextInputf(
                                label: "Your Phone Number",
                                hint: "What's your Phone Number?",
                                keyboardType: TextInputType.phone,
                                onCaretMoved: (Offset caret) {
                                  _teddyController.lookAt(caret);
                                },
                                onTextChanged: (String value) {
                                  _teddyController.setnbr(value);
                                }),
                            SigninButtonf(
                                child: Text(
                                  "Recover",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'font',
                                    fontSize: 28,
                                    letterSpacing: 4.0,
                                  ),
                                ),
                                onPressed: () {
                                  _teddyController.submitnbr();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyHomePagecd()),
                                  );
                                }),

                          ],
                        )),
                      )),
                ])),
          ),
        ],
      )),
    );
  }
}
