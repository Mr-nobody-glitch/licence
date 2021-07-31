import 'package:flutter/material.dart';

import'../../dummy_data.dart';
import '../widget/Meal_item.dart';
import '../modules/Meal.dart';
class CategoryMealsScreen extends StatefulWidget {

  static const routeName = 'category_meals';

  final List<Meal> availableMeals;

  CategoryMealsScreen(this.availableMeals);
  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {

  String categorytitle;
  List <Meal> displayedMeals;

  @override
  void didChangeDependencies() {
    final routearg=ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryid=routearg['id'];
    categorytitle=routearg['title'];
    displayedMeals=widget.availableMeals.where((meal) {
      return meal.categories.contains(categoryid);

    }).toList();
    super.didChangeDependencies();
  }

  


  void _removeMeal(String mealid){
    setState(() {
      displayedMeals.removeWhere((meal) => meal.id==mealid);
    });


  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(title: Text(categorytitle),),
      body: ListView.builder(
        itemBuilder: (ctx,index) {
          return MealItem(
            imageUrl: displayedMeals[index].imageUrl,
            title:displayedMeals[index].title ,
            duration:displayedMeals[index].duration ,
            id:displayedMeals[index].id ,
            removeItem: _removeMeal,


          );
        } ,
        itemCount:displayedMeals.length ,

      ),
    );
  }
}
