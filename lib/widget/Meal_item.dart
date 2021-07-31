import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app3/modules/Meal.dart';
import '../screens/meal_detail_screen.dart';
import '../modules//Meal.dart';
import 'package:flutter_app3/rating.dart';

class MealItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int duration;
  final String id;
  final Function removeItem;

  const MealItem({
    @required this.imageUrl,
    @required this.title,
    @required this.duration,
    @required this.id,
    @required this.removeItem,
  });

  void selectMeal(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed(MealDetailScreen.routeName, arguments: id)
        .then((result) {
      if (result != null) removeItem(result);
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.asset(
                    imageUrl,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 26, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  EmotionsPage()),
                          );

                        },
                        child: const Text('⭐⭐⭐⭐'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 6,
                      ),
                      Text("$duration DZD",
                      style: TextStyle(fontSize: 20.0),),
                    ],
                  ),
                  /*Row(
                    children: [
                      Icon(Icons.account_circle_rounded),
                      SizedBox(width: 6,),
                      Text("gg"),
                    ],
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
