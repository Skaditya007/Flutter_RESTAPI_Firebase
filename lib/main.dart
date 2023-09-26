import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product List'),
          centerTitle: true,
        ),
        body: ProductList(),
      ),
    );
  }
}

class Product {
  final String product_name;
  final double price;
  int count;

  Product({required this.product_name,required this.price, this.count =0 });
}

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
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

  void _incrementCount(int index) {
    setState(() {
      products[index].count++;
      if (products[index].count == 5) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Congratulations!'),
              content: Text('You have bought 5 ${products[index].product_name}'),
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
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(products[index].product_name),
                subtitle: Text('\$${products[index].price.toStringAsFixed(2)}'),
                trailing: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Count: ${products[index].count}'),
                      ElevatedButton(onPressed:(){
                        _incrementCount(index);
                      }, child: Text('Buy Now'))
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
              backgroundColor: Colors.blue,
              radius: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartPage(products)),
                    );
                  }, icon: Icon(Icons.shopping_cart),iconSize: 30,color: Colors.white,),
                ],
              ),
            )
          ],
        )

      ],
    );
  }
}

class CartPage extends StatelessWidget {
  final List<Product> cartProducts;

  CartPage(this.cartProducts);

  int _totalItemCount() {
    int total = 0;
    for (var product in cartProducts) {
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
            Text('Total Items in Cart: ${_totalItemCount()}'),
          ],
        ),
      ),
    );
  }
}