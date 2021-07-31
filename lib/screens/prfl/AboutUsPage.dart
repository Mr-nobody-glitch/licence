import 'package:flutter/material.dart';
import 'customTextStyle.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "About Us",
          style: CustomTextStyle.textFormFieldBold.copyWith(fontSize: 18),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(8),
          child: Text(
            "There is nothing cutout about I FOOD .\n\n Not our pizzas. Not our kin and our sandwiches.\n Also, unquestionably not the manner in which we live. \nAround here, we do not make due with anything short of food we are glad to serve. Furthermore, we do not simply check in. Not when we can likewise turn into our best, make companions, and have some good times while we are grinding away. \nWe are the fast food restaurant that lives unpacked. Regardless of whether it is the first Stuffed Crust or just baking a cookie with your coffee in space, we drive constantly ourselves to convey hot food, fast every time – anyplace you need to appreciate it.\n\nAt I FOOD, we are not simply baking pizza but involved in other fast food like sandwiches , burgers and cookies. We make individuals happy and satisfy their hunger. I FOOD was based on the conviction that pizza night ought to be exceptional, and we convey that conviction into all that we do. With our great experience under our belts, we see how to best serve our clients through time tested administration standards: We make food we are pleased to serve and convey it fast, with a grin.\n \nTo contact  us 05152367" ,
            style: CustomTextStyle.textFormFieldMedium
                .copyWith(fontSize: 16, color: Colors.grey.shade800),
          ),
        ),
      ),
    );
  }
}
