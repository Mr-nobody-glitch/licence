import 'package:flutter/material.dart';
import '/dummy_data.dart';
import 'package:flutter_app3/widget/Category_item.dart';


class CategoriesScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //appBar: AppBar(title: Text("meal")),
      body: GridView(
        padding: EdgeInsets.all(25),
        children:DUMMY_CATEGORIES.map((catData) =>
         CategoryItem(catData.id,catData.title,catData.imageurl),

        ).toList() ,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),


      ),
    );
  }
}
