/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/Main_Drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routName = '/filters';
  final Function saveFilters;

  FiltersScreen(this.saveFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _lactoseFree = false;
  bool _vegan = false;
  bool _vegetarian = false;

  Widget buildSwitchListTaile(String title, String descriptino,
      bool currentValue, Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(descriptino),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("your filters"),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: widget.saveFilters,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Adjust Your Meal Selection",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTaile("gluten free",
                    "only includs gluten-free meals", _glutenFree, (newvalue) {
                  setState(
                    () {
                      _glutenFree = newvalue;
                    },
                  );
                }),
                buildSwitchListTaile(
                    "lactose free",
                    "only includs lactoseFree-free meals",
                    _lactoseFree, (newvalue) {
                  setState(
                    () {
                      _lactoseFree = newvalue;
                    },
                  );
                }),
                buildSwitchListTaile(
                    "vegan", "only includs vegan meals", _vegan, (newvalue) {
                  setState(
                    () {
                      _vegan = newvalue;
                    },
                  );
                }),
                buildSwitchListTaile(
                    "vegetarian", "only includs vegetarian meals", _vegetarian,
                    (newvalue) {
                  setState(
                    () {
                      _vegetarian = newvalue;
                    },
                  );
                })
              ],
            ),
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
*/