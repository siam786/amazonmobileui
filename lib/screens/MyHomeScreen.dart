import 'package:amazon/models/product_model.dart';
import 'package:amazon/screens/CartScreen.dart';
import 'package:amazon/screens/product_carosolul.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  //const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Image(
          image: AssetImage('assets/images/amazon_logo.jpg'),
          height: 30.0,
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: InkResponse(
            onTap: (() => print('menu')),
            child: const Icon(
              Icons.menu,
              size: 30.0,
              color: Colors.black,
            ),
          ),
        ),
        actions: <Widget>[
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 20.0),
                child: InkResponse(
                  onTap: (() => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>  CartScreen(),
                      ))),
                  child: const Icon(
                    Icons.shopping_basket,
                    size: 30.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Positioned(
                bottom: 8.0,
                right: 16.0,
                child: Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Center(
                      child: Text(
                    '5',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkResponse(
              onTap: (() => print('Search')),
              child: const Icon(
                Icons.search,
                size: 30.0,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              const Image(
                image: AssetImage('assets/images/samsung_gear_vr.jpg'),
              ),
              Positioned(
                left: 20,
                right: 20,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'POPULAR',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'The Future of',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      'virtual reality',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 70.0,
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(children: [
                        const Image(
                            image: AssetImage('assets/images/gear_vr.jpg'),
                            height: 50.0),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Samsung Gear VR',
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'For Gamers',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 80.0,
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  //label: const Text('add'),
                                  child: const Icon(Icons.trending_flat),
                                  backgroundColor: Colors.orange,
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 15.0),
          ProductCarousel(
            title: 'Amazon Primie Deals',
            products: products,
          ),
          ProductCarousel(
            title: 'Popular Books',
            products: products,
          ),
        ],
      ),
    );
  }
}
