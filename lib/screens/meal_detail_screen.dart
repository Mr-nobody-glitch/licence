import 'package:flutter/material.dart';
import '/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = 'meal_detail';

  Widget buildSectionTitle(BuildContext ctx, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(ctx).textTheme.title,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.blueGrey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 180,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectmeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectmeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.asset(selectmeal.imageUrl, fit: BoxFit.cover),
            ),
            buildSectionTitle(context, "ingredients"),

            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Theme.of(ctx).accentColor,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                    child: Text(selectmeal.ingredients[index]),
                  ),
                ),
                itemCount: selectmeal.ingredients.length,
              ),
            ),
           /* buildSectionTitle(context, "steps"),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) =>Column(
                  children: [
                    ListTile(
                      leading:CircleAvatar(
                        child: Text("# ${index+1}"),
                      ) ,
                      title:Text(selectmeal.steps[index]) ,
                    ) ,
                    Divider(),
                  ],
                ),
                itemCount: selectmeal.steps.length,
              ),
            ),*/
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
        backgroundColor:  Color(0xFFFF2400),
        onPressed: (){Navigator.of(context).pop(context);},
        child: Icon(Icons.add_shopping_cart,
          color:Colors.white ,
        ),
      ) ,
    );
  }
}
