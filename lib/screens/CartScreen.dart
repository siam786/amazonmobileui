import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/product_model.dart';

class CartScreen extends StatelessWidget {
  //const CartScreen({Key? key}) : super(key: key);

  __buildCartProduct(int index) {
    return ListTile(
      contentPadding: EdgeInsets.all(20.0),
      leading: Image(
        height: double.infinity,
        width: 100.0,
        image: AssetImage(cart[index].imageUrl),
        fit: BoxFit.contain,
      ),
      title: Text(
        cart[index].name,
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
      subtitle: Text('x1',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
      trailing: Text(
        '\$${cart[index].price.toStringAsFixed(2)}',
        style: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.orange),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Shopping Cart (${cart.length})',
          style: TextStyle(fontSize: 20.0, color: Colors.black),
        ),
      ),
      body: ListView.separated(
        itemCount: cart.length,
        itemBuilder: (BuildContext context, int index) {
          return __buildCartProduct(index);
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey[300],
          );
        },
      ),
      bottomSheet: Container(
        height: 80.0,
        color: Colors.orange,
        child: Center(
            child: const Text(
          'PLACE ORDER (\$336.39)',
          style: const TextStyle(
              fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
