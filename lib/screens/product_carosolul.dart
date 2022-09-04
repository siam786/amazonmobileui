import 'package:amazon/models/product_model.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';

class ProductCarousel extends StatelessWidget {
  //const ProductCarousel({Key? key}) : super(key: key);

  final String title;
  final List<Product> products;

  const ProductCarousel(
      {super.key, required this.title, required this.products});

  _buildProductsCard(int index) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      width: 150.0,
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.black26, offset: Offset(0.0, 2.0), blurRadius: 6.0)
      ]),
      child: Column(children: [
        Container(
          color: Colors.white,
          child: Image(
            image: AssetImage(products[index].imageUrl),
            width: 100.0,
            height: 120.0,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          products[index].name,
          style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '\$${products[index].price.toStringAsFixed(2)}',
                style: const TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
              const SizedBox(
                height: 1.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.shopping_bag),
                label: const Text('buy'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 288.0,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildProductsCard(index);
            },
          ),
        )
      ],
    );
  }
}
