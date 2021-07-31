import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/rendering.dart';
import 'signin_buttonsign.dart';
import 'teddy_controllersign.dart';
import 'tracking_text_inputsign.dart';
import 'tracking_text_inputpass.dart';
import 'tracking_text_inputphone.dart';
import 'tracking_text_inputuser.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '/login/mm.dart';
import 'package:flutter_app3/screens/paymentcreateaccount.dart';
import 'package:flutter_app3/utils/CustomTextStyle.dart';

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePagee(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePagee extends StatefulWidget {
  MyHomePagee({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePagee> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
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

      key: _scaffoldKey,

      resizeToAvoidBottomInset: false, //*******************as you want
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
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  FlatButton(
                    onPressed: () {
                      showconfirmBottomSheet(context);
                    },
                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
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
                      height: 150,
                      padding: const EdgeInsets.only(
                          left: 30.0, right: 30.0, top: 0.0),
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
                            TrackingTextInputuser(
                                label: "User Name",
                                hint: "Please Enter your Name",
                                keyboardType: TextInputType.phone,
                                onCaretMoved: (Offset caret) {
                                  _teddyController.lookAt(caret);
                                }),
                            TrackingTextInput(
                                label: "Email Address",
                                hint: "Please Enter your Email",
                                keyboardType: TextInputType.phone,
                                onCaretMoved: (Offset caret) {
                                  _teddyController.lookAt(caret);
                                },
                                onTextChanged: (String value) {
                                  _teddyController.setmail(value);
                                }),
                            TrackingTextInputphone(
                                label: "Phone Number",
                                hint: "Please Enter your Number",
                                keyboardType: TextInputType.phone,
                                onCaretMoved: (Offset caret) {
                                  _teddyController.lookAt(caret);
                                },
                                onTextChanged: (String value) {
                                  _teddyController.setphone(value);
                                }),
                            TrackingTextInputtwo(
                                keyboardType: TextInputType.name,
                                label: "Enter Your Password",
                                hint: "******",
                                isObscured: true,
                                onCaretMoved: (Offset caret) {
                                  _teddyController.coverEyes(caret != null);
                                  _teddyController.lookAt(null);
                                },
                                onTextChanged: (String value) {
                                  _teddyController.setPassword(value);
                                }
                                //  enable: !_isLoading,
                                ),
                            SigninButton(
                                child: Text(
                                  "Sign_Up",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'font',
                                    fontSize: 28,
                                    letterSpacing: 4.0,
                                  ),
                                ),
                                onPressed: () {
                                  /* Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => CheckOutPage()));*/
                                  showThankYouBottomSheet(context);

                                  _teddyController.submitPassword();
                                })
                          ],
                        )),
                      )),
                ])),
          ),
        ],
      )),
    );
  }

  showThankYouBottomSheet(BuildContext context) {
    return _scaffoldKey.currentState.showBottomSheet((context) {
      return Container(
        height: 300,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade200, width: 2),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16), topLeft: Radius.circular(16))),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image(
                    image: AssetImage("images/ic_thank_you.png"),
                    width: 300,
                  ),
                ),
              ),
              flex: 3,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: <Widget>[
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                            text:
                                "\n\nThank you for  Signing_up. If you have any questions or feedback, please don’t hesitate to reach out.",
                            style: CustomTextStyle.textFormFieldMedium.copyWith(
                                fontSize: 14, color: Colors.grey.shade800),
                          )
                        ])),
                    SizedBox(
                      height: 24,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(54.0),
                              side: BorderSide(color: Colors.black)),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                            // Colors.deepOrange[300]
                            // Colors.yellow[400],
                            Color(0xFFFF2400)),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)),
                      ),

                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CheckOutPagecreate()),
                        );
                      },


                      child: Text(
                        'Order Now !',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'font',
                          fontSize: 23,
                          letterSpacing: 3.0,
                        ),
                      ),
                    ),

                    /*
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => CheckOutPagecreate()));
                      */
                  ],
                ),
              ),
              flex: 5,
            )
          ],
        ),
      );
    },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
        backgroundColor: Colors.white,
        elevation: 2);
  }

  showconfirmBottomSheet(BuildContext context) {
    return _scaffoldKey.currentState.showBottomSheet((context) {
      return Container(
        height: 300,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade200, width: 2),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16), topLeft: Radius.circular(16))),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Align(
                  //alignment: Alignment.bottomCenter,
                  child: Image(
                    image: AssetImage("images/cancel.png"),
                    width: 100,
                    //height: 120,
                  ),
                ),
              ),
              flex: 3,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: <Widget>[
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                            text:
                                "\n\nAre You Sure You Want To Cancel Creating Account.",
                            style: CustomTextStyle.textFormFieldMedium.copyWith(
                                fontSize: 22, color: Colors.grey.shade800),
                          )
                        ])),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 50.0,
                        ),
                        ElevatedButton(
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
                                EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0)),
                          ),

                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => login()),
                            );
                          },
                          child: Text(
                            'Yes',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'font',
                              fontSize: 23,
                              letterSpacing: 3.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 50.0,
                        ),
                        ElevatedButton(
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
                                EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0)),
                          ),

                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyApp()),
                            );
                          },
                          child: Text(
                            'No',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'font',
                              fontSize: 23,
                              letterSpacing: 3.0,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              flex: 5,
            )
          ],
        ),
      );
    },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
        backgroundColor: Colors.white,
        elevation: 2);
  }
}
