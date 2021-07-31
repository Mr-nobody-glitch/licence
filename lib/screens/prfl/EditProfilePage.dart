import 'package:flutter/material.dart';
import 'CustomColors.dart';
import 'customTextStyle.dart';
import 'dart:io';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'tst.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      appBar: AppBar(
        backgroundColor: Color(0xffFF2400),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          "Edit Profile",
          style: CustomTextStyle.textFormFieldBlack.copyWith(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(colors: [
                          CustomColors.EDIT_PROFILE_PIC_FIRST_GRADIENT,
                          CustomColors.EDIT_PROFILE_PIC_SECOND_GRADIENT
                        ])),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 120,
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                            icon:
                              Icon(Icons.add_a_photo),
                              color: Colors.white,
                          onPressed: ()
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyPage()),
                            );
                          },
                         // onPressed: getImage,
                        /*  onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyLayout()),
                              );}*/
                            ),
                        Text(
                          "Choose Image",
                          style: CustomTextStyle.textFormFieldMedium
                              .copyWith(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(12),
                  border: border,
                  hintText: "Name",
                  focusedBorder: border.copyWith(
                      borderSide: BorderSide(color: Colors.blue)),
                ),
              ),
              margin: EdgeInsets.only(left: 12, right: 12, top: 24),
            ),
            Container(
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    border: border,
                    hintText: "Email",
                    focusedBorder: border.copyWith(
                        borderSide: BorderSide(color: Colors.blue))),
              ),
              margin: EdgeInsets.only(left: 12, right: 12, top: 12),
            ),
            Container(
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    border: border,
                    hintText: "Mobile Number",
                    focusedBorder: border.copyWith(
                        borderSide: BorderSide(color: Colors.blue))),
              ),
              margin: EdgeInsets.only(left: 12, right: 12, top: 12),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 48, right: 48),
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                 /* Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyPage()),
                  );*/
                },
                child: Text(
                  "Save",
                  style: CustomTextStyle.textFormFieldBlack
                      .copyWith(color: Colors.white, fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  var border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
      borderSide: BorderSide(width: 1, color: Colors.grey));
}








_onAlertButtonsPressed(context) {
  Alert(
    context: context,
    type: AlertType.warning,
    title: "RFLUTTER ALERT",
    desc: "Flutter is more awesome with RFlutter Alert.",
    buttons: [
      DialogButton(
        child: Text(
          "FLAT",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        onPressed: () => Navigator.pop(context),
        color: Color.fromRGBO(0, 179, 134, 1.0),
      ),
      DialogButton(
        child: Text(
          "GRADIENT",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        onPressed: () => Navigator.pop(context),
        gradient: LinearGradient(colors: [
          Color.fromRGBO(116, 116, 191, 1.0),
          Color.fromRGBO(52, 138, 199, 1.0),
        ]),
      )
    ],
  ).show();
}
