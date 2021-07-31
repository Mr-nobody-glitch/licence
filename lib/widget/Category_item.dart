import 'package:flutter/material.dart';
import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;

  //final Color color;
  final String imageurl;

  CategoryItem(this.id, this.title, this.imageurl);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryMealsScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
        'imageurl': imageurl,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imageurl),
                  colorFilter:
                      ColorFilter.mode(Colors.black26, BlendMode.darken)),
              borderRadius: BorderRadius.circular(30)),

          padding: EdgeInsets.all(15),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'RobotoCondensed',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ) //(title,style: Theme.of(context).textTheme.title,),

          /* decoration: BoxDecoration(
          gradient: LinearGradient(
           /* colors: [
              color.withOpacity(0.5),
              color,
            ],*/

            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),


          borderRadius: BorderRadius.circular(15),
        ),*/

          ),
    );
  }
}
