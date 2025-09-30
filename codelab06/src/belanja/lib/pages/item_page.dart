import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(title: Text(itemArgs.name)),
      body: Center(
        child: Text('Harga: Rp ${itemArgs.price}'),
      ),
    );
  }
}
