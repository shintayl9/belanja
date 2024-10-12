import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name ?? 'Shopping List'),
      ),
      body: Center(
        child: Column(
          children: [
            Hero(
              tag:
                  'item_${item.name}',
              child: Image.asset(
                item.image ?? 'assets/sugar.jpg',
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text(item.name ?? 'No Name', style: TextStyle(fontSize: 24)),
            Text('Price: ${item.price}'),
            Text('Stock: ${item.stock}'),
            Text('Rating: ${item.rating}'),
          ],
        ),
      ),
    );
  }
}
