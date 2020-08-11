import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    var x = selectedMeal.categories;
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text('${selectedMeal.title}'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              buildSectionTitle('Ingredients', context),
              buildContainer(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      color: Theme.of(context).accentColor,
                      // ignore: unrelated_type_equality_checks
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 8),
                        child: selectedMeal.categories.first == 'c11'
                            ? Text(
                                selectedMeal.ingredients[index],
                                textAlign: TextAlign.right,
                              )
                            : Text(
                                selectedMeal.ingredients[index],
                              ),
                      ),
                    );
                  },
                  itemCount: selectedMeal.ingredients.length,
                ),
              ),
              buildSectionTitle('Steps', context),
              buildContainer(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        selectedMeal.categories.first == 'c11'
                            ? ListTile(
                                trailing: CircleAvatar(
                                  child: Text(
                                    '# ${index + 1}',
                                  ),
                                ),
                                title: selectedMeal.categories.first == 'c11'
                                    ? Text(
                                        selectedMeal.steps[index],
                                        textAlign: TextAlign.right,
                                      )
                                    : Text(
                                        selectedMeal.steps[index],
                                      ),
                              )
                            : ListTile(
                                leading: CircleAvatar(
                                  child: Text(
                                    '# ${index + 1}',
                                  ),
                                ),
                                title: selectedMeal.categories.first == 'c11'
                                    ? Text(
                                        selectedMeal.steps[index],
                                        textAlign: TextAlign.right,
                                      )
                                    : Text(
                                        selectedMeal.steps[index],
                                      ),
                              ),
                        Divider(),
                      ],
                    );
                  },
                  itemCount: selectedMeal.steps.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget buildContainer({Widget child}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      width: 360,
      height: 160,
      child: child,
    );
  }
}
