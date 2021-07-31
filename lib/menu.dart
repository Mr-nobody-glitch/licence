import 'package:flutter/material.dart';
import 'package:flutter_app3/dummy_data.dart';
import 'package:flutter_app3/modules/Meal.dart';
import 'package:flutter_app3/screens/tabs_screen.dart';
import '/screens/category_meals_screen.dart';
import '/screens/meal_detail_screen.dart';




class menu extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<menu> {


  List<Meal>_availableMeals=DUMMY_MEALS.cast<Meal>();

  @override

  Widget build(BuildContext context) {

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter Demo',
      theme: new ThemeData(
        primarySwatch:myColor,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),

        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20, 50, 50, 1),
          ),
          body2: TextStyle(
            color: Color.fromRGBO(20, 50, 50, 1),
          ),
          title: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      //home: MyHomePage(),

      routes: {
        '/': (context) =>TabsScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(_availableMeals),
        MealDetailScreen.routeName: (context) => MealDetailScreen(),
      },
    );

  }
}

MaterialColor myColor = MaterialColor(0xFFFF2400, color);
Map<int, Color> color =
{
  50:Color.fromARGB(100, 255, 36, 0),
  100:Color.fromARGB(100, 255, 36, 0),
  200:Color.fromARGB(100,255,36, 0),
  300:Color.fromARGB(100,255,36, 0),
  400:Color.fromARGB(100,255,36, 0),
  500:Color.fromARGB(100,255,36, 0),
  600:Color.fromARGB(100,255,36, 0),
  700:Color.fromARGB(100,255,36, 0),
  800:Color.fromARGB(100,255,36, 0),
  900:Color.fromARGB(100,255,36, 0),

};


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('menu '),
      ),
      body: null,
    );
  }
}
