import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: ProductListScreen(),
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.yellowAccent,
            backgroundColor: Colors.pinkAccent,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.yellowAccent,
          ),
        ),
      ),
      title: 'Adityas App',
    );
  }
}

class Product {
  final String product_name;
  final double price;
  int count;

  Product({required this.product_name, required this.price, this.count = 0});
}

class ProductListScreen extends StatefulWidget {
  ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<Product> products = [
    Product(product_name: 'The Goat T-Shirt', price: 100),
    Product(product_name: 'Neymar Junior T-shirt', price: 80),
    Product(product_name: 'Argentina22 Champion T-Shirt', price: 200),
    Product(product_name: 'Adidas Boot', price: 300),
    Product(product_name: 'Nike Air Jordan', price: 500),
    Product(product_name: 'Air max 1992', price: 450),
    Product(product_name: 'Badminton racket', price: 150),
    Product(product_name: 'Barcelona retro kit', price: 120),
    Product(product_name: 'Real Madrid kit', price: 200),
    Product(product_name: 'Ucl Champion T-Shirt', price: 80),
    Product(product_name: 'Replica WC trophy', price: 500),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(products[index].product_name),
                  subtitle: Text('\$${products[index].price.toString()}'),
                  trailing: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Count: ${products[index].count}'),
                        ElevatedButton(
                          onPressed: () {
                            products[index].count++;
                            if (products[index].count == 5) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Congratulations!'),
                                    content: Text(
                                        'You have bought 5 ${products[index].product_name}'),
                                    actions: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                            setState(() {});
                          },
                          child: Text('Buy now'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Colors.pinkAccent,
                foregroundColor: Colors.yellowAccent,
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CartPage(products)),
                      );
                    },
                    icon: Icon(Icons.shopping_cart)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CartPage extends StatefulWidget {
  final List<Product> cartProducts;

  CartPage(this.cartProducts);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int _totalItemCount() {
    int total = 0;
    for (var product in widget.cartProducts) {
      total += product.count;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Total Items in Cart: ${_totalItemCount()} '),
          ],
        ),
      ),
    );
  }
}
