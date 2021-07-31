import 'package:flutter/material.dart';
import '../utils/CustomTextStyle.dart';
import 'package:credit_card_input_form/credit_card_input_form.dart';
import 'package:flutter_app3/screens/tabs_screen.dart';
import 'package:flutter_app3/menu.dart';


class CheckOutPage extends StatefulWidget {
  @override
  _CheckOutPageState createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  final Map<String, String> customCaptions = {
    'PREV': 'Prev',
    'NEXT': 'Next',
    'DONE': 'Done',
    'CARD_NUMBER': 'Card Number',
    'CARDHOLDER_NAME': 'Cardholder Name',
    'VALID_THRU': 'Valid Thru',
    'SECURITY_CODE_CVC': 'Security Code (CVC)',
    'NAME_SURNAME': 'Name Surname',
    'MM_YY': 'MM/YY',
    'RESET': 'Reset',
  };
  final buttonStyle = BoxDecoration(
    borderRadius: BorderRadius.circular(30.0),
    gradient: LinearGradient(
        colors: [
          const Color(0xfffcdf8a),
          const Color(0xfff38381),
        ],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(1.0, 0.0),
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp),
  );
  final cardDecoration = BoxDecoration(
      boxShadow: <BoxShadow>[
        BoxShadow(color: Colors.black54, blurRadius: 15.0, offset: Offset(0, 8))
      ],
      gradient: LinearGradient(
          colors: [
            Colors.red,
            Colors.blue,
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp),
      borderRadius: BorderRadius.all(Radius.circular(15)));
  final buttonTextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18);
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            child: Stack(children: [
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
                          Color(0xffFF2400),

                          Color(0xffFFDE8879),
                          // Color.fromRGBO(170, 207, 211, 1.0),
                          //Color.fromRGBO(93, 142, 155, 1.0),
                        ],
                      ),
                    ),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: FlatButton(
                  //onPressed: () => Navigator.pop(context, false),

                  onPressed: () => Navigator.pop(context, false),

                  padding: EdgeInsets.all(1.0),
                  child: Column(
                    // Replace with a Row for horizontal icon + text
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 40.0,
                      ),
                    ],
                  ),
                ),

              ),
              Container(
                margin: EdgeInsets.fromLTRB(95.0, 40.0, 0.0, 0.0),
                child: Text(
                  'PAYMENT',
                  style: TextStyle(
                    letterSpacing: 4,
                    fontSize: 50.0,
                    fontFamily: 'font',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 150.0, 0.0, 0),
                child: CreditCardInputForm(
                  showResetButton: true,
                  onStateChange: (currentState, cardInfo) {
                    print(currentState);
                    print(cardInfo);
                  },
                  // initialAutoFocus: false,
                  // customCaptions: customCaptions,
                  // cardCVV: '222',
                  // cardName: 'Jeongtae Kim',
                  // cardNumber: '1111111111111111',
                  // frontCardDecoration: cardDecoration,
                  // backCardDecoration: cardDecoration,
                  // cardValid: '12/12',
                  // intialCardState: InputState.DONE,
                  // prevButtonStyle: buttonStyle,
                  // nextButtonStyle: buttonStyle,
                  // prevButtonTextStyle: buttonTextStyle,
                  // nextButtonTextStyle: buttonTextStyle,
                  // resetButtonTextStyle: buttonTextStyle,
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(35.0, 600.0, 2.0, 10.0),
                    child:  ElevatedButton(
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

                        showThankYouBottomSheet(context);
                      },
                      child:
                      Text(
                        'Pay',
                        style: TextStyle(

                          fontWeight: FontWeight.bold,
                          fontFamily: 'font',
                          fontSize: 23,
                          letterSpacing: 4.0,
                        ),
                      ),
                    ),


                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 600.0, 2.0, 10.0),
                    child:  ElevatedButton(
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
                                30.0, 10.0, 30.0, 10.0)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => menu()),
                        );
                      },
                      child:
                      Text(
                        'Cancel',
                        style: TextStyle(

                          fontWeight: FontWeight.bold,
                          fontFamily: 'font',
                          fontSize: 23,
                          letterSpacing: 4.0,
                        ),
                      ),
                    ),


                  ),
                ],

              ),
            ]),
          ),
        ),
      ),
    );
  }
  showThankYouBottomSheet(BuildContext context) {
    return _scaffoldKey.currentState.showBottomSheet((context) {
      return Container(
        height: 330,
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
                    image: AssetImage("assets/images/thx.jpg"),
                    width: 300,
                  ),
                ),
              ),
              flex: 5,
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
                            "\n\nThank you !  your payment has been received  \n Your order is coming..!  ",
                            style: CustomTextStyle.textFormFieldMedium.copyWith(
                                fontSize: 14, color: Colors.grey.shade800),
                          )
                        ])),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(1.0, 0.0, 2.0, 10.0),
                      child: ElevatedButton(
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
                              EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => menu()),
                          );
                        },
                        child: Text(
                          'Done !',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'font',
                            fontSize: 33,
                            letterSpacing: 4.0,
                          ),
                        ),
                      ),
                    ),

                    /*,*/
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
