import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grocery List'),
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(groceryItems[index].name),
            subtitle: Text(groceryItems[index].category.name),
            leading: Container(
              width: 25,
              height: 25,
              color: groceryItems[index].category.color,
            ),
            trailing: Text('${groceryItems[index].quantity}'),
          );
        },
      ),
    );
  }
}
