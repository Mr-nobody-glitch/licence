/*import 'package:flutter/material.dart';

class PanierScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("panier"),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'prfl/customTextStyle.dart';
import '../screens/prfl/CustomUtils.dart';
import 'payment.dart';
import 'package:flutter_app3/login/mm.dart';



class  PanierScreen extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State< PanierScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade100,
      body: Builder(
        builder: (context) {
          return ListView(
            children: <Widget>[
              createHeader(),
              createSubTitle(),
              createCartListItem(),
              footer(context)
            ],
          );
        },
      ),
    );
  }

  footer(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text(
                  "Total",
                  style: CustomTextStyle.textFormFieldMedium
                      .copyWith(color: Colors.grey, fontSize: 12),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                child: Text(
                  "949 DZD",
                  style: CustomTextStyle.textFormFieldBlack.copyWith(
                      color:Colors.black, fontSize: 14),
                ),
              ),
            ],
          ),
          Utils.getSizedBox(height: 8),
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: TextFormField(

              keyboardType: TextInputType.streetAddress,
              decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(Icons.home,
                        size: 30.0, color: Color(0xFFFF2400)),
                  ),
                  hintText: "Delivery Address",
                  hintStyle: TextStyle(color:  Color(0xFFFF2400)),
                  border: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.all(new Radius.circular(25.0))),
                  labelStyle: TextStyle(color: Colors.white)),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),

            ),

          ),
           SizedBox(
             height: 10.0,
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
                  EdgeInsets.fromLTRB(
                      50.0, 10.0, 50.0, 10.0)),
            ),
             onPressed: () {
               Navigator.of(context).push(new MaterialPageRoute(
                   builder: (context) => login()));
               //showThankYouBottomSheet(context);
             },
            child:
            Text(
              'Order',
              style: TextStyle(

                fontWeight: FontWeight.bold,
                fontFamily: 'font',
                fontSize: 23,
                letterSpacing: 4.0,
              ),
            ),
          ),


          Utils.getSizedBox(height: 8),
        ],
      ),
      margin: EdgeInsets.only(top: 16),
    );
  }

  createHeader() {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(
        "SHOPPING CART",
        style: CustomTextStyle.textFormFieldBold
            .copyWith(fontSize: 16, color: Colors.black),
      ),
      margin: EdgeInsets.only(left: 12, top: 12),
    );
  }

  createSubTitle() {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(
        "Total(3) Items",
        style: CustomTextStyle.textFormFieldBold
            .copyWith(fontSize: 12, color: Colors.grey),
      ),
      margin: EdgeInsets.only(left: 12, top: 4),
    );
  }

  /* createCartList() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createCartListItem();
      },
      itemCount: 1,
    );
  }*/

  createCartListItem() {
    return Column(
      children: <Widget>[
        /*  Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 24,
            height: 24,
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 10, top: 8),
            child: Icon(
              Icons.close,
              color: Colors.white,
              size: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              color:
              Color(0xffFF2400),),
          ),
        ),*/
        Container(
          margin: EdgeInsets.only(left: 16, right: 6, top: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                width: 80,
                height: 80,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: Colors.blue.shade200,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/burgerfire.jpg"))),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 19, top: 9),
                            child: Text(
                              "Spicy Burger",
                              maxLines: 2,
                              softWrap: true,
                              style: CustomTextStyle.textFormFieldSemiBold
                                  .copyWith(fontSize: 14),
                            ),
                          ),
                          Container(

                            width: 24,
                            height: 24,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 103, top: 0),
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                              color:
                              Color(0xffFF2400),),
                          ),
                        ],
                      ),

                      Utils.getSizedBox(height: 6),
                      Text(
                        "Green M",
                        style: CustomTextStyle.textFormFieldRegular
                            .copyWith(color: Colors.grey, fontSize: 14),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "300 DZD",
                              style: CustomTextStyle.textFormFieldBlack
                                  .copyWith(color:
                              Color(0xffFF2400),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Icon(
                                    Icons.remove,
                                    size: 24,
                                    color: Colors.grey.shade700,
                                  ),
                                  Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        bottom: 2, right: 12, left: 12),
                                    child: Text(
                                      "1",
                                      style:
                                      CustomTextStyle.textFormFieldSemiBold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.add,
                                    size: 24,
                                    color: Colors.grey.shade700,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 100,
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 16, right: 6, top: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                width: 80,
                height: 80,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: Colors.blue.shade200,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/cheeseburger.jpg"))),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 110, top: 9),
                            child: Text(
                              "Cheese Burger",
                              maxLines: 2,
                              softWrap: true,
                              style: CustomTextStyle.textFormFieldSemiBold
                                  .copyWith(fontSize: 14),
                            ),
                          ),
                          Container(

                            width: 24,
                            height: 24,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(right: 0, top: 0),
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                              color:
                              Color(0xffFF2400),),
                          ),
                        ],
                      ),

                      Utils.getSizedBox(height: 6),
                      Text(
                        "Green M",
                        style: CustomTextStyle.textFormFieldRegular
                            .copyWith(color: Colors.grey, fontSize: 14),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "25O DZD",
                              style: CustomTextStyle.textFormFieldBlack
                                  .copyWith(color:
                              Color(0xffFF2400),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Icon(
                                    Icons.remove,
                                    size: 24,
                                    color: Colors.grey.shade700,
                                  ),
                                  Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        bottom: 2, right: 12, left: 12),
                                    child: Text(
                                      "1",
                                      style:
                                      CustomTextStyle.textFormFieldSemiBold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.add,
                                    size: 24,
                                    color: Colors.grey.shade700,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 100,
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 16, right: 6, top: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                width: 80,
                height: 80,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: Colors.blue.shade200,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                        image: AssetImage("assets/images/pizza.jpg"))),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 119, top: 9),
                            child: Text(
                              "Simple Pizza",
                              maxLines: 2,
                              softWrap: true,
                              style: CustomTextStyle.textFormFieldSemiBold
                                  .copyWith(fontSize: 14),
                            ),
                          ),
                          Container(

                            width: 24,
                            height: 24,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(right: 0, top: 0),
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                              color:
                              Color(0xffFF2400),),
                          ),
                        ],
                      ),

                      Utils.getSizedBox(height: 6),
                      Text(
                        "Green M",
                        style: CustomTextStyle.textFormFieldRegular
                            .copyWith(color: Colors.grey, fontSize: 14),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "399 DZD",
                              style: CustomTextStyle.textFormFieldBlack
                                  .copyWith(color:
                              Color(0xffFF2400),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Icon(
                                    Icons.remove,
                                    size: 24,
                                    color: Colors.grey.shade700,
                                  ),
                                  Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        bottom: 2, right: 12, left: 12),
                                    child: Text(
                                      "1",
                                      style:
                                      CustomTextStyle.textFormFieldSemiBold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.add,
                                    size: 24,
                                    color: Colors.grey.shade700,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 100,
              )
            ],
          ),
        ),

      ],
    );
  }
}

