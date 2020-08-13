import 'package:flutter/material.dart';
import 'package:meals/widgets/main_drawer.dart';

import '../main.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filter-screen';
  final Function filterData;
  final Map<String, bool> filters;

  FilterScreen(this.filters, this.filterData);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFree = false;
  var _vegan = false;
  var _vegetarian = false;
  var _lactoseFree = false;

  initState() {
    _glutenFree = widget.filters[KGluten];
    _vegan = widget.filters[KVegan];
    _vegetarian = widget.filters[KVegetarian];
    _lactoseFree = widget.filters[KLactose];
    super.initState();
  }

  Widget buildSwitchListTile(title, subtitle, valuee, updateValue) {
    return SwitchListTile(
      title: Text(
        title,
      ),
      value: valuee,
      subtitle: Text(
        subtitle,
      ),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilter = {
                KGluten: _glutenFree,
                KLactose: _lactoseFree,
                KVegan: _vegan,
                KVegetarian: _vegetarian,
              };
              widget.filterData(selectedFilter);
            },
          )
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust Your Meal Selection.',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile(
                  'Gluten-free',
                  'Only include gluten-free meals.',
                  _glutenFree,
                  (value) {
                    setState(
                      () {
                        _glutenFree = value;
                      },
                    );
                  },
                ),
                buildSwitchListTile(
                  'Lactose-free',
                  'Only include lactose-free meals.',
                  _lactoseFree,
                  (value) {
                    setState(
                      () {
                        _lactoseFree = value;
                      },
                    );
                  },
                ),
                buildSwitchListTile(
                  'Vegetarian',
                  'Only include Vegetarian meals.',
                  _vegetarian,
                  (value) {
                    setState(
                      () {
                        _vegetarian = value;
                      },
                    );
                  },
                ),
                buildSwitchListTile(
                  'Vegan',
                  'Only include Vegan meals.',
                  _vegan,
                  (value) {
                    setState(
                      () {
                        _vegan = value;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
