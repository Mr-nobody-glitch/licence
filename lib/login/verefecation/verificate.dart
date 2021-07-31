import 'package:flutter/material.dart';
import 'package:flutter_app3/login/forget%20pasword/forget.dart';
import 'package:passcode/passcode.dart';
import 'signin_buttonforget.dart';


class vereficate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePagecd(),
    );
  }
}

class MyHomePagecd extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePagecd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,

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
            Positioned.fill(child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 35.0,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        new MaterialPageRoute(builder: (context) => forget()));
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
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(50.0, 0.0, 0.0, 0.0),
                        child: Text(
                          "Enter Your Verification Code !",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 30.0),
                          child: Text(
                            "Please enter the Verification Code  that we sent to  you  for resetting your password.",
                            style: TextStyle(
                              //  color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          )),
                      Container(
                          margin: const EdgeInsets.all(30.0),
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
                                    PasscodeTextField(
                                      onTextChanged: (passcode) {
                                        print(passcode);
                                      },
                                      totalCharacters: 4,
                                      borderColor: Colors.black,
                                      passcodeType: PasscodeType.number,
                                    ),
                                    SizedBox(
                                      height: 30.0,
                                    ),
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

                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => MyHomePagecd()),
                                          );
                                        }),


                                  ],
                                )),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            ),


          ],
        ),
      ),
    );
  }
}
