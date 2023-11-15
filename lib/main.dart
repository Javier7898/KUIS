import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final String image;

  Product({
    required this.name,
    required this.description,
    required this.image,
  });
}

class MyApp extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: "Minyak Kayu Putih",
      description: "RP 15.300",
      image: "assets/images/minyak kayu putih.jpeg",
    ),
    Product(
      name: "Wipol 220ml",
      description: "Rp 22.500",
      image: "assets/images/wipol.jpeg",
    ),
    Product(
      name: "Stella",
      description: "RP 35.000",
      image: "assets/images/Stella.png",
    ),
    Product(
      name: "Kapal Api Kopi",
      description: "RP 35.500",
      image: "assets/images/Kopi.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                 
                  Navigator.pop(context);
                },
              ),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Shopppeee',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Semua Produk',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      
                    },
                    child: const Text('Promosi'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      
                    },
                    child: const Text('Nama Produk'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      
                    },
                    child: const Text('Terlaris'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(16.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return ProductCard(product: products[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            height: 100, 
            width: double.infinity, 
            child: Image.asset(
              product.image,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  product.description,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              
            },
            child: Text('+ Keranjang'),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}